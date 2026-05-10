.data
.balign 8
str0:
	.ascii "@import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500;600&display=swap');"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str3:
	.byte 10
	.ascii ":root {"
	.byte 10
	.ascii "  --orange: oklch(0.62 0.19 38);"
	.byte 10
	.ascii "  --orange-dim: oklch(0.55 0.16 38);"
	.byte 10
	.ascii "  --orange-glow: oklch(0.62 0.19 38 / 0.18);"
	.byte 10
	.ascii "  --bg: #181818;"
	.byte 10
	.ascii "  --bg2: #202020;"
	.byte 10
	.ascii "  --bg3: #282828;"
	.byte 10
	.ascii "  --border: rgba(255,255,255,0.07);"
	.byte 10
	.ascii "  --text: #f5f0ec;"
	.byte 10
	.ascii "  --text-dim: rgba(245,240,236,0.52);"
	.byte 10
	.ascii "  --sans: 'Space Grotesk', sans-serif;"
	.byte 10
	.ascii "  --mono: 'JetBrains Mono', monospace;"
	.byte 10
	.ascii "}"
	.byte 10
	.ascii "body.theme-light {"
	.byte 10
	.ascii "  --orange: oklch(0.58 0.18 38);"
	.byte 10
	.ascii "  --orange-dim: oklch(0.52 0.16 38);"
	.byte 10
	.ascii "  --orange-glow: oklch(0.58 0.18 38 / 0.14);"
	.byte 10
	.ascii "  --bg: #f7f4f0;"
	.byte 10
	.ascii "  --bg2: #eee9e3;"
	.byte 10
	.ascii "  --bg3: #ffffff;"
	.byte 10
	.ascii "  --border: rgba(24,24,24,0.11);"
	.byte 10
	.ascii "  --text: #24201d;"
	.byte 10
	.ascii "  --text-dim: rgba(36,32,29,0.58);"
	.byte 10
	.ascii "}"
	.byte 10
	.ascii "*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }"
	.byte 10
	.ascii "body { background: var(--bg); color: var(--text); font-family: var(--sans); font-size: 16px; line-height: 1.6; overflow-x: hidden; }"
	.byte 10
	.byte 10
	.ascii "/* Theme toggle "
	.byte 226
	.byte 128
	.byte 148
	.ascii " fixed top-right corner */"
	.byte 10
	.ascii ".theme-corner { position: fixed; top: 16px; right: 24px; z-index: 300; }"
	.byte 10
	.ascii ".theme-toggle { width: 38px; height: 38px; border: 1px solid var(--border); border-radius: 8px; background: var(--bg3); color: var(--text-dim); cursor: pointer; display: inline-flex; align-items: center; justify-content: center; transition: border-color 0.15s, color 0.15s, background 0.15s; }"
	.byte 10
	.ascii ".theme-toggle:hover { border-color: rgba(255,255,255,0.16); color: var(--text); }"
	.byte 10
	.ascii "body.theme-light .theme-toggle:hover { border-color: rgba(24,24,24,0.18); }"
	.byte 10
	.ascii ".theme-toggle-icon { width: 16px; height: 16px; border-radius: 50%; background: currentColor; box-shadow: inset -5px -4px 0 var(--bg3); display: block; }"
	.byte 10
	.ascii "body.theme-light .theme-toggle-icon { box-shadow: 0 -7px 0 -5px currentColor, 0 7px 0 -5px currentColor, 7px 0 0 -5px currentColor, -7px 0 0 -5px currentColor, 5px 5px 0 -5px currentColor, -5px -5px 0 -5px currentColor, 5px -5px 0 -5px currentColor, -5px 5px 0 -5px currentColor; }"
	.byte 10
	.byte 10
	.ascii "/* Sidebar burger "
	.byte 226
	.byte 128
	.byte 148
	.ascii " shown on mobile */"
	.byte 10
	.ascii ".sidebar-burger { display: none; position: fixed; top: 16px; left: 16px; z-index: 300; flex-direction: column; gap: 5px; cursor: pointer; padding: 7px; background: transparent; border: none; border-radius: 8px; }"
	.byte 10
	.ascii ".sidebar-burger span { display: block; width: 18px; height: 2px; background: var(--text); border-radius: 2px; transition: transform 0.22s, opacity 0.22s; }"
	.byte 10
	.ascii ".sidebar-burger.open span:nth-child(1) { transform: translateY(7px) rotate(45deg); }"
	.byte 10
	.ascii ".sidebar-burger.open span:nth-child(2) { opacity: 0; }"
	.byte 10
	.ascii ".sidebar-burger.open span:nth-child(3) { transform: translateY(-7px) rotate(-45deg); }"
	.byte 10
	.byte 10
	.ascii "/* Syntax tokens */"
	.byte 10
	.ascii ".kw { color: var(--orange); font-weight: 600; }"
	.byte 10
	.ascii ".fn { color: oklch(0.74 0.12 200); }"
	.byte 10
	.ascii ".str { color: oklch(0.74 0.1 145); }"
	.byte 10
	.ascii ".ty { color: oklch(0.72 0.1 260); }"
	.byte 10
	.ascii ".cm { color: rgba(245,240,236,0.28); font-style: italic; }"
	.byte 10
	.ascii "body.theme-light .cm { color: rgba(36,32,29,0.42); }"
	.byte 10
	.ascii ".pu { color: var(--text-dim); }"
	.byte 10
	.ascii ".num { color: oklch(0.72 0.1 300); }"
	.byte 10
	.byte 10
	.ascii "/* Code block decoration dots */"
	.byte 10
	.ascii ".dot { width: 10px; height: 10px; border-radius: 50%; }"
	.byte 10
	.ascii ".dot-r { background: #ff5f57; }"
	.byte 10
	.ascii ".dot-y { background: #febc2e; }"
	.byte 10
	.ascii ".dot-g { background: #28c840; }"
	.byte 10
	.byte 10
	.ascii "/* Shared breadcrumb */"
	.byte 10
	.ascii ".breadcrumb { display: flex; align-items: center; gap: 8px; color: var(--text-dim); font-family: var(--mono); font-size: 0.8rem; margin-bottom: 32px; }"
	.byte 10
	.ascii ".breadcrumb a { color: var(--text-dim); text-decoration: none; transition: color 0.15s; }"
	.byte 10
	.ascii ".breadcrumb a:hover { color: var(--orange); }"
	.byte 10
	.ascii ".breadcrumb span { opacity: 0.4; }"
	.byte 10
	.byte 10
	.ascii "/* Shared code block */"
	.byte 10
	.ascii ".code-block { background: var(--bg3); border: 1px solid var(--border); border-radius: 10px; overflow: hidden; margin: 16px 0; }"
	.byte 10
	.ascii ".code-bar { display: flex; align-items: center; gap: 7px; padding: 11px 16px; border-bottom: 1px solid var(--border); background: rgba(0,0,0,0.22); }"
	.byte 10
	.ascii ".code-label { color: var(--text-dim); font-family: var(--mono); font-size: 0.7rem; margin-left: 8px; }"
	.byte 10
	.ascii ".code-block pre { padding: 0; margin: 0; font-family: var(--mono); font-size: 0.875rem; line-height: 1.82; overflow-x: auto; }"
	.byte 10
	.byte 10
	.ascii "/* ---- INDEX PAGE (page-package) ---- */"
	.byte 10
	.byte 10
	.ascii "body.page-package .pkg-layout { display: flex; min-height: 100vh; max-width: 1080px; margin: 0 auto; width: 100%; }"
	.byte 10
	.byte 10
	.ascii "body.page-package .pkg-sidebar { position: fixed; top: 0; left: max(0px, calc(50vw - 540px)); bottom: 0; width: 260px; overflow-y: auto; border-right: 1px solid var(--border); background: var(--bg); padding: 32px 0 48px; scrollbar-width: thin; scrollbar-color: var(--border) transparent; }"
	.byte 10
	.ascii "body.page-package .sidebar-pkg-name { padding: 0 24px; margin-bottom: 4px; font-family: var(--mono); font-size: 1rem; font-weight: 700; color: var(--orange); }"
	.byte 10
	.ascii "body.page-package .sidebar-pkg-ver { padding: 0 24px; margin-bottom: 24px; font-family: var(--mono); font-size: 0.72rem; color: var(--text-dim); }"
	.byte 10
	.ascii "body.page-package .sidebar-section-label { font-family: var(--mono); font-size: 0.68rem; letter-spacing: 0.12em; text-transform: uppercase; color: var(--orange); padding: 0 24px; margin: 24px 0 8px; }"
	.byte 10
	.ascii "body.page-package .sidebar-nav { list-style: none; }"
	.byte 10
	.ascii "body.page-package .sidebar-nav a { display: block; padding: 7px 24px; font-size: 0.875rem; color: var(--text-dim); text-decoration: none; border-left: 2px solid transparent; transition: color 0.15s, border-color 0.15s, background 0.15s; }"
	.byte 10
	.ascii "body.page-package .sidebar-nav a:hover { color: var(--text); background: rgba(255,255,255,0.03); }"
	.byte 10
	.ascii "body.page-package .sidebar-nav a.active { color: var(--text); border-left-color: var(--orange); background: rgba(255,255,255,0.03); }"
	.byte 10
	.byte 10
	.ascii "body.page-package .pkg-spacer { width: 260px; flex-shrink: 0; }"
	.byte 10
	.ascii "body.page-package .pkg-main { flex: 1; min-width: 0; padding: 56px 72px 96px; max-width: 860px; }"
	.byte 10
	.byte 10
	.ascii "body.page-package .pkg-header { display: flex; align-items: flex-start; justify-content: space-between; gap: 24px; margin-bottom: 40px; flex-wrap: wrap; }"
	.byte 10
	.ascii "body.page-package .pkg-header-left { display: flex; flex-direction: column; gap: 12px; }"
	.byte 10
	.ascii "body.page-package .pkg-title { font-family: var(--mono); font-size: clamp(1.6rem, 3vw, 2.2rem); font-weight: 700; color: var(--text); letter-spacing: -0.02em; }"
	.byte 10
	.ascii "body.page-package .pkg-title span { color: var(--orange); }"
	.byte 10
	.ascii "body.page-package .pkg-tagline { font-size: 1rem; color: var(--text-dim); line-height: 1.6; max-width: 500px; }"
	.byte 10
	.ascii "body.page-package .pkg-badges { display: flex; align-items: center; gap: 10px; flex-wrap: wrap; margin-top: 4px; }"
	.byte 10
	.ascii "body.page-package .badge-item { display: inline-flex; align-items: center; gap: 6px; font-family: var(--mono); font-size: 0.72rem; padding: 5px 10px; border-radius: 6px; border: 1px solid var(--border); background: var(--bg3); color: var(--text-dim); }"
	.byte 10
	.ascii "body.page-package .pkg-actions { display: flex; flex-direction: column; gap: 10px; align-items: flex-end; flex-shrink: 0; }"
	.byte 10
	.ascii "body.page-package .btn { display: inline-block; padding: 10px 22px; border-radius: 8px; font-family: var(--sans); font-size: 0.875rem; font-weight: 600; cursor: pointer; text-decoration: none; border: none; transition: background 0.18s, transform 0.14s; min-width: 130px; text-align: center; }"
	.byte 10
	.ascii "body.page-package .btn-primary { background: var(--orange); color: var(--text); }"
	.byte 10
	.ascii "body.theme-light.page-package .btn-primary { color: #fff; }"
	.byte 10
	.ascii "body.page-package .btn-primary:hover { background: var(--orange-dim); transform: translateY(-1px); }"
	.byte 10
	.ascii "body.page-package .btn-ghost { background: transparent; color: var(--text-dim); border: 1px solid var(--border); }"
	.byte 10
	.ascii "body.page-package .btn-ghost:hover { border-color: rgba(255,255,255,0.18); color: var(--text); }"
	.byte 10
	.byte 10
	.ascii "/* README prose */"
	.byte 10
	.ascii "body.page-package .readme h1 { font-size: 1.7rem; font-weight: 700; letter-spacing: -0.02em; margin: 0 0 14px; }"
	.byte 10
	.ascii "body.page-package .readme h2 { font-size: 1.3rem; font-weight: 700; margin: 48px 0 12px; padding-top: 48px; border-top: 1px solid var(--border); }"
	.byte 10
	.ascii "body.page-package .readme h2:first-child { margin-top: 0; padding-top: 0; border-top: none; }"
	.byte 10
	.ascii "body.page-package .readme h3 { font-size: 1.05rem; font-weight: 600; margin: 28px 0 10px; }"
	.byte 10
	.ascii "body.page-package .readme p { font-size: 0.9375rem; color: var(--text-dim); line-height: 1.78; margin-bottom: 16px; }"
	.byte 10
	.ascii "body.page-package .readme p strong { color: var(--text); font-weight: 600; }"
	.byte 10
	.ascii "body.page-package .readme ul, body.page-package .readme ol { padding-left: 24px; margin-bottom: 16px; }"
	.byte 10
	.ascii "body.page-package .readme li { font-size: 0.9375rem; color: var(--text-dim); line-height: 1.72; margin-bottom: 6px; }"
	.byte 10
	.ascii "body.page-package .readme a { color: var(--orange); text-decoration: none; border-bottom: 1px solid var(--orange-glow); transition: border-color 0.15s; }"
	.byte 10
	.ascii "body.page-package .readme a:hover { border-bottom-color: var(--orange); }"
	.byte 10
	.ascii "body.page-package .readme a:has(img) { border-bottom: none; }"
	.byte 10
	.ascii "body.page-package .readme img { border: none; outline: none; }"
	.byte 10
	.ascii "body.page-package .readme code { font-family: var(--mono); font-size: 0.85em; color: var(--orange); background: rgba(255,255,255,0.05); padding: 2px 6px; border-radius: 4px; }"
	.byte 10
	.ascii "body.page-package .readme pre { margin: 16px 0; }"
	.byte 10
	.ascii "body.page-package .readme .code-block pre { margin: 0; }"
	.byte 10
	.ascii "body.page-package .readme pre code { display: block; padding: 20px 18px; font-family: var(--mono); font-size: 0.875rem; line-height: 1.82; overflow-x: auto; background: none; color: var(--text-dim); }"
	.byte 10
	.ascii "body.page-package .readme img { max-width: 100%; border-radius: 8px; margin: 8px 0; }"
	.byte 10
	.ascii "body.page-package .readme blockquote { border-left: 3px solid var(--orange-glow); padding: 10px 16px; margin: 16px 0; color: var(--text-dim); font-style: italic; }"
	.byte 10
	.ascii "body.page-package .readme table { width: 100%; border-collapse: collapse; margin: 16px 0; font-size: 0.9rem; }"
	.byte 10
	.ascii "body.page-package .readme th { text-align: left; padding: 8px 12px; border-bottom: 1px solid var(--border); color: var(--text-dim); font-family: var(--mono); font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.05em; }"
	.byte 10
	.ascii "body.page-package .readme td { padding: 9px 12px; color: var(--text-dim); border-bottom: 1px solid var(--border); }"
	.byte 10
	.byte 10
	.ascii "@media (max-width: 900px) {"
	.byte 10
	.ascii "  body.page-package .pkg-sidebar { display: none; }"
	.byte 10
	.ascii "  body.page-package .pkg-sidebar.open { display: block; z-index: 290; padding-top: 64px; }"
	.byte 10
	.ascii "  body.page-package .pkg-spacer { display: none; }"
	.byte 10
	.ascii "  body.page-package .pkg-main { padding: 64px 24px 64px; }"
	.byte 10
	.ascii "  .sidebar-burger { display: flex; }"
	.byte 10
	.ascii "}"
	.byte 10
	.byte 10
	.ascii "/* ---- DOCS PAGE (page-package-docs) ---- */"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .layout { display: flex; min-height: 100vh; max-width: 1080px; margin: 0 auto; width: 100%; }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .sidebar { position: fixed; top: 0; left: max(0px, calc(50vw - 540px)); bottom: 0; width: 260px; overflow-y: auto; border-right: 1px solid var(--border); background: var(--bg); padding: 32px 0 48px; scrollbar-width: thin; scrollbar-color: var(--border) transparent; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-back { display: flex; align-items: center; gap: 7px; padding: 0 24px; margin-bottom: 6px; font-size: 0.8rem; color: var(--text-dim); text-decoration: none; transition: color 0.15s; font-family: var(--mono); }"
	.byte 10
	.ascii "body.page-package-docs .sidebar.open { padding-top: 64px; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-back:hover { color: var(--text); }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-pkg { padding: 0 24px; margin-bottom: 24px; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-pkg-name { font-family: var(--mono); font-size: 1rem; font-weight: 700; color: var(--orange); }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-pkg-ver { font-family: var(--mono); font-size: 0.72rem; color: var(--text-dim); margin-top: 3px; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-section-label { font-family: var(--mono); font-size: 0.8rem; letter-spacing: 0.12em; text-transform: uppercase; color: var(--orange); padding: 0 24px; margin: 20px 0 6px; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-subcat { font-family: var(--mono); font-size: 0.75rem; letter-spacing: 0.08em; text-transform: uppercase; color: var(--text-dim); opacity: 0.6; padding: 0 24px 0 30px; margin: 10px 0 3px; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav { list-style: none; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav a { display: block; padding: 6px 24px; font-size: 1rem; color: var(--text-dim); text-decoration: none; border-left: 2px solid transparent; transition: color 0.15s, border-color 0.15s, background 0.15s; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav a:hover { color: var(--text); background: rgba(255,255,255,0.03); }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav a.active { color: var(--text); border-left-color: var(--orange); background: rgba(255,255,255,0.03); }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav a.fn-link { font-family: var(--mono); font-size: 0.78rem; padding: 5px 24px 5px 30px; }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav a.fn-link:hover { color: var(--orange); }"
	.byte 10
	.ascii "body.page-package-docs .sidebar-nav a.fn-link.active { color: var(--orange); border-left-color: var(--orange); }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .spacer { width: 260px; flex-shrink: 0; }"
	.byte 10
	.ascii "body.page-package-docs .main { flex: 1; min-width: 0; padding: 56px 72px 96px; max-width: 860px; }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .page-head { margin-bottom: 52px; }"
	.byte 10
	.ascii "body.page-package-docs .page-head h1 { font-family: var(--mono); font-size: clamp(1.5rem, 3vw, 1.9rem); font-weight: 700; letter-spacing: -0.02em; margin-bottom: 12px; }"
	.byte 10
	.ascii "body.page-package-docs .page-head h1 span { color: var(--orange); }"
	.byte 10
	.ascii "body.page-package-docs .page-head p { font-size: 1rem; color: var(--text-dim); line-height: 1.72; max-width: 560px; }"
	.byte 10
	.ascii "body.page-package-docs .ver-row { display: flex; align-items: center; gap: 12px; margin-top: 16px; flex-wrap: wrap; }"
	.byte 10
	.ascii "body.page-package-docs .ver-chip { font-family: var(--mono); font-size: 0.72rem; padding: 4px 10px; border-radius: 6px; background: var(--bg3); border: 1px solid var(--border); color: var(--text-dim); }"
	.byte 10
	.ascii "body.page-package-docs .ver-chip.current { background: var(--orange-glow); border-color: var(--orange-glow); color: var(--orange); }"
	.byte 10
	.ascii "body.page-package-docs .ver-chip-link { text-decoration: none; transition: border-color 0.15s, color 0.15s; }"
	.byte 10
	.ascii "body.page-package-docs .ver-chip-link:hover { border-color: rgba(255,255,255,0.18); color: var(--text); }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .module-section { margin-bottom: 72px; }"
	.byte 10
	.ascii "body.page-package-docs .module-section > h2 { font-size: 1.3rem; font-weight: 700; letter-spacing: -0.02em; margin: 56px 0 12px; padding-top: 56px; border-top: 1px solid var(--border); }"
	.byte 10
	.ascii "body.page-package-docs .module-section:first-child > h2 { margin-top: 0; padding-top: 0; border-top: none; }"
	.byte 10
	.ascii "body.page-package-docs .module-doc { margin-bottom: 28px; }"
	.byte 10
	.ascii "body.page-package-docs .module-doc p { font-size: 0.9375rem; color: var(--text-dim); line-height: 1.78; margin-bottom: 12px; }"
	.byte 10
	.ascii "body.page-package-docs .module-doc code { font-family: var(--mono); font-size: 0.85em; color: var(--orange); background: rgba(255,255,255,0.05); padding: 2px 6px; border-radius: 4px; }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .items-section { margin-bottom: 36px; }"
	.byte 10
	.ascii "body.page-package-docs .items-section h3 { font-size: 0.68rem; font-family: var(--mono); letter-spacing: 0.1em; text-transform: uppercase; color: var(--text-dim); margin-bottom: 16px; padding-bottom: 8px; border-bottom: 1px solid var(--border); opacity: 0.7; }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .fn-card { margin-bottom: 36px; padding-bottom: 36px; border-bottom: 1px solid var(--border); }"
	.byte 10
	.ascii "body.page-package-docs .fn-card:last-child { border-bottom: none; margin-bottom: 0; padding-bottom: 0; }"
	.byte 10
	.ascii "body.page-package-docs .fn-card .code-block pre code { display: block; padding: 14px 18px; font-family: var(--mono); font-size: 0.875rem; line-height: 1.5; background: none; color: var(--text); overflow-x: auto; }"
	.byte 10
	.ascii "body.page-package-docs .fn-card-body { margin-top: 14px; display: flex; flex-direction: column; gap: 12px; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc { margin-top: 14px; font-size: 0.9rem; color: var(--text-dim); line-height: 1.68; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc p { margin-bottom: 8px; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc p:last-child { margin-bottom: 0; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc h2, body.page-package-docs .fn-desc h3 { font-size: 0.85rem; font-weight: 600; margin: 12px 0 6px; color: var(--text); }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc code { font-family: var(--mono); font-size: 0.83em; color: var(--orange); background: rgba(255,255,255,0.05); padding: 2px 6px; border-radius: 4px; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc pre { background: var(--bg3); border: 1px solid var(--border); border-radius: 8px; overflow: hidden; margin: 8px 0; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc pre code { display: block; padding: 14px 16px; background: none; color: var(--text-dim); overflow-x: auto; font-size: 0.82rem; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc ul, body.page-package-docs .fn-desc ol { padding-left: 20px; margin-bottom: 8px; }"
	.byte 10
	.ascii "body.page-package-docs .fn-desc li { margin-bottom: 4px; }"
	.byte 10
	.byte 10
	.ascii "body.page-package-docs .ctor-list { display: flex; flex-direction: column; gap: 8px; }"
	.byte 10
	.ascii "body.page-package-docs .ctor-item { background: var(--bg3); border: 1px solid var(--border); border-radius: 8px; padding: 10px 14px; }"
	.byte 10
	.ascii "body.page-package-docs .ctor-sig { font-family: var(--mono); font-size: 0.82rem; color: var(--text); display: block; margin-bottom: 4px; }"
	.byte 10
	.ascii "body.page-package-docs .ctor-doc { font-size: 0.85rem; color: var(--text-dim); line-height: 1.6; }"
	.byte 10
	.ascii "body.page-package-docs .ctor-doc p { margin: 0; }"
	.byte 10
	.byte 10
	.ascii ".site-footer { text-align: center; padding: 32px 24px; font-size: 0.78rem; color: var(--text-dim); opacity: 0.5; }"
	.byte 10
	.ascii ".site-footer a { color: var(--text-dim); text-decoration: none; }"
	.byte 10
	.ascii ".site-footer a:hover { color: var(--orange); }"
	.byte 10
	.byte 10
	.ascii "@media (max-width: 900px) {"
	.byte 10
	.ascii "  body.page-package-docs .sidebar { display: none; }"
	.byte 10
	.ascii "  body.page-package-docs .sidebar.open { display: block; z-index: 290; }"
	.byte 10
	.ascii "  body.page-package-docs .spacer { display: none; }"
	.byte 10
	.ascii "  body.page-package-docs .main { padding: 64px 24px 64px; }"
	.byte 10
	.ascii "  .sidebar-burger { display: flex; }"
	.byte 10
	.ascii "}"
	.byte 0
/* end data */

.data
.balign 8
str5:
	.ascii ".copy-code { margin-left: auto; border: 1px solid var(--border); border-radius: 6px; background: rgba(255,255,255,0.04); color: var(--text-dim); font-family: var(--mono); font-size: 0.68rem; padding: 4px 8px; cursor: pointer; }"
	.byte 10
	.ascii ".copy-code:hover { color: var(--text); border-color: rgba(255,255,255,0.18); }"
	.byte 10
	.ascii ".hl-kw { color: var(--orange); font-weight: 600; }"
	.byte 10
	.ascii ".hl-type { color: oklch(0.72 0.1 260); }"
	.byte 10
	.ascii ".hl-constructor { color: oklch(0.76 0.1 250); font-weight: 600; }"
	.byte 10
	.ascii ".hl-fn { color: oklch(0.75 0.12 205); }"
	.byte 10
	.ascii ".hl-var { color: oklch(0.78 0.08 90); }"
	.byte 10
	.ascii ".hl-module { color: oklch(0.74 0.09 185); }"
	.byte 10
	.ascii ".hl-op { color: oklch(0.8 0.12 70); font-weight: 600; }"
	.byte 10
	.ascii ".hl-str { color: oklch(0.74 0.1 145); }"
	.byte 10
	.ascii ".hl-num { color: oklch(0.72 0.1 300); }"
	.byte 10
	.ascii ".hl-comment { color: rgba(245,240,236,0.32); font-style: italic; }"
	.byte 10
	.ascii "body.theme-light .hl-comment { color: rgba(36,32,29,0.42); }"
	.byte 10
	.ascii "body.page-package-docs .module-doc pre { background: var(--bg3); border: 1px solid var(--border); border-radius: 8px; overflow: hidden; margin: 12px 0 18px; max-width: 100%; }"
	.byte 10
	.ascii "body.page-package-docs .module-doc pre code { display: block; padding: 14px 16px; background: none; color: var(--text-dim); overflow-x: auto; font-size: 0.82rem; white-space: pre; }"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str6:
	.ascii "(() => {"
	.byte 10
	.ascii "  function setTheme(theme) {"
	.byte 10
	.ascii "    var isLight = theme === 'light';"
	.byte 10
	.ascii "    document.body.classList.toggle('theme-light', isLight);"
	.byte 10
	.ascii "    document.querySelectorAll('[data-theme-toggle]').forEach(function(btn) {"
	.byte 10
	.ascii "      btn.setAttribute('aria-label', isLight ? 'Switch to dark theme' : 'Switch to light theme');"
	.byte 10
	.ascii "      btn.setAttribute('aria-pressed', String(isLight));"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "  }"
	.byte 10
	.byte 10
	.ascii "  function initThemeToggle() {"
	.byte 10
	.ascii "    var saved = localStorage.getItem('donna-theme');"
	.byte 10
	.ascii "    var preferred = window.matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark';"
	.byte 10
	.ascii "    setTheme(saved || preferred);"
	.byte 10
	.ascii "    document.querySelectorAll('[data-theme-toggle]').forEach(function(btn) {"
	.byte 10
	.ascii "      btn.addEventListener('click', function() {"
	.byte 10
	.ascii "        var next = document.body.classList.contains('theme-light') ? 'dark' : 'light';"
	.byte 10
	.ascii "        localStorage.setItem('donna-theme', next);"
	.byte 10
	.ascii "        setTheme(next);"
	.byte 10
	.ascii "      });"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "  }"
	.byte 10
	.byte 10
	.ascii "  function initSidebarBurger() {"
	.byte 10
	.ascii "    var burger = document.getElementById('sidebar-burger');"
	.byte 10
	.ascii "    var sidebar = document.getElementById('page-sidebar');"
	.byte 10
	.ascii "    if (!burger || !sidebar) return;"
	.byte 10
	.ascii "    burger.addEventListener('click', function(e) {"
	.byte 10
	.ascii "      e.stopPropagation();"
	.byte 10
	.ascii "      burger.classList.toggle('open');"
	.byte 10
	.ascii "      sidebar.classList.toggle('open');"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "    document.addEventListener('click', function(e) {"
	.byte 10
	.ascii "      if (!burger.contains(e.target) && !sidebar.contains(e.target)) {"
	.byte 10
	.ascii "        burger.classList.remove('open');"
	.byte 10
	.ascii "        sidebar.classList.remove('open');"
	.byte 10
	.ascii "      }"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "  }"
	.byte 10
	.byte 10
	.ascii "  function initSidebarSpy(sectionSel, linkSel, fallback) {"
	.byte 10
	.ascii "    var sections = document.querySelectorAll(sectionSel);"
	.byte 10
	.ascii "    var links = document.querySelectorAll(linkSel);"
	.byte 10
	.ascii "    if (!sections.length || !links.length) return;"
	.byte 10
	.ascii "    function update() {"
	.byte 10
	.ascii "      var y = window.scrollY + 90;"
	.byte 10
	.ascii "      var current = fallback || '';"
	.byte 10
	.ascii "      sections.forEach(function(s) {"
	.byte 10
	.ascii "        if (y >= s.offsetTop) current = s.id || fallback || '';"
	.byte 10
	.ascii "      });"
	.byte 10
	.ascii "      links.forEach(function(a) {"
	.byte 10
	.ascii "        a.classList.toggle('active', a.getAttribute('href') === '#' + current);"
	.byte 10
	.ascii "      });"
	.byte 10
	.ascii "    }"
	.byte 10
	.ascii "    window.addEventListener('scroll', update, { passive: true });"
	.byte 10
	.ascii "    update();"
	.byte 10
	.ascii "  }"
	.byte 10
	.byte 10
	.ascii "  function initHeadingAnchors() {"
	.byte 10
	.ascii "    document.querySelectorAll('.readme h1, .readme h2, .readme h3').forEach(function(h) {"
	.byte 10
	.ascii "      if (!h.id) {"
	.byte 10
	.ascii "        h.id = h.textContent.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');"
	.byte 10
	.ascii "      }"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "  }"
	.byte 10
	.byte 10
	.ascii "  function initCodeBlocks() {"
	.byte 10
	.ascii "    document.querySelectorAll('.readme pre').forEach(function(pre) {"
	.byte 10
	.ascii "      if (pre.parentElement.classList.contains('code-block')) return;"
	.byte 10
	.ascii "      var wrapper = document.createElement('div');"
	.byte 10
	.ascii "      wrapper.className = 'code-block';"
	.byte 10
	.ascii "      var bar = document.createElement('div');"
	.byte 10
	.ascii "      bar.className = 'code-bar';"
	.byte 10
	.ascii "      bar.innerHTML = '<div class="
	.byte 34
	.ascii "dot dot-r"
	.byte 34
	.ascii "></div><div class="
	.byte 34
	.ascii "dot dot-y"
	.byte 34
	.ascii "></div><div class="
	.byte 34
	.ascii "dot dot-g"
	.byte 34
	.ascii "></div>';"
	.byte 10
	.ascii "      pre.parentNode.insertBefore(wrapper, pre);"
	.byte 10
	.ascii "      wrapper.appendChild(bar);"
	.byte 10
	.ascii "      wrapper.appendChild(pre);"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "  }"
	.byte 10
	.byte 10
	.ascii "  initThemeToggle();"
	.byte 10
	.ascii "  initSidebarBurger();"
	.byte 10
	.ascii "  initHeadingAnchors();"
	.byte 10
	.ascii "  initCodeBlocks();"
	.byte 10
	.ascii "  initSidebarSpy('.page-package .readme h2, .page-package .readme h3', '.page-package .sidebar-nav a', '');"
	.byte 10
	.ascii "  initSidebarSpy('.page-package-docs .fn-card[id]', '.page-package-docs .sidebar-nav a', '');"
	.byte 10
	.ascii "})();"
	.byte 0
/* end data */

.data
.balign 8
str7:
	.ascii "(() => {"
	.byte 10
	.ascii "  function esc(s) {"
	.byte 10
	.ascii "    return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');"
	.byte 10
	.ascii "  }"
	.byte 10
	.ascii "  function addCopyBar(pre) {"
	.byte 10
	.ascii "    if (pre.parentElement && pre.parentElement.classList.contains('code-block')) return;"
	.byte 10
	.ascii "    var wrapper = document.createElement('div');"
	.byte 10
	.ascii "    wrapper.className = 'code-block';"
	.byte 10
	.ascii "    var bar = document.createElement('div');"
	.byte 10
	.ascii "    bar.className = 'code-bar';"
	.byte 10
	.ascii "    bar.innerHTML = '<div class="
	.byte 34
	.ascii "dot dot-r"
	.byte 34
	.ascii "></div><div class="
	.byte 34
	.ascii "dot dot-y"
	.byte 34
	.ascii "></div><div class="
	.byte 34
	.ascii "dot dot-g"
	.byte 34
	.ascii "></div><button type="
	.byte 34
	.ascii "button"
	.byte 34
	.ascii " class="
	.byte 34
	.ascii "copy-code"
	.byte 34
	.ascii " aria-label="
	.byte 34
	.ascii "Copy code"
	.byte 34
	.ascii ">Copy</button>';"
	.byte 10
	.ascii "    pre.parentNode.insertBefore(wrapper, pre);"
	.byte 10
	.ascii "    wrapper.appendChild(bar);"
	.byte 10
	.ascii "    wrapper.appendChild(pre);"
	.byte 10
	.ascii "  }"
	.byte 10
	.ascii "  function highlightDonna(code) {"
	.byte 10
	.ascii "    var html = esc(code);"
	.byte 10
	.ascii "    var held = {};"
	.byte 10
	.ascii "    var heldCount = 0;"
	.byte 10
	.ascii "    function holdKey(n) {"
	.byte 10
	.ascii "      var out = '';"
	.byte 10
	.ascii "      do {"
	.byte 10
	.ascii "        out = String.fromCharCode(65 + (n % 26)) + out;"
	.byte 10
	.ascii "        n = Math.floor(n / 26) - 1;"
	.byte 10
	.ascii "      } while (n >= 0);"
	.byte 10
	.ascii "      return '@@DONNAHL' + out + '@@';"
	.byte 10
	.ascii "    }"
	.byte 10
	.ascii "    function stash(cls, value) {"
	.byte 10
	.ascii "      var key = holdKey(heldCount++);"
	.byte 10
	.ascii "      held[key] = '<span class="
	.byte 34
	.ascii "' + cls + '"
	.byte 34
	.ascii ">' + value + '</span>';"
	.byte 10
	.ascii "      return key;"
	.byte 10
	.ascii "    }"
	.byte 10
	.ascii "    html = html.replace(/(&quot;[^"
	.byte 92
	.ascii "n]*?&quot;|"
	.byte 34
	.ascii "[^"
	.byte 92
	.ascii "n]*?"
	.byte 34
	.ascii ")/g, function(m) { return stash('hl-str', m); });"
	.byte 10
	.ascii "    html = html.replace(/("
	.byte 92
	.ascii "/"
	.byte 92
	.ascii "/.*)$/gm, function(m) { return stash('hl-comment', m); });"
	.byte 10
	.ascii "    html = html.replace(/("
	.byte 92
	.ascii "bimport"
	.byte 92
	.ascii "s+)([A-Za-z0-9_"
	.byte 92
	.ascii "/]+)/g, function(_, kw, mod) { return stash('hl-kw', 'import') + ' ' + stash('hl-module', mod); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b([a-z_][A-Za-z0-9_]*)(?="
	.byte 92
	.ascii ".)/g, function(m) { return stash('hl-module', m); });"
	.byte 10
	.ascii "    html = html.replace(/("
	.byte 92
	.ascii "|&gt;"
	.byte 92
	.ascii "s*)([a-z_][A-Za-z0-9_]*)/g, function(_, op, fn) { return stash('hl-op', op.trim()) + ' ' + stash('hl-fn', fn); });"
	.byte 10
	.ascii "    html = html.replace(/("
	.byte 92
	.ascii "|&gt;|-&gt;)/g, function(m) { return stash('hl-op', m); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "blet"
	.byte 92
	.ascii "s+([a-z_][A-Za-z0-9_]*)/g, function(_, name) { return stash('hl-kw', 'let') + ' ' + stash('hl-var', name); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b(echo|panic)"
	.byte 92
	.ascii "s+([a-z_][A-Za-z0-9_]*)"
	.byte 92
	.ascii "b/g, function(_, kw, name) { return stash('hl-kw', kw) + ' ' + stash('hl-var', name); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "bcase"
	.byte 92
	.ascii "s+([a-z_][A-Za-z0-9_]*)"
	.byte 92
	.ascii "b(?!"
	.byte 92
	.ascii "s*"
	.byte 92
	.ascii "()/g, function(_, name) { return stash('hl-kw', 'case') + ' ' + stash('hl-var', name); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b(pub|fn|type|const|case|if|opaque|external|echo|panic|todo|as)"
	.byte 92
	.ascii "b/g, function(m) { return stash('hl-kw', m); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b([a-z_][A-Za-z0-9_]*)(?="
	.byte 92
	.ascii "s*"
	.byte 92
	.ascii "()/g, function(m) { return stash('hl-fn', m); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b([A-Z][A-Za-z0-9_]*)(?="
	.byte 92
	.ascii "s*"
	.byte 92
	.ascii "()/g, function(m) { return stash('hl-constructor', m); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b(Int|String|Bool|Float|List|Nil)"
	.byte 92
	.ascii "b/g, function(m) { return stash('hl-type', m); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b(True|False)"
	.byte 92
	.ascii "b/g, function(m) { return stash('hl-constructor', m); });"
	.byte 10
	.ascii "    html = html.replace(/"
	.byte 92
	.ascii "b([0-9]+)"
	.byte 92
	.ascii "b/g, function(m) { return stash('hl-num', m); });"
	.byte 10
	.ascii "    html = html.replace(/@@DONNAHL[A-Z]+@@/g, function(m) { return held[m]; });"
	.byte 10
	.ascii "    return html;"
	.byte 10
	.ascii "  }"
	.byte 10
	.ascii "  function shouldHighlight(code) {"
	.byte 10
	.ascii "    return code.classList.contains('language-donna') || /"
	.byte 92
	.ascii "b(pub fn|fn |import |pub type|pub const|case |let )"
	.byte 92
	.ascii "b/.test(code.textContent);"
	.byte 10
	.ascii "  }"
	.byte 10
	.ascii "  function applyDonnaHighlight(code) {"
	.byte 10
	.ascii "    if (shouldHighlight(code) && !code.dataset.highlighted) {"
	.byte 10
	.ascii "      addCopyBar(code.parentElement);"
	.byte 10
	.ascii "      code.innerHTML = highlightDonna(code.textContent);"
	.byte 10
	.ascii "      code.dataset.highlighted = 'true';"
	.byte 10
	.ascii "    }"
	.byte 10
	.ascii "  }"
	.byte 10
	.ascii "  document.querySelectorAll('.code-block').forEach(function(block) {"
	.byte 10
	.ascii "    var bar = block.querySelector('.code-bar');"
	.byte 10
	.ascii "    var code = block.querySelector('pre code');"
	.byte 10
	.ascii "    if (!bar || !code) return;"
	.byte 10
	.ascii "    if (!bar.querySelector('.copy-code')) {"
	.byte 10
	.ascii "      var btn = document.createElement('button');"
	.byte 10
	.ascii "      btn.type = 'button';"
	.byte 10
	.ascii "      btn.className = 'copy-code';"
	.byte 10
	.ascii "      btn.setAttribute('aria-label', 'Copy code');"
	.byte 10
	.ascii "      btn.textContent = 'Copy';"
	.byte 10
	.ascii "      bar.appendChild(btn);"
	.byte 10
	.ascii "    }"
	.byte 10
	.ascii "    applyDonnaHighlight(code);"
	.byte 10
	.ascii "  });"
	.byte 10
	.ascii "  document.querySelectorAll('pre code').forEach(function(code) {"
	.byte 10
	.ascii "    applyDonnaHighlight(code);"
	.byte 10
	.ascii "  });"
	.byte 10
	.ascii "  document.addEventListener('click', function(e) {"
	.byte 10
	.ascii "    if (!e.target.classList.contains('copy-code')) return;"
	.byte 10
	.ascii "    var block = e.target.closest('.code-block');"
	.byte 10
	.ascii "    var code = block && block.querySelector('pre code');"
	.byte 10
	.ascii "    if (!code) return;"
	.byte 10
	.ascii "    navigator.clipboard.writeText(code.textContent).then(function() {"
	.byte 10
	.ascii "      e.target.textContent = 'Copied';"
	.byte 10
	.ascii "      setTimeout(function() { e.target.textContent = 'Copy'; }, 1200);"
	.byte 10
	.ascii "    });"
	.byte 10
	.ascii "  });"
	.byte 10
	.ascii "})();"
	.byte 0
/* end data */

.text
.balign 16
.globl tools_docgen_assets_css
tools_docgen_assets_css:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	tools_docgen_assets_module_doc_code_css
	mov	x1, x0
	adrp	x0, str0
	add	x0, x0, #:lo12:str0
	bl	__rt_str_concat
	adrp	x1, str3
	add	x1, x1, #:lo12:str3
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type tools_docgen_assets_css, @function
.size tools_docgen_assets_css, .-tools_docgen_assets_css
/* end function tools_docgen_assets_css */

.text
.balign 16
tools_docgen_assets_module_doc_code_css:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str5
	add	x0, x0, #:lo12:str5
	ldp	x29, x30, [sp], 16
	ret
.type tools_docgen_assets_module_doc_code_css, @function
.size tools_docgen_assets_module_doc_code_css, .-tools_docgen_assets_module_doc_code_css
/* end function tools_docgen_assets_module_doc_code_css */

.text
.balign 16
.globl tools_docgen_assets_js
tools_docgen_assets_js:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str6
	add	x0, x0, #:lo12:str6
	ldp	x29, x30, [sp], 16
	ret
.type tools_docgen_assets_js, @function
.size tools_docgen_assets_js, .-tools_docgen_assets_js
/* end function tools_docgen_assets_js */

.text
.balign 16
.globl tools_docgen_assets_codeblock_js
tools_docgen_assets_codeblock_js:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str7
	add	x0, x0, #:lo12:str7
	ldp	x29, x30, [sp], 16
	ret
.type tools_docgen_assets_codeblock_js, @function
.size tools_docgen_assets_codeblock_js, .-tools_docgen_assets_codeblock_js
/* end function tools_docgen_assets_codeblock_js */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
