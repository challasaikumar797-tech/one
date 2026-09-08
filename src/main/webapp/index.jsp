Here is the HTML code for a dark-themed e-commerce storefront, built as a single, self-contained page.
```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · Dark Theme</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- ROOT (dark, premium, deep) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #0b0b10;
      --surface: #16161e;
      --surface-2: #1e1e2a;
      --primary: #eaeaea;
      --primary-soft: #d0d0dd;
      --accent: #c76b5a;
      --accent-light: #6a3e35;
      --accent-glow: rgba(199, 107, 90, 0.25);
      --muted: #8e8e9e;
      --muted-light: #5c5c6e;
      --border-subtle: rgba(255,255,255,0.04);
      --shadow: 0 12px 30px rgba(0,0,0,0.6);
      --shadow-hover: 0 24px 48px rgba(0,0,0,0.8);
      --radius: 20px;
      --radius-sm: 12px;
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
    }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { background: none; border: none; cursor: pointer; font: inherit; color: inherit; }
    .container { max-width: 1280px; margin: 0 auto; padding: 0 24px; }
    .sr-only { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0,0,0,0); border: 0; }

    /* ----- buttons (dark refined) ----- */
    .btn {
      display: inline-flex; align-items: center; justify-content: center; gap: 8px;
      padding: 14px 32px; border-radius: 60px; font-weight: 600; font-size: 15px;
      border: 1px solid transparent; transition: var(--transition);
    }
    .btn-primary {
      background: var(--accent); color: #fff; border-color: var(--accent);
    }
    .btn-primary:hover {
      background: #b55a48; border-color: #b55a48; transform: translateY(-2px);
      box-shadow: 0 12px 24px var(--accent-glow);
    }
    .btn-secondary {
      background: var(--surface-2); color: #fff; border-color: var(--border-subtle);
    }
    .btn-secondary:hover {
      background: #2e2e40; transform: translateY(-2px);
      box-shadow: 0 12px 24px rgba(0,0,0,0.4);
    }
    .btn-outline {
      background: transparent; border-color: rgba(255,255,255,0.12); color: var(--primary);
    }
    .btn-outline:hover {
      background: var(--surface-2); border-color: var(--accent); color: #fff;
    }
    .btn-ghost {
      background: rgba(255,255,255,0.06); color: #fff; border-color: rgba(255,255,255,0.08);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.12); transform: translateY(-2px);
    }
    .btn-sm { padding: 10px 20px; font-size: 13px; }
    .btn-accent-light {
      background: var(--accent-light); color: var(--accent); border-color: transparent;
    }
    .btn-accent-light:hover {
      background: var(--accent); color: #fff; transform: translateY(-2px);
    }

    /* ----- header (glass dark) ----- */
    header {
      position: sticky; top: 0; z-index: 100;
      background: rgba(11,11,16,0.82);
      backdrop-filter: blur(18px); -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid var(--border-subtle);
    }
    .header-inner {
      display: flex; align-items: center; justify-content: space-between;
      gap: 16px; padding: 14px 0; min-height: 72px;
    }
    .brand {
      display: flex; align-items: center; gap: 10px;
      font-weight: 800; font-size: 22px; letter-spacing: -0.3px;
      color: var(--primary);
    }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 26px; color: var(--accent); }

    nav.main-nav ul {
      display: flex; gap: 2px; list-style: none; align-items: center;
    }
    nav.main-nav li a {
      display: flex; align-items: center; gap: 6px;
      padding: 10px 18px; border-radius: 40px;
      font-weight: 500; font-size: 14px; color: var(--muted);
      transition: var(--transition);
    }
    nav.main-nav li a:hover, nav.main-nav li a.active {
      background: var(--surface-2); color: #fff;
    }
    nav.main-nav li a i { font-size: 14px; }

    .header-actions {
      display: flex; align-items: center; gap: 6px; flex-shrink: 0;
    }
    .icon-btn {
      width: 44px; height: 44px; display: grid; place-items: center;
      border-radius: 50%; font-size: 18px; color: var(--muted);
      transition: var(--transition);
    }
    .icon-btn:hover { background: var(--surface-2); color: #fff; }

    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute; top: -2px; right: -2px;
      background: var(--accent); color: #fff;
      font-size: 11px; font-weight: 700; width: 20px; height: 20px;
      border-radius: 50%; display: grid; place-items: center;
      border: 2px solid var(--bg);
    }

    .search-wrap {
      display: flex; align-items: center; background: var(--surface-2);
      border-radius: 60px; padding: 0 14px 0 20px;
      transition: var(--transition); border: 1px solid transparent;
      min-width: 220px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent); background: var(--surface);
      box-shadow: 0 0 0 4px var(--accent-glow);
    }
    .search-wrap input {
      border: 0; background: transparent; outline: none; width: 100%;
      padding: 12px 0; font-size: 14px; color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 6px 0 6px 10px; color: var(--muted); font-size: 16px;
      transition: var(--transition);
    }
    .search-wrap button:hover { color: var(--accent); }

    .mobile-toggle {
      display: none; width: 44px; height: 44px; border-radius: 50%;
      background: var(--surface-2); font-size: 20px; color: var(--primary);
      transition: var(--transition);
    }
    .mobile-toggle:hover { background: var(--accent-light); }
    #mobileMenu {
      display: none; background: var(--surface); border-top: 1px solid var(--border-subtle);
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none; display: flex; flex-direction: column; gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex; align-items: center; gap: 14px;
      padding: 14px 16px; border-radius: var(--radius-sm);
      font-weight: 500; color: var(--primary); transition: var(--transition);
    }
    #mobileMenu ul li a:hover { background: var(--surface-2); }
    #mobileMenu ul li a i { width: 24px; color: var(--muted); }

    /* ----- hero (dark gradient) ----- */
    .hero {
      position: relative; display: flex; align-items: center;
      min-height: 420px; padding: 60px 0; border-radius: var(--radius);
      overflow: hidden; margin: 20px 24px 0;
      background: linear-gradient(145deg, #0b0b10 0%, #1a1a28 100%);
      border: 1px solid var(--border-subtle);
    }
    .hero::before {
      content: ''; position: absolute; inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.12; z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block; background: var(--accent-light); color: var(--accent);
      padding: 6px 18px; border-radius: 60px; font-weight: 600; font-size: 13px;
      letter-spacing: 0.3px; margin-bottom: 16px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif; font-size: 48px; font-weight: 700;
      color: #fff; line-height: 1.1; max-width: 600px; margin-bottom: 16px;
    }
    .hero p {
      color: rgba(255,255,255,0.65); font-size: 17px; max-width: 480px;
      margin-bottom: 28px; line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }

    /* ----- section ----- */
    .section { padding: 56px 0; }
    .section-header {
      display: flex; align-items: flex-end; justify-content: space-between;
      gap: 16px; margin-bottom: 32px; flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 30px; font-weight: 700; letter-spacing: -0.3px;
      color: var(--primary);
    }
    .section-header .title-group p {
      color: var(--muted); margin-top: 4px; font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600; color: var(--accent); display: flex;
      align-items: center; gap: 6px; font-size: 14px; transition: var(--transition);
      white-space: nowrap;
    }
    .section-header .view-all:hover { gap: 12px; color: #b55a48; }

    /* ----- categories (dark cards) ----- */
    .categories-grid {
      display: grid; grid-template-columns: repeat(6, 1fr); gap: 18px;
    }
    .cat-card {
      background: var(--surface); border-radius: var(--radius);
      padding: 28px 16px; text-align: center;
      box-shadow: var(--shadow); transition: var(--transition);
      border: 1px solid var(--border-subtle); cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px); box-shadow: var(--shadow-hover);
      background: var(--surface-2); border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 60px; height: 60px; border-radius: 50%;
      background: var(--accent-light); display: grid; place-items: center;
      margin: 0 auto 14px; font-size: 26px; color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap { background: var(--accent); color: #fff; }
    .cat-card h4 { font-size: 16px; font-weight: 600; color: var(--primary); }
    .cat-card .count { font-size: 13px; color: var(--muted-light); margin-top: 4px; }

    /* ----- products (dark cards) ----- */
    .products-grid {
      display: grid; grid-template-columns: repeat(4, 1fr); gap: 24px;
    }
    .product-card {
      background: var(--surface); border-radius: var(--radius);
      overflow: hidden; box-shadow: var(--shadow); transition: var(--transition);
      border: 1px solid var(--border-subtle); display: flex; flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px); box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative; overflow: hidden; background: #12121a;
      aspect-ratio: 1/1;
    }
    .product-card .img-wrap img {
      width: 100%; height: 100%; object-fit: cover; transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.04); }
    .product-card .badge {
      position: absolute; top: 14px; left: 14px;
      background: var(--accent); color: #fff; padding: 4px 14px;
      border-radius: 40px; font-size: 11px; font-weight: 700; letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: #b8943a; color: #fff; }
    .product-card .wish-btn {
      position: absolute; top: 14px; right: 14px;
      width: 38px; height: 38px; border-radius: 50%;
      background: rgba(0,0,0,0.6); backdrop-filter: blur(4px);
      display: grid; place-items: center; font-size: 16px; color: var(--muted);
      transition: var(--transition);
    }
    .product-card .wish-btn:hover { background: var(--accent); color: #fff; transform: scale(1.08); }
    .product-card .body { padding: 18px 18px 10px; flex: 1; display: flex; flex-direction: column; gap: 4px; }
    .product-card .body .category-tag {
      font-size: 12px; color: var(--muted-light); text-transform: uppercase;
      letter-spacing: 0.4px; font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 16px; font-weight: 600; line-height: 1.3;
      color: var(--primary);
      display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex; align-items: center; gap: 10px; margin-top: 4px;
    }
    .product-card .body .price { font-weight: 700; font-size: 18px; color: #fff; }
    .product-card .body .old-price {
      color: var(--muted-light); text-decoration: line-through; font-size: 14px;
    }
    .product-card .body .rating {
      display: flex; align-items: center; gap: 4px; font-size: 13px;
      color: #e6b800;
    }
    .product-card .body .rating span { color: var(--muted); font-weight: 400; }
    .product-card .footer {
      padding: 0 18px 18px; display: flex; gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1; padding: 12px; border-radius: 60px;
      background: var(--surface-2); color: #fff; font-weight: 600; font-size: 14px;
      border: 1px solid var(--border-subtle);
      transition: var(--transition); display: flex; align-items: center;
      justify-content: center; gap: 8px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent); border-color: var(--accent); transform: scale(1.02);
    }
    .product-card .footer .add-btn.added { background: #2f8f7a; border-color: #2f8f7a; }

    /* ----- deal (dark) ----- */
    .deal-wrap {
      display: flex; gap: 0; background: var(--surface);
      border-radius: var(--radius); overflow: hidden; box-shadow: var(--shadow);
      border: 1px solid var(--border-subtle);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%; background: #12121a; min-height: 280px;
    }
    .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-wrap .deal-content {
      flex: 1; padding: 40px 44px; display: flex; flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block; background: #b8943a; color: #fff;
      padding: 4px 16px; border-radius: 60px; font-size: 12px; font-weight: 700;
      text-transform: uppercase; letter-spacing: 0.4px; align-self: flex-start;
      margin-bottom: 12px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 30px; font-weight: 700; margin-bottom: 6px; color: #fff;
    }
    .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 16px; }
    .deal-wrap .deal-content .price-big {
      font-size: 34px; font-weight: 800; color: #fff;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px; font-weight: 400; color: var(--muted-light);
      text-decoration: line-through; margin-left: 10px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px; color: var(--muted); margin: 4px 0 18px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }

    .timer-grid {
      display: flex; gap: 14px; margin: 14px 0 22px;
    }
    .timer-box {
      background: var(--surface-2); color: #fff; border: 1px solid var(--border-subtle);
      padding: 12px 20px; border-radius: var(--radius-sm); min-width: 72px;
      text-align: center;
    }
    .timer-box .num { font-size: 28px; font-weight: 700; line-height: 1.1; }
    .timer-box .label { font-size: 11px; opacity: 0.6; text-transform: uppercase; letter-spacing: 0.4px; }

    /* ----- testimonials (dark scroll) ----- */
    .testimonials-scroll {
      display: flex; gap: 24px; overflow-x: auto; padding: 8px 4px 20px;
      scroll-snap-type: x mandatory; -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--accent-light); border-radius: 60px; }
    .testimonial-card {
      flex: 0 0 340px; background: var(--surface); border-radius: var(--radius);
      padding: 28px 30px; box-shadow: var(--shadow); scroll-snap-align: start;
      border: 1px solid var(--border-subtle);
      transition: var(--transition);
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); border-color: var(--accent-light); }
    .testimonial-card .stars { color: #e6b800; font-size: 16px; letter-spacing: 2px; margin-bottom: 12px; }
    .testimonial-card blockquote {
      font-size: 15px; line-height: 1.6; color: var(--primary-soft);
      margin-bottom: 16px; font-style: italic;
    }
    .testimonial-card .author { display: flex; align-items: center; gap: 14px; }
    .testimonial-card .author .avatar {
      width: 48px; height: 48px; border-radius: 50%; object-fit: cover;
      background: var(--bg); border: 1px solid var(--border-subtle);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 15px; color: #fff; }
    .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

    /* ----- newsletter (dark) ----- */
    .newsletter-wrap {
      background: linear-gradient(135deg, #0b0b10 0%, #1a1a28 100%);
      border-radius: var(--radius); padding: 48px 56px;
      color: #fff; display: flex; align-items: center;
      justify-content: space-between; gap: 32px; flex-wrap: wrap;
      border: 1px solid var(--border-subtle);
    }
    .newsletter-wrap .text h3 { font-size: 26px; font-weight: 700; margin-bottom: 4px; }
    .newsletter-wrap .text p { opacity: 0.6; font-size: 15px; }
    .newsletter-wrap form {
      display: flex; gap: 12px; flex-wrap: wrap; flex: 1; max-width: 480px;
    }
    .newsletter-wrap form input {
      flex: 1; min-width: 200px; padding: 14px 22px; border-radius: 60px;
      border: 1px solid var(--border-subtle); font-size: 15px;
      background: var(--surface-2); color: #fff;
      transition: var(--transition); outline: 1px solid transparent;
    }
    .newsletter-wrap form input::placeholder { color: var(--muted-light); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent); border-color: var(--accent);
      background: var(--surface);
    }
    .newsletter-wrap form .btn {
      background: var(--accent); color: #fff; border-color: var(--accent);
      padding: 14px 34px;
    }
    .newsletter-wrap form .btn:hover { background: #b55a48; border-color: #b55a48; }
    #newsletterMsg { margin-top: 12px; font-size: 14px; opacity: 0.9; width: 100%; }

    /* ----- footer (dark) ----- */
    footer { margin-top: 16px; padding: 48px 0 28px; border-top: 1px solid var(--border-subtle); }
    .footer-grid {
      display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 40px; margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand { font-size: 20px; margin-bottom: 8px; }
    .footer-grid .brand-col p { color: var(--muted); font-size: 14px; max-width: 300px; line-height: 1.6; }
    .footer-grid .brand-col .socials {
      display: flex; gap: 10px; margin-top: 16px;
    }
    .footer-grid .brand-col .socials a {
      width: 42px; height: 42px; border-radius: 50%; background: var(--surface-2);
      display: grid; place-items: center; color: var(--muted);
      transition: var(--transition); font-size: 16px;
      border: 1px solid var(--border-subtle);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; border-color: var(--accent); }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 14px; color: #fff; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 8px; }
    .footer-grid .col ul li a {
      color: var(--muted); font-size: 14px; transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center; padding-top: 20px; border-top: 1px solid var(--border-subtle);
      color: var(--muted-light); font-size: 13px;
    }

    /* ----- responsive (same as before, dark adapted) ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 36px; }
      .hero { min-height: 340px; margin: 16px 16px 0; padding: 40px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; }
      .deal-wrap .deal-content { padding: 28px 32px; }
      .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 160px; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2,1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2,1fr); gap: 14px; }
      .hero h1 { font-size: 30px; }
      .section-header h2 { font-size: 24px; }
      .deal-wrap .deal-content h3 { font-size: 24px; }
      .deal-wrap .deal-content .price-big { font-size: 28px; }
      .timer-box { min-width: 60px; padding: 10px 14px; }
      .timer-box .num { font-size: 22px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .brand { font-size: 20px; }
      .search-wrap { min-width: 130px; padding: 0 10px 0 14px; }
      .header-actions .icon-btn { width: 38px; height: 38px; font-size: 16px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 280px; }
      .section { padding: 40px 0; }
      .hero .actions .btn { padding: 12px 22px; font-size: 14px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .hero { margin: 10px 10px 0; min-height: 280px; padding: 24px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 24px; }
      .container { padding: 0 16px; }
      .deal-wrap .deal-content { padding: 20px 18px; }
      .deal-wrap .deal-img { flex: 0 0 160px; }
      .newsletter-wrap { padding: 24px 18px; }
      .product-card .body { padding: 14px 14px 8px; }
      .product-card .body h5 { font-size: 14px; }
      .product-card .body .price { font-size: 16px; }
      .product-card .footer { padding: 0 14px 14px; }
      .timer-box { min-width: 48px; padding: 6px 10px; }
      .timer-box .num { font-size: 18px; }
      .cat-card { padding: 18px 10px; }
      .cat-card .icon-wrap { width: 48px; height: 48px; font-size: 20px; }
    }
  </style>
</head>
<body>
  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
      </div>
      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>
      <div style="display:flex;align-items:center;gap:10px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>
    <!-- HERO -->
    <section class="hero" aria-label="Hero banner">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Premium Essentials <br>for Modern Life</h1>
        <p>Curated fashion, tech & accessories — free shipping on first order. Limited drops.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2 id="cat-title">Browse Categories</h2><p>Find what you love</p></div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2 id="prod-title">Trending Now</h2><p>Popular picks from our community</p></div>
