(() => {
  "use strict";

  // ---------------- state ----------------
  const S = {
    me: null, projects: [], people: [], peopleById: new Map(), unread: 0,
    view: lsGet("tb.view") || "board", showDone: false, sideFilter: "",
    project: null,          // { project, sections, tasks, member_ids, comment_counts }
    drawer: null,           // { task, comments, project }
  };
  const $app = document.getElementById("app");
  let mainEl = null, sideEl = null, shellEl = null;

  function lsGet(k) { try { return localStorage.getItem(k); } catch { return null; } }
  function lsSet(k, v) { try { localStorage.setItem(k, v); } catch {} }

  // ---------------- utils ----------------
  async function api(path, opts = {}) {
    const init = { method: opts.method || "GET", credentials: "same-origin", headers: { "x-tb": "1" } };
    if (opts.body !== undefined) { init.headers["content-type"] = "application/json"; init.body = JSON.stringify(opts.body); }
    const res = await fetch("/api/" + path, init);
    let data = null;
    try { data = await res.json(); } catch {}
    if (res.status === 401 && !opts.allow401) { renderSignin(); throw new Error("Not signed in"); }
    if (!res.ok) { const e = new Error((data && data.error) || "Something went wrong"); e.status = res.status; throw e; }
    return data;
  }

  function h(tag, attrs, ...kids) {
    const el = document.createElement(tag);
    if (attrs) for (const [k, v] of Object.entries(attrs)) {
      if (v === undefined || v === null || v === false) continue;
      if (k === "class") el.className = v;
      else if (k === "html") el.innerHTML = v;
      else if (k.startsWith("on")) el.addEventListener(k.slice(2), v);
      else if (k === "value") el.value = v;
      else el.setAttribute(k, v === true ? "" : v);
    }
    for (const kid of kids.flat()) {
      if (kid === null || kid === undefined || kid === false) continue;
      el.append(kid instanceof Node ? kid : document.createTextNode(String(kid)));
    }
    return el;
  }

  let toastTimer;
  function toast(msg, err = false) {
    const t = document.getElementById("toast");
    t.textContent = msg; t.className = "show" + (err ? " err" : "");
    clearTimeout(toastTimer); toastTimer = setTimeout(() => (t.className = ""), err ? 4500 : 2200);
  }
  const fail = (e) => { if (e.message !== "Not signed in") toast(e.message, true); };

  function esc(s) { return String(s ?? "").replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;"); }
  function linkify(escaped) {
    return escaped.replace(/\bhttps?:\/\/[^\s<]+[^\s<.,;:!?)\]'"]/g, (u) => `<a href="${u}" target="_blank" rel="noopener noreferrer">${u}</a>`);
  }
  function richText(text) {
    let s = esc(text);
    s = s.replace(/@\[([^\]]{1,80})\]\((\d+)\)/g, (_, name) => `<span class="mention">@${name}</span>`);
    return linkify(s);
  }

  const COLORS = { red: "#d1544a", orange: "#e0803a", "yellow-orange": "#e6a33a", yellow: "#d9b43a", "yellow-green": "#8db04a", green: "#4f9a62", "blue-green": "#3f9a8f", aqua: "#46a9c4", blue: "#4a7fd1", indigo: "#6b6ed6", purple: "#8b63c9", magenta: "#bf5aa8", "hot-pink": "#e0569a", pink: "#e58aa8", "cool-gray": "#8d929a", none: "#a8a29a" };
  const colorOf = (c) => COLORS[c] || COLORS.none;
  const AV = ["#2f5d50", "#7a4fb0", "#b4573a", "#3d6fb5", "#9a6a12", "#a0457a", "#3f8a8a", "#5b6b2f", "#6b5a4a"];
  function initials(name) {
    const base = String(name || "?").split("@")[0];
    const parts = base.split(/[\s._-]+/).filter(Boolean);
    return ((parts[0]?.[0] || "?") + (parts.length > 1 ? parts[parts.length - 1][0] : "")).toUpperCase();
  }
  function avatar(pid, lg) {
    const p = S.peopleById.get(pid);
    const name = p ? p.name : "Unknown";
    return h("span", { class: "avatar" + (lg ? " lg" : ""), style: `background:${AV[(pid || 0) % AV.length]}`, title: name }, initials(name));
  }
  const personName = (pid) => S.peopleById.get(pid)?.name || "Someone";

  function todayStr(offset = 0) {
    const d = new Date(); d.setDate(d.getDate() + offset);
    return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`;
  }
  function dueChip(due, done) {
    if (!due) return null;
    const [y, m, d] = due.split("-").map(Number);
    const dt = new Date(y, m - 1, d);
    let text = dt.toLocaleDateString(undefined, { month: "short", day: "numeric", ...(y !== new Date().getFullYear() ? { year: "numeric" } : {}) });
    let cls = "chip";
    if (!done) {
      if (due < todayStr()) cls += " overdue";
      else if (due === todayStr()) { cls += " soon"; text = "Today"; }
      else if (due === todayStr(1)) { cls += " soon"; text = "Tomorrow"; }
    }
    return h("span", { class: cls }, text);
  }
  function timeAgo(iso) {
    const s = (Date.now() - new Date(iso).getTime()) / 1000;
    if (s < 60) return "just now";
    if (s < 3600) return `${Math.floor(s / 60)}m ago`;
    if (s < 86400) return `${Math.floor(s / 3600)}h ago`;
    if (s < 7 * 86400) return `${Math.floor(s / 86400)}d ago`;
    return new Date(iso).toLocaleDateString(undefined, { month: "short", day: "numeric" });
  }
  const tickSvg = () => { const s = document.createElementNS("http://www.w3.org/2000/svg", "svg"); s.setAttribute("viewBox", "0 0 12 12"); s.innerHTML = '<path d="M2.5 6.2l2.3 2.3 4.7-4.9" stroke="#fff" stroke-width="1.8" fill="none" stroke-linecap="round" stroke-linejoin="round"/>'; return s; };
  const logoSvg = '<svg viewBox="0 0 20 20"><path d="M5 10.5l3.2 3.2L15 7" stroke="#fff" stroke-width="2.4" fill="none" stroke-linecap="round" stroke-linejoin="round"/></svg>';

  function modal(title, bodyNodes, actions) {
    const wrap = h("div", { class: "modal", onmousedown: (e) => { if (e.target === wrap) close(); } });
    const close = () => wrap.remove();
    const card = h("div", { class: "modal-card", role: "dialog", "aria-modal": "true" }, h("h3", null, title), bodyNodes,
      h("div", { class: "modal-actions" }, actions(close)));
    wrap.append(card);
    document.body.append(wrap);
    setTimeout(() => card.querySelector("input,select,textarea")?.focus(), 30);
    return close;
  }

  // ---------------- sign in ----------------
  function renderSignin(message) {
    S.me = null;
    document.querySelectorAll(".drawer,.scrim,.modal").forEach((n) => n.remove());
    const email = h("input", { class: "input", type: "email", placeholder: "you@example.com", autocomplete: "email", required: true });
    const btn = h("button", { class: "btn primary", type: "submit" }, "Email me a sign-in link");
    const msg = h("p", { class: message ? "notice" : "hidden" }, message || "");
    const form = h("form", {
      onsubmit: async (e) => {
        e.preventDefault(); btn.disabled = true;
        try {
          await api("auth/request", { method: "POST", body: { email: email.value }, allow401: true });
          form.replaceChildren(h("p", null, "Check your email for a sign-in link. It works once and expires in 30 minutes."),
            h("p", { class: "muted" }, "Not there? Check spam, or make sure you used the address James invited."));
        } catch (err) { toast(err.message, true); btn.disabled = false; }
      },
    }, h("label", { class: "field" }, h("span", null, "Email"), email), btn);
    $app.replaceChildren(h("div", { class: "signin-wrap" }, h("div", { class: "signin" },
      h("div", { class: "logo", html: logoSvg }), h("h1", null, "Team Board"),
      h("p", null, "Sign in with the email address you were invited with. No password needed."), msg, form)));
  }

  async function handleSigninLink() {
    const token = new URLSearchParams(location.search).get("token");
    $app.replaceChildren(h("div", { class: "signin-wrap" }, h("div", { class: "signin" }, h("div", { class: "logo", html: logoSvg }), h("h1", null, "Signing you in…"))));
    try {
      await api("auth/verify", { method: "POST", body: { token }, allow401: true });
      history.replaceState(null, "", "/#/my");
      await boot();
    } catch (e) {
      history.replaceState(null, "", "/");
      renderSignin(e.message);
    }
  }

  // ---------------- shell ----------------
  async function loadMe() {
    const d = await api("me");
    S.me = d.me; S.projects = d.projects; S.people = d.people; S.unread = d.unread;
    S.peopleById = new Map(d.people.map((p) => [p.id, p]));
  }

  function renderShell() {
    sideEl = h("aside", { class: "sidebar" });
    mainEl = h("main", { class: "main" });
    shellEl = h("div", { class: "shell" }, sideEl, mainEl);
    $app.replaceChildren(shellEl);
    renderSidebar();
  }

  function renderSidebar() {
    if (!sideEl) return;
    const hash = location.hash;
    const navLink = (href, label, extra) => h("a", { class: "nav-item" + (hash.startsWith(href) ? " active" : ""), href, onclick: () => shellEl.classList.remove("nav-open") }, h("span", { class: "name" }, label), extra);
    const filter = S.sideFilter.toLowerCase();
    const active = S.projects.filter((p) => !p.archived && p.name.toLowerCase().includes(filter));
    const archived = S.projects.filter((p) => p.archived && p.name.toLowerCase().includes(filter));
    const projLink = (p) => h("a", {
      class: "nav-item" + (hash.startsWith(`#/p/${p.id}`) ? " active" : ""), href: `#/p/${p.id}`, title: p.name,
      onclick: () => shellEl.classList.remove("nav-open"),
    }, h("span", { class: "dot", style: `background:${colorOf(p.color)}` }), h("span", { class: "name" }, p.name), h("span", { class: "count" }, p.open_count || ""));
    const filterInput = h("input", { class: "input filter-input", placeholder: "Find a project", value: S.sideFilter,
      oninput: (e) => { S.sideFilter = e.target.value; renderSidebar(); const f = sideEl.querySelector(".filter-input"); f.focus(); f.setSelectionRange(f.value.length, f.value.length); } });
    sideEl.replaceChildren(
      h("div", { class: "side-head" }, h("span", { class: "logo", html: logoSvg }), "Team Board"),
      h("div", { class: "side-scroll" },
        navLink("#/my", "My tasks"),
        navLink("#/inbox", "Inbox", S.unread ? h("span", { class: "badge" }, S.unread) : null),
        S.me.role === "admin" ? navLink("#/people", "People") : null,
        h("div", { class: "side-label" }, "Projects", S.me.role === "admin" ? h("button", { title: "New project", onclick: newProject }, "+") : null),
        S.projects.length > 8 ? filterInput : null,
        active.map(projLink),
        archived.length ? [h("div", { class: "side-label" }, "Archived"), archived.map(projLink)] : null,
        !S.projects.length ? h("div", { class: "muted", style: "padding:6px 10px" }, "No projects yet.") : null,
      ),
      h("div", { class: "side-foot" }, avatar(S.me.id), h("span", { class: "who", title: S.me.email }, S.me.name),
        h("button", { class: "btn ghost sm", onclick: async () => { await api("logout", { method: "POST" }).catch(() => {}); renderSignin(); } }, "Sign out")),
    );
  }

  function topbar(title, ...right) {
    return h("div", { class: "topbar" },
      h("button", { class: "btn ghost sm menu-btn", "aria-label": "Menu", onclick: () => shellEl.classList.toggle("nav-open") }, "☰"),
      typeof title === "string" ? h("h2", null, title) : title, ...right);
  }

  // ---------------- routing ----------------
  async function route() {
    if (!S.me) return;
    const hash = location.hash || "#/my";
    renderSidebar();
    let m;
    try {
      if ((m = hash.match(/^#\/task\/(\d+)/))) {
        const d = await api(`tasks/${m[1]}`);
        location.replace(`#/p/${d.task.project_id}/t/${d.task.id}`);
        return;
      }
      if ((m = hash.match(/^#\/p\/(\d+)(?:\/t\/(\d+))?/))) {
        const pid = Number(m[1]), tid = m[2] ? Number(m[2]) : null;
        if (!S.project || S.project.project.id !== pid) await viewProject(pid);
        else renderProjectContent();
        if (tid) await openDrawer(tid); else closeDrawer(false);
        return;
      }
      closeDrawer(false);
      S.project = null;
      if (hash.startsWith("#/inbox")) return await viewInbox();
      if (hash.startsWith("#/people") && S.me.role === "admin") return await viewPeople();
      return await viewMyTasks();
    } catch (e) {
      if (e.status === 404) { toast("That page doesn't exist or you don't have access.", true); location.replace("#/my"); }
      else fail(e);
    }
  }

  // ---------------- project view ----------------
  async function viewProject(pid) {
    mainEl.replaceChildren(topbar("Loading…"), h("div", { class: "content" }));
    S.project = await api(`projects/${pid}`);
    renderProjectContent();
  }

  function projectPeople() {
    const ids = new Set(S.project.member_ids);
    return S.people.filter((p) => p.active !== false && (ids.has(p.id) || p.role === "admin"));
  }

  function renderProjectContent() {
    const { project } = S.project;
    const isAdmin = S.me.role === "admin";
    const titleEl = h("h2", { title: isAdmin ? "Click to rename" : "", style: isAdmin ? "cursor:text" : "",
      onclick: isAdmin ? renameProject : null }, project.name);
    const seg = h("div", { class: "seg" },
      h("button", { class: S.view === "board" ? "on" : "", onclick: () => { S.view = "board"; lsSet("tb.view", "board"); renderProjectContent(); } }, "Board"),
      h("button", { class: S.view === "list" ? "on" : "", onclick: () => { S.view = "list"; lsSet("tb.view", "list"); renderProjectContent(); } }, "List"));
    const done = h("label", { class: "check-label" }, h("input", { type: "checkbox", checked: S.showDone, onchange: (e) => { S.showDone = e.target.checked; renderProjectContent(); } }), "Show completed");
    const tools = [seg, done];
    if (isAdmin) {
      tools.push(h("button", { class: "btn sm", onclick: editMembers }, `Members (${S.project.member_ids.length})`));
      tools.push(h("button", { class: "btn sm ghost", onclick: () => toggleArchive(project) }, project.archived ? "Unarchive" : "Archive"));
    }
    const content = h("div", { class: "content" });
    if (project.archived) content.append(h("div", { class: "notice" }, "This project is archived. It's hidden from My tasks and reminders."));
    content.append(S.view === "board" ? renderBoard() : renderList());
    if (S.view === "board") content.style.paddingBottom = "12px";
    mainEl.replaceChildren(topbar(titleEl, ...tools), content);
  }

  const visibleTasks = () => S.project.tasks.filter((t) => S.showDone || !t.completed);
  function tasksIn(sectionId) {
    return visibleTasks().filter((t) => t.section_id === sectionId)
      .sort((a, b) => (a.completed - b.completed) || (a.position - b.position) || (a.id - b.id));
  }
  function orphanTasks() {
    const ids = new Set(S.project.sections.map((s) => s.id));
    return visibleTasks().filter((t) => t.section_id === null || !ids.has(t.section_id));
  }

  function taskMeta(t) {
    const cc = S.project?.comment_counts?.[t.id];
    return [dueChip(t.due_on, t.completed), cc ? h("span", { class: "chip", title: "Comments" }, `💬 ${cc}`) : null,
      t.assignee_id ? avatar(t.assignee_id) : null];
  }

  // ----- board -----
  let drag = null;
  function renderBoard() {
    const board = h("div", { class: "board" });
    const sections = [...S.project.sections];
    const orphans = orphanTasks();
    if (orphans.length) sections.unshift({ id: null, name: "No section", position: -1 });
    for (const sec of sections) {
      const tasks = sec.id === null ? orphans : tasksIn(sec.id);
      const body = h("div", { class: "col-body" });
      for (const t of tasks) {
        const card = h("div", { class: "card" + (t.completed ? " done" : ""), draggable: "true", "data-id": t.id,
          onclick: () => (location.hash = `#/p/${S.project.project.id}/t/${t.id}`),
          ondragstart: (e) => { drag = t.id; card.classList.add("dragging"); e.dataTransfer.effectAllowed = "move"; e.dataTransfer.setData("text/plain", String(t.id)); },
          ondragend: () => { drag = null; card.classList.remove("dragging"); document.querySelectorAll(".drop-line").forEach((n) => n.remove()); document.querySelectorAll(".col-body.drop").forEach((n) => n.classList.remove("drop")); },
        }, h("div", { class: "card-title" }, t.title), h("div", { class: "card-meta" }, taskMeta(t)));
        body.append(card);
      }
      if (sec.id !== null) {
        body.addEventListener("dragover", (e) => {
          if (drag === null) return;
          e.preventDefault();
          body.classList.add("drop");
          document.querySelectorAll(".drop-line").forEach((n) => n.remove());
          const after = cardAfter(body, e.clientY);
          const line = h("div", { class: "drop-line" });
          if (after) body.insertBefore(line, after); else body.append(line);
        });
        body.addEventListener("dragleave", (e) => { if (!body.contains(e.relatedTarget)) { body.classList.remove("drop"); body.querySelectorAll(".drop-line").forEach((n) => n.remove()); } });
        body.addEventListener("drop", (e) => {
          e.preventDefault();
          const id = drag ?? Number(e.dataTransfer.getData("text/plain"));
          const after = cardAfter(body, e.clientY);
          moveTask(id, sec.id, after ? Number(after.dataset.id) : null);
        });
      }
      const head = h("div", { class: "col-head" },
        h("span", { class: "title", onclick: sec.id !== null ? () => renameSection(sec) : null }, sec.name),
        h("span", { class: "n" }, tasks.length),
        sec.id !== null ? h("span", { class: "tools" },
          h("button", { class: "icon-btn", title: "Move left", onclick: () => shiftSection(sec, -1) }, "‹"),
          h("button", { class: "icon-btn", title: "Move right", onclick: () => shiftSection(sec, 1) }, "›"),
          S.me.role === "admin" ? h("button", { class: "icon-btn", title: "Delete section", onclick: () => deleteSection(sec) }, "✕") : null) : null);
      const col = h("div", { class: "col" }, head, body);
      if (sec.id !== null) col.append(h("div", { style: "padding:0 8px 8px" }, addTaskButton(sec.id, col)));
      board.append(col);
    }
    board.append(h("div", { class: "add-col" }, h("button", { class: "btn", onclick: addSection }, "+ Add section")));
    return board;
  }

  function cardAfter(body, y) {
    const cards = [...body.querySelectorAll(".card:not(.dragging)")];
    return cards.find((c) => { const r = c.getBoundingClientRect(); return y < r.top + r.height / 2; }) || null;
  }

  async function moveTask(id, sectionId, beforeId) {
    const t = S.project.tasks.find((x) => x.id === id);
    if (!t) return;
    const list = tasksIn(sectionId).filter((x) => x.id !== id && !x.completed);
    let idx = beforeId ? list.findIndex((x) => x.id === beforeId) : list.length;
    if (idx < 0) idx = list.length;
    const prev = list[idx - 1], next = list[idx];
    const position = prev && next ? (prev.position + next.position) / 2 : prev ? prev.position + 1 : next ? next.position - 1 : 1;
    const before = { section_id: t.section_id, position: t.position };
    Object.assign(t, { section_id: sectionId, position });
    renderProjectContent();
    try { await api(`tasks/${id}`, { method: "PATCH", body: { section_id: sectionId, position } }); }
    catch (e) { Object.assign(t, before); renderProjectContent(); fail(e); }
  }

  function addTaskButton(sectionId, container) {
    const btn = h("button", { class: "add-task", onclick: () => {
      const input = h("input", { class: "input", placeholder: "Task name, then Enter" });
      const row = h("div", { class: "inline-new" }, input);
      const submit = async () => {
        const title = input.value.trim();
        if (!title) { row.replaceWith(btn); return; }
        input.disabled = true;
        try {
          const t = await api("tasks", { method: "POST", body: { project_id: S.project.project.id, section_id: sectionId, title } });
          S.project.tasks.push(t);
          bumpCount(S.project.project.id, 1);
          renderProjectContent();
          const again = mainEl.querySelectorAll(`[data-add="${sectionId}"]`)[0];
          again?.click();
        } catch (e) { input.disabled = false; fail(e); }
      };
      input.addEventListener("keydown", (e) => { if (e.key === "Enter") submit(); if (e.key === "Escape") row.replaceWith(btn); });
      input.addEventListener("blur", () => { if (!input.value.trim()) row.replaceWith(btn); });
      btn.replaceWith(row); input.focus();
    }, "data-add": String(sectionId) }, "+ Add task");
    return btn;
  }

  function bumpCount(pid, d) {
    const p = S.projects.find((x) => x.id === pid);
    if (p) { p.open_count = Math.max(0, (p.open_count || 0) + d); renderSidebar(); }
  }

  // ----- list -----
  function renderList() {
    const wrap = h("div");
    const sections = [...S.project.sections];
    const orphans = orphanTasks();
    if (orphans.length) sections.unshift({ id: null, name: "No section" });
    for (const sec of sections) {
      const tasks = sec.id === null ? orphans : tasksIn(sec.id);
      const rows = h("div", { class: "rows" });
      for (const t of tasks) {
        rows.append(h("div", { class: "row" + (t.completed ? " done" : ""), onclick: () => (location.hash = `#/p/${S.project.project.id}/t/${t.id}`) },
          tickButton(t),
          h("div", null, h("div", { class: "t" }, t.title)),
          h("div", { class: "hide-sm" }, dueChip(t.due_on, t.completed)),
          h("div", { style: "display:flex;gap:6px;align-items:center" }, S.project.comment_counts?.[t.id] ? h("span", { class: "chip hide-sm" }, `💬 ${S.project.comment_counts[t.id]}`) : null, t.assignee_id ? avatar(t.assignee_id) : h("span", { class: "avatar", style: "background:transparent" }))));
      }
      if (sec.id !== null) rows.append(addTaskButton(sec.id, rows));
      wrap.append(h("div", { class: "list-section" },
        h("h3", null, h("span", { onclick: sec.id !== null ? () => renameSection(sec) : null, style: sec.id !== null ? "cursor:text" : "" }, sec.name), h("span", { class: "n" }, tasks.length)), rows));
    }
    wrap.append(h("button", { class: "btn", onclick: addSection }, "+ Add section"));
    return wrap;
  }

  function tickButton(t) {
    return h("button", { class: "tick" + (t.completed ? " on" : ""), title: t.completed ? "Mark incomplete" : "Mark complete",
      onclick: (e) => { e.stopPropagation(); setCompleted(t, !t.completed); } }, t.completed ? tickSvg() : null);
  }

  async function setCompleted(t, completed) {
    try {
      const updated = await api(`tasks/${t.id}`, { method: "PATCH", body: { completed } });
      Object.assign(t, updated);
      bumpCount(t.project_id, completed ? -1 : 1);
      if (S.project) renderProjectContent();
      if (S.drawer?.task.id === t.id) { S.drawer.task = updated; renderDrawer(); }
      toast(completed ? "Marked complete" : "Marked incomplete");
    } catch (e) { fail(e); }
  }

  // ----- sections & project admin -----
  function promptModal(title, label, initial, onSave, saveLabel = "Save") {
    const input = h("input", { class: "input", value: initial || "" });
    const close = modal(title, h("label", { class: "field" }, h("span", null, label), input), (c) => [
      h("button", { class: "btn ghost", onclick: c }, "Cancel"),
      h("button", { class: "btn primary", onclick: async () => { const v = input.value.trim(); if (!v) return; try { await onSave(v); c(); } catch (e) { fail(e); } } }, saveLabel)]);
    void close;
    input.addEventListener("keydown", (e) => { if (e.key === "Enter") input.closest(".modal-card").querySelector(".btn.primary").click(); });
  }

  function addSection() {
    promptModal("New section", "Section name", "", async (name) => {
      const s = await api(`projects/${S.project.project.id}/sections`, { method: "POST", body: { name } });
      S.project.sections.push(s); renderProjectContent();
    }, "Add");
  }
  function renameSection(sec) {
    promptModal("Rename section", "Section name", sec.name, async (name) => {
      await api(`sections/${sec.id}`, { method: "PATCH", body: { name } }); sec.name = name; renderProjectContent();
    });
  }
  async function shiftSection(sec, dir) {
    const list = S.project.sections;
    const i = list.indexOf(sec), j = i + dir;
    if (j < 0 || j >= list.length) return;
    const other = list[j];
    [sec.position, other.position] = [other.position, sec.position];
    if (sec.position === other.position) sec.position += dir * 0.5;
    list.sort((a, b) => a.position - b.position);
    renderProjectContent();
    try {
      await api(`sections/${sec.id}`, { method: "PATCH", body: { position: sec.position } });
      await api(`sections/${other.id}`, { method: "PATCH", body: { position: other.position } });
    } catch (e) { fail(e); }
  }
  function deleteSection(sec) {
    const n = S.project.tasks.filter((t) => t.section_id === sec.id).length;
    modal("Delete section?", h("p", null, n ? `Its ${n} task${n > 1 ? "s" : ""} will move to the first remaining section.` : "This section is empty."), (c) => [
      h("button", { class: "btn ghost", onclick: c }, "Cancel"),
      h("button", { class: "btn primary", onclick: async () => {
        try { await api(`sections/${sec.id}`, { method: "DELETE" }); c(); await viewProject(S.project.project.id); } catch (e) { fail(e); }
      } }, "Delete")]);
  }
  function renameProject() {
    const p = S.project.project;
    promptModal("Rename project", "Project name", p.name, async (name) => {
      await api(`projects/${p.id}`, { method: "PATCH", body: { name } });
      p.name = name; const sp = S.projects.find((x) => x.id === p.id); if (sp) sp.name = name;
      renderSidebar(); renderProjectContent();
    });
  }
  async function toggleArchive(p) {
    try {
      await api(`projects/${p.id}`, { method: "PATCH", body: { archived: !p.archived } });
      p.archived = !p.archived; const sp = S.projects.find((x) => x.id === p.id); if (sp) sp.archived = p.archived;
      renderSidebar(); renderProjectContent(); toast(p.archived ? "Project archived" : "Project restored");
    } catch (e) { fail(e); }
  }
  function newProject() {
    promptModal("New project", "Project name", "", async (name) => {
      const r = await api("projects", { method: "POST", body: { name } });
      await loadMe(); renderSidebar(); location.hash = `#/p/${r.id}`;
    }, "Create");
  }
  function editMembers() {
    const current = new Set(S.project.member_ids);
    const boxes = S.people.filter((p) => p.active !== false).map((p) => {
      const cb = h("input", { type: "checkbox", value: p.id, checked: current.has(p.id) || p.role === "admin", disabled: p.role === "admin" });
      return h("label", null, cb, avatar(p.id), h("span", null, p.name), p.role === "admin" ? h("span", { class: "muted" }, "(admin, always)") : null);
    });
    modal(`Who can see ${S.project.project.name}?`, [h("p", { class: "muted", style: "margin-top:0" }, "Members see this project and can be assigned or @mentioned in it."), h("div", { class: "checklist" }, boxes)], (c) => [
      h("button", { class: "btn ghost", onclick: c }, "Cancel"),
      h("button", { class: "btn primary", onclick: async () => {
        const ids = boxes.map((l) => l.querySelector("input")).filter((cb) => cb.checked).map((cb) => Number(cb.value));
        try { await api(`projects/${S.project.project.id}/members`, { method: "PUT", body: { person_ids: ids } }); S.project.member_ids = ids; c(); renderProjectContent(); toast("Members updated"); } catch (e) { fail(e); }
      } }, "Save")]);
  }

  // ---------------- task drawer ----------------
  async function openDrawer(tid) {
    if (S.drawer?.task.id === tid && document.querySelector(".drawer")) return;
    S.drawer = await api(`tasks/${tid}`);
    renderDrawer(true);
    // Mark matching inbox items read.
    api("inbox").then((d) => {
      const ids = d.notifications.filter((n) => n.task_id === tid && !n.read_at).map((n) => n.id);
      if (ids.length) api("inbox/read", { method: "POST", body: { ids } }).then(() => { S.unread = Math.max(0, S.unread - ids.length); renderSidebar(); });
    }).catch(() => {});
  }

  function closeDrawer(updateHash = true) {
    document.querySelectorAll(".drawer,.scrim").forEach((n) => n.remove());
    document.removeEventListener("keydown", escClose);
    S.drawer = null;
    if (updateHash && S.project) history.pushState(null, "", `#/p/${S.project.project.id}`);
  }
  function escClose(e) { if (e.key === "Escape" && !document.querySelector(".modal") && !document.querySelector(".mention-pop")) closeDrawer(); }

  async function saveTask(patch) {
    const t = S.drawer.task;
    try {
      const updated = await api(`tasks/${t.id}`, { method: "PATCH", body: patch });
      const wasDone = t.completed;
      S.drawer.task = updated;
      if (S.project && S.project.project.id === updated.project_id) {
        const i = S.project.tasks.findIndex((x) => x.id === updated.id);
        if (i >= 0) S.project.tasks[i] = updated; else S.project.tasks.push(updated);
        renderProjectContent();
      }
      if (patch.completed !== undefined && patch.completed !== wasDone) bumpCount(updated.project_id, patch.completed ? -1 : 1);
      return updated;
    } catch (e) { fail(e); throw e; }
  }

  function renderDrawer(first = false) {
    const { task: t, comments, project } = S.drawer;
    const people = S.project && S.project.project.id === t.project_id ? projectPeople() : S.people;
    document.querySelectorAll(".drawer,.scrim").forEach((n) => n.remove());

    const title = h("textarea", { class: "title-input", rows: 1, value: t.title });
    const fit = () => { title.style.height = "auto"; title.style.height = title.scrollHeight + "px"; };
    title.addEventListener("input", fit);
    title.addEventListener("keydown", (e) => { if (e.key === "Enter") { e.preventDefault(); title.blur(); } });
    title.addEventListener("blur", () => { const v = title.value.trim(); if (v && v !== t.title) saveTask({ title: v }); else title.value = t.title; });

    const sectionSel = h("select", { class: "input", onchange: (e) => saveTask({ section_id: e.target.value ? Number(e.target.value) : null }) },
      (S.project?.sections || []).map((s) => h("option", { value: s.id, selected: s.id === t.section_id }, s.name)));
    const assigneeSel = h("select", { class: "input", onchange: (e) => saveTask({ assignee_id: e.target.value ? Number(e.target.value) : null }).then(() => toast(e.target.value ? "Assigned — they'll get an email" : "Unassigned")).catch(() => {}) },
      h("option", { value: "" }, "Unassigned"), people.map((p) => h("option", { value: p.id, selected: p.id === t.assignee_id }, p.name)));
    const dueInput = h("input", { class: "input", type: "date", value: t.due_on || "", onchange: (e) => saveTask({ due_on: e.target.value || null }) });

    // notes: view mode with links, click to edit
    const notesBox = h("div");
    const showNotes = () => {
      const view = h("div", { class: "notes-view" + (t.notes ? "" : " empty"), html: t.notes ? linkify(esc(S.drawer.task.notes)) : "Add a description…" });
      view.addEventListener("click", (e) => { if (e.target.tagName !== "A") editNotes(); });
      notesBox.replaceChildren(view);
    };
    const editNotes = () => {
      const ta = h("textarea", { class: "input", rows: 8, value: S.drawer.task.notes || "" });
      ta.addEventListener("blur", async () => {
        if (ta.value !== (S.drawer.task.notes || "")) { try { await saveTask({ notes: ta.value }); } catch {} }
        showNotes();
      });
      notesBox.replaceChildren(ta); ta.focus();
    };
    showNotes();

    const commentList = h("div", null, comments.length ? comments.map((c) => h("div", { class: "comment" }, avatar(c.author_id, true), h("div", null,
      h("div", { class: "who" }, personName(c.author_id), h("span", { class: "when" }, timeAgo(c.created_at)),
        (c.author_id === S.me.id || S.me.role === "admin") ? h("button", { class: "icon-btn", title: "Delete comment", onclick: () => deleteComment(c) }, "✕") : null),
      h("div", { class: "text", html: richText(c.body) })))) : h("p", { class: "muted" }, "No comments yet. Type @ to mention someone — they'll get an email."));

    const doneBtn = h("button", { class: "btn sm" + (t.completed ? "" : " primary"), onclick: () => setCompleted(t, !t.completed) }, t.completed ? "Reopen" : "✓ Mark complete");
    const canDelete = S.me.role === "admin" || t.created_by === S.me.id;

    const drawer = h("div", { class: "drawer", role: "dialog", "aria-label": "Task details" },
      h("div", { class: "drawer-head" }, doneBtn, h("span", { class: "crumb" }, project?.name || ""),
        canDelete ? h("button", { class: "btn ghost sm danger", onclick: () => deleteTask(t) }, "Delete") : null,
        h("button", { class: "btn ghost sm", "aria-label": "Close", onclick: () => closeDrawer() }, "✕")),
      h("div", { class: "drawer-body" },
        title,
        h("div", { class: "props" },
          h("span", { class: "k" }, "Assignee"), assigneeSel,
          h("span", { class: "k" }, "Due date"), dueInput,
          S.project?.sections?.length ? [h("span", { class: "k" }, "Section"), sectionSel] : null,
          h("span", { class: "k" }, "Created"), h("span", null, `${new Date(t.created_at).toLocaleDateString()}${t.created_by ? " by " + personName(t.created_by) : ""}`),
          t.asana_url ? [h("span", { class: "k" }, "From Asana"), h("a", { href: t.asana_url, target: "_blank", rel: "noopener noreferrer" }, "Original task & history")] : null),
        h("div", { class: "section-title" }, "Description"), notesBox,
        h("div", { class: "section-title" }, `Comments${comments.length ? ` (${comments.length})` : ""}`), commentList),
      composer(t, people));
    const scrim = h("div", { class: "scrim", onclick: () => closeDrawer() });
    document.body.append(scrim, drawer);
    requestAnimationFrame(fit);
    if (first) document.addEventListener("keydown", escClose);
  }

  function composer(t, people) {
    const ta = h("textarea", { class: "input", placeholder: "Write a comment… type @ to mention someone" });
    const picked = new Map(); // name -> id
    const post = h("button", { class: "btn primary sm" }, "Comment");
    let pop = null, matches = [], sel = 0;
    const wrap = h("div", { class: "composer" }, ta, h("div", { class: "bar" }, h("span", { class: "muted", style: "font-size:12px" }, "Mentioned people get an email."), post));

    const closePop = () => { pop?.remove(); pop = null; };
    const query = () => {
      const upto = ta.value.slice(0, ta.selectionStart);
      const m = upto.match(/(?:^|\s)@([\w.\- ]{0,30})$/);
      return m ? { q: m[1], start: ta.selectionStart - m[1].length - 1 } : null;
    };
    const showPop = () => {
      const qq = query();
      if (!qq) return closePop();
      const needle = qq.q.toLowerCase();
      matches = people.filter((p) => p.id !== S.me.id && p.name.toLowerCase().includes(needle)).slice(0, 8);
      if (!matches.length) return closePop();
      sel = Math.min(sel, matches.length - 1);
      closePop();
      pop = h("div", { class: "mention-pop" }, matches.map((p, i) => h("button", { class: i === sel ? "on" : "", onmousedown: (e) => { e.preventDefault(); choose(p); } }, avatar(p.id), p.name)));
      wrap.append(pop);
    };
    const choose = (p) => {
      const qq = query(); if (!qq) return;
      const before = ta.value.slice(0, qq.start), after = ta.value.slice(ta.selectionStart);
      const ins = `@${p.name} `;
      ta.value = before + ins + after;
      const pos = before.length + ins.length;
      ta.setSelectionRange(pos, pos);
      picked.set(p.name, p.id);
      closePop(); ta.focus();
    };
    ta.addEventListener("input", () => { sel = 0; showPop(); });
    ta.addEventListener("keydown", (e) => {
      if (pop) {
        if (e.key === "ArrowDown") { e.preventDefault(); sel = (sel + 1) % matches.length; showPop(); return; }
        if (e.key === "ArrowUp") { e.preventDefault(); sel = (sel - 1 + matches.length) % matches.length; showPop(); return; }
        if (e.key === "Enter" || e.key === "Tab") { e.preventDefault(); choose(matches[sel]); return; }
        if (e.key === "Escape") { e.preventDefault(); closePop(); return; }
      }
      if (e.key === "Enter" && (e.metaKey || e.ctrlKey)) { e.preventDefault(); post.click(); }
    });
    ta.addEventListener("blur", () => setTimeout(closePop, 150));
    post.addEventListener("click", async () => {
      let body = ta.value.trim();
      if (!body) return;
      const names = [...picked.keys()].sort((a, b) => b.length - a.length);
      for (const name of names) {
        const id = picked.get(name);
        body = body.split(`@${name}`).join(`@[${name}](${id})`);
      }
      post.disabled = true;
      try {
        const c = await api(`tasks/${t.id}/comments`, { method: "POST", body: { body } });
        S.drawer.comments.push(c);
        if (S.project?.comment_counts) S.project.comment_counts[t.id] = (S.project.comment_counts[t.id] || 0) + 1;
        renderDrawer();
        if (S.project) renderProjectContent();
        if (picked.size) toast("Comment posted — mentioned people will get an email");
        document.querySelector(".drawer-body")?.scrollTo({ top: 1e9 });
      } catch (e) { post.disabled = false; fail(e); }
    });
    return wrap;
  }

  function deleteComment(c) {
    modal("Delete this comment?", h("p", null, "This can't be undone."), (close) => [
      h("button", { class: "btn ghost", onclick: close }, "Cancel"),
      h("button", { class: "btn primary", onclick: async () => {
        try {
          await api(`comments/${c.id}`, { method: "DELETE" }); close();
          S.drawer.comments = S.drawer.comments.filter((x) => x.id !== c.id);
          if (S.project?.comment_counts?.[S.drawer.task.id]) S.project.comment_counts[S.drawer.task.id]--;
          renderDrawer(); if (S.project) renderProjectContent();
        } catch (e) { fail(e); }
      } }, "Delete")]);
  }

  function deleteTask(t) {
    modal("Delete this task?", h("p", null, `"${t.title}" and its comments will be permanently deleted. To keep a record, mark it complete instead.`), (close) => [
      h("button", { class: "btn ghost", onclick: close }, "Cancel"),
      h("button", { class: "btn primary", onclick: async () => {
        try {
          await api(`tasks/${t.id}`, { method: "DELETE" }); close();
          if (S.project) { S.project.tasks = S.project.tasks.filter((x) => x.id !== t.id); }
          if (!t.completed) bumpCount(t.project_id, -1);
          closeDrawer(); if (S.project) renderProjectContent(); toast("Task deleted");
        } catch (e) { fail(e); }
      } }, "Delete")]);
  }

  // ---------------- my tasks ----------------
  async function viewMyTasks() {
    mainEl.replaceChildren(topbar("My tasks"), h("div", { class: "content" }, h("p", { class: "muted" }, "Loading…")));
    const { tasks } = await api("my-tasks");
    const today = todayStr(), week = todayStr(7);
    const groups = [
      ["Overdue", tasks.filter((t) => t.due_on && t.due_on < today), "red"],
      ["Today", tasks.filter((t) => t.due_on === today)],
      ["Next 7 days", tasks.filter((t) => t.due_on && t.due_on > today && t.due_on <= week)],
      ["Later", tasks.filter((t) => t.due_on && t.due_on > week)],
      ["No due date", tasks.filter((t) => !t.due_on)],
    ];
    const content = h("div", { class: "content" });
    if (!tasks.length) content.append(h("div", { class: "empty-state" }, "Nothing assigned to you right now."));
    for (const [label, list, cls] of groups) {
      if (!list.length) continue;
      content.append(h("div", { class: "group-h" + (cls ? " " + cls : "") }, `${label} · ${list.length}`),
        h("div", { class: "rows" }, list.map((t) => h("div", { class: "row", onclick: () => (location.hash = `#/p/${t.project_id}/t/${t.id}`) },
          h("button", { class: "tick", title: "Mark complete", onclick: async (e) => {
            e.stopPropagation();
            try { await api(`tasks/${t.id}`, { method: "PATCH", body: { completed: true } }); bumpCount(t.project_id, -1); toast("Marked complete"); viewMyTasks(); } catch (err) { fail(err); }
          } }),
          h("div", null, h("div", { class: "t" }, t.title), h("div", { class: "sub" }, `${t.project_name}${t.section_name ? " · " + t.section_name : ""}`)),
          h("div", null, dueChip(t.due_on, false)), h("span")))));
    }
    mainEl.replaceChildren(topbar("My tasks", h("span", { class: "muted" }, `${tasks.length} open`)), content);
  }

  // ---------------- inbox ----------------
  async function viewInbox() {
    mainEl.replaceChildren(topbar("Inbox"), h("div", { class: "content" }, h("p", { class: "muted" }, "Loading…")));
    const { notifications } = await api("inbox");
    const content = h("div", { class: "content" });
    if (!notifications.length) content.append(h("div", { class: "empty-state" }, "When someone assigns you a task or @mentions you, it shows up here."));
    for (const n of notifications) {
      const what = n.type === "assign" ? `${personName(n.actor_id)} assigned you a task` : `${personName(n.actor_id)} mentioned you`;
      content.append(h("div", { class: "inbox-item" + (n.read_at ? "" : " unread"), onclick: () => (location.hash = `#/p/${n.project_id}/t/${n.task_id}`) },
        avatar(n.actor_id, true),
        h("div", null, h("div", { class: "what" }, `${what} · ${n.project_name} · ${timeAgo(n.created_at)}`),
          h("div", { class: "tt" }, n.task_title),
          n.comment_body ? h("div", { class: "quote", html: richText(n.comment_body) }) : null)));
    }
    const markAll = S.unread ? h("button", { class: "btn sm", onclick: async () => {
      try { await api("inbox/read", { method: "POST", body: {} }); S.unread = 0; renderSidebar(); viewInbox(); } catch (e) { fail(e); }
    } }, "Mark all read") : null;
    mainEl.replaceChildren(topbar("Inbox", markAll), content);
  }

  // ---------------- people (admin) ----------------
  async function viewPeople() {
    mainEl.replaceChildren(topbar("People"), h("div", { class: "content" }, h("p", { class: "muted" }, "Loading…")));
    const { people } = await api("people");
    const statusOf = (p) => !p.active ? h("span", { class: "status none" }, "Deactivated")
      : p.last_login_at ? h("span", { class: "status ok" }, "Signed in")
      : p.invited_at ? h("span", { class: "status pending" }, `Invited ${timeAgo(p.invited_at)}`)
      : h("span", { class: "status none" }, "Not invited yet");
    const table = h("table", { class: "table" },
      h("thead", null, h("tr", null, h("th", null, "Name"), h("th", { class: "hide-sm" }, "Email"), h("th", null, "Status"), h("th", { class: "hide-sm" }, "Projects"), h("th"))),
      h("tbody", null, people.map((p) => h("tr", null,
        h("td", null, h("div", { style: "display:flex;gap:8px;align-items:center" }, avatar(p.id), h("span", null, p.name, p.role === "admin" ? h("span", { class: "muted" }, " · admin") : null))),
        h("td", { class: "hide-sm muted" }, p.email),
        h("td", null, statusOf(p)),
        h("td", { class: "hide-sm" }, p.role === "admin" ? "All" : String(p.project_ids.length)),
        h("td", null, h("div", { class: "actions" },
          p.active && p.id !== S.me.id ? h("button", { class: "btn sm" + (p.invited_at || p.last_login_at ? "" : " primary"), onclick: (e) => invite(p, e.target) }, p.invited_at || p.last_login_at ? "Re-send invite" : "Send invite") : null,
          h("button", { class: "btn sm ghost", onclick: () => editPerson(p) }, "Edit")))))));
    const content = h("div", { class: "content" },
      h("p", { class: "muted", style: "margin-top:0" }, "People only see the projects you give them. Nobody gets any email from the board until you send their invite."),
      table);
    mainEl.replaceChildren(topbar("People", h("button", { class: "btn primary sm", onclick: () => editPerson(null) }, "+ Add person")), content);
  }

  async function invite(p, btn) {
    btn.disabled = true;
    try { await api(`people/${p.id}/invite`, { method: "POST" }); toast(`Invite sent to ${p.email}`); viewPeople(); }
    catch (e) { btn.disabled = false; fail(e); }
  }

  function editPerson(p) {
    const isNew = !p;
    const name = h("input", { class: "input", value: p?.name || "" });
    const email = h("input", { class: "input", type: "email", value: p?.email || "" });
    const role = h("select", { class: "input" }, h("option", { value: "member", selected: p?.role !== "admin" }, "Member — sees only their projects"), h("option", { value: "admin", selected: p?.role === "admin" }, "Admin — sees everything, manages people"));
    const active = h("input", { type: "checkbox", checked: p ? p.active : true });
    const mine = new Set(p?.project_ids || []);
    const boxes = S.projects.filter((x) => !x.archived || mine.has(x.id)).map((x) => h("label", null, h("input", { type: "checkbox", value: x.id, checked: mine.has(x.id) }), h("span", { class: "dot", style: `background:${colorOf(x.color)}` }), x.name));
    modal(isNew ? "Add a person" : `Edit ${p.name}`, [
      h("label", { class: "field" }, h("span", null, "Name"), name),
      h("label", { class: "field" }, h("span", null, "Email (used to sign in)"), email),
      h("label", { class: "field" }, h("span", null, "Role"), role),
      h("div", { class: "field" }, h("span", { style: "display:block;font-size:12px;font-weight:600;color:var(--muted);margin-bottom:4px;text-transform:uppercase;letter-spacing:.03em" }, "Projects they can see"), h("div", { class: "checklist" }, boxes)),
      !isNew && p.id !== S.me.id ? h("label", { class: "check-label", style: "margin-top:10px" }, active, "Active (uncheck to remove their access)") : null,
    ], (close) => [
      h("button", { class: "btn ghost", onclick: close }, "Cancel"),
      h("button", { class: "btn primary", onclick: async () => {
        const project_ids = boxes.map((l) => l.querySelector("input")).filter((c) => c.checked).map((c) => Number(c.value));
        const body = { name: name.value, email: email.value, role: role.value, project_ids };
        try {
          if (isNew) await api("people", { method: "POST", body });
          else await api(`people/${p.id}`, { method: "PATCH", body: { ...body, ...(p.id !== S.me.id ? { active: active.checked } : {}) } });
          close(); await loadMe(); renderSidebar(); viewPeople(); toast(isNew ? "Added — send their invite when you're ready" : "Saved");
        } catch (e) { fail(e); }
      } }, isNew ? "Add" : "Save")]);
  }

  // ---------------- boot ----------------
  async function boot() {
    if (location.pathname === "/signin") return handleSigninLink();
    try {
      const res = await fetch("/api/me", { credentials: "same-origin", headers: { "x-tb": "1" } });
      if (res.status === 401) return renderSignin();
      if (!res.ok) throw new Error("Couldn't load the board");
    } catch (e) {
      $app.replaceChildren(h("div", { class: "boot" }, e.message));
      return;
    }
    await loadMe();
    renderShell();
    await route();
  }

  window.addEventListener("hashchange", route);
  window.addEventListener("popstate", () => { if (S.me) route(); });
  boot();
})();
