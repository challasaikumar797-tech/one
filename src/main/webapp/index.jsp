<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
  --ink:#111318;
  --muted:#737783;
  --line:#e8e9ed;
  --soft:#f5f6f8;
  --white:#fff;
  --brand:#635bff;
  --brand-dark:#5048df;
  --green:#159570;
  --orange:#ff8a4c;
  --container:1180px;
  --radius:22px;
  --shadow:0 12px 35px rgba(17,19,24,.08);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  font-family:"DM Sans",sans-serif;
  color:var(--ink);
  background:#fff;
  line-height:1.5;
}
button,input{font:inherit}
button{border:0;cursor:pointer}
a{text-decoration:none;color:inherit}
img{display:block;width:100%}
.container{width:min(var(--container),calc(100% - 40px));margin:auto}

/* HEADER */
header{
  position:sticky;top:0;z-index:1000;
  background:rgba(255,255,255,.94);
  backdrop-filter:blur(18px);
  border-bottom:1px solid var(--line);
}
.topbar{
  height:76px;display:flex;align-items:center;gap:30px;
}
.logo{
  display:flex;align-items:center;gap:10px;
  font-family:"Space Grotesk";font-size:22px;font-weight:700;
  min-width:max-content;
}
.logo-mark{
  width:38px;height:38px;border-radius:12px;
  display:grid;place-items:center;
  color:#fff;background:var(--brand);
  box-shadow:0 8px 18px rgba(99,91,255,.25);
}
.logo span{color:var(--brand)}
.nav{display:flex;align-items:center;gap:6px;margin-right:auto}
.nav a{
  padding:9px 13px;border-radius:10px;
  color:#666a75;font-size:14px;font-weight:600;
}
.nav a:hover,.nav a.active{background:var(--soft);color:var(--ink)}
.header-right{display:flex;align-items:center;gap:8px}
.search{
  width:245px;height:42px;background:var(--soft);
  border:1px solid transparent;border-radius:12px;
  display:flex;align-items:center;padding:0 13px;gap:9px;
}
.search:focus-within{background:#fff;border-color:var(--brand)}
.search i{color:#9a9da7}
.search input{border:0;outline:0;background:transparent;width:100%;font-size:13px}
.icon-btn{
  width:42px;height:42px;border-radius:12px;
  background:#fff;border:1px solid var(--line);
  display:grid;place-items:center;color:#5f626c;
  position:relative;
}
.icon-btn:hover{background:var(--soft);color:var(--ink)}
.cart-count{
  position:absolute;right:-5px;top:-5px;
  width:19px;height:19px;border-radius:50%;
  background:var(--brand);color:#fff;font-size:10px;font-weight:700;
  display:grid;place-items:center;border:2px solid #fff;
}
.menu-btn{display:none}

/* HERO */
.hero{padding:36px 0 20px}
.hero-card{
  min-height:475px;border-radius:30px;overflow:hidden;
  position:relative;background:#151722;
  display:flex;align-items:center;
}
.hero-card:before{
  content:"";position:absolute;inset:0;
  background:
    linear-gradient(90deg,rgba(11,12,18,.96) 0%,rgba(11,12,18,.72) 48%,rgba(11,12,18,.15) 100%),
    url("https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=1600&q=85") center/cover;
}
.hero-content{position:relative;z-index:1;padding:58px;max-width:650px;color:#fff}
.eyebrow{
  display:inline-flex;align-items:center;gap:8px;
  padding:8px 12px;border-radius:999px;
  background:rgba(255,255,255,.1);border:1px solid rgba(255,255,255,.16);
  font-size:12px;font-weight:700;letter-spacing:.4px;
  margin-bottom:20px;
}
.eyebrow i{color:#b7b1ff}
.hero h1{
  font-family:"Space Grotesk";font-size:58px;line-height:1.02;
  letter-spacing:-2.5px;margin-bottom:18px;
}
.hero h1 span{color:#aaa4ff}
.hero p{max-width:510px;color:rgba(255,255,255,.72);font-size:16px;margin-bottom:28px}
.hero-actions{display:flex;gap:10px;flex-wrap:wrap}
.btn{
  min-height:46px;padding:0 19px;border-radius:12px;
  display:inline-flex;align-items:center;justify-content:center;gap:8px;
  font-size:14px;font-weight:700;transition:.2s;
}
.btn-primary{background:var(--brand);color:#fff}
.btn-primary:hover{background:var(--brand-dark);transform:translateY(-2px)}
.btn-light{background:#fff;color:var(--ink)}
.btn-light:hover{transform:translateY(-2px)}
.btn-dark{background:var(--ink);color:#fff}
.btn-dark:hover{background:#282a31}

/* TRUST STRIP */
.trust{
  display:grid;grid-template-columns:repeat(4,1fr);
  border:1px solid var(--line);border-radius:18px;
  margin:0 0 25px;background:#fff;
}
.trust-item{padding:19px 22px;display:flex;gap:12px;align-items:center}
.trust-item+ .trust-item{border-left:1px solid var(--line)}
.trust-icon{
  width:38px;height:38px;border-radius:11px;
  background:#f0efff;color:var(--brand);
  display:grid;place-items:center;
}
.trust b{display:block;font-size:13px}
.trust small{color:var(--muted);font-size:11px}

/* SECTIONS */
.section{padding:52px 0}
.section.alt{background:#f8f8fa}
.section-head{
  display:flex;align-items:end;justify-content:space-between;
  gap:20px;margin-bottom:24px;
}
.kicker{color:var(--brand);font-size:11px;font-weight:800;text-transform:uppercase;letter-spacing:1.2px}
.section h2{font-family:"Space Grotesk";font-size:30px;letter-spacing:-1px}
.section-sub{color:var(--muted);font-size:14px;margin-top:5px}
.view-all{color:var(--brand);font-size:13px;font-weight:700}

/* CATEGORIES */
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
.category{
  background:#fff;border:1px solid var(--line);border-radius:18px;
  padding:22px 12px;text-align:center;transition:.2s;cursor:pointer;
}
.category:hover{transform:translateY(-4px);box-shadow:var(--shadow);border-color:#d7d4ff}
.category-icon{
  width:54px;height:54px;margin:0 auto 13px;border-radius:16px;
  display:grid;place-items:center;background:var(--soft);font-size:21px;
}
.category:nth-child(1) .category-icon{color:#635bff}
.category:nth-child(2) .category-icon{color:#159570}
.category:nth-child(3) .category-icon{color:#ef6b8b}
.category:nth-child(4) .category-icon{color:#e79b27}
.category:nth-child(5) .category-icon{color:#2388d8}
.category:nth-child(6) .category-icon{color:#a05bc9}
.category h3{font-size:13px}
.category p{font-size:11px;color:var(--muted);margin-top:3px}

/* PRODUCTS */
.toolbar{
  display:flex;justify-content:space-between;align-items:center;
  margin-bottom:18px;gap:12px;
}
.filters{display:flex;gap:7px;flex-wrap:wrap}
.filter{
  padding:8px 12px;border:1px solid var(--line);border-radius:10px;
  background:#fff;font-size:12px;font-weight:600;color:#666a75;
}
.filter.active,.filter:hover{background:var(--ink);border-color:var(--ink);color:#fff}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:17px}
.product{
  background:#fff;border:1px solid var(--line);border-radius:20px;
  overflow:hidden;transition:.25s;position:relative;
}
.product:hover{transform:translateY(-5px);box-shadow:var(--shadow)}
.product-image{height:245px;background:#f4f4f6;position:relative;overflow:hidden}
.product-image img{height:100%;object-fit:cover;transition:.35s}
.product:hover .product-image img{transform:scale(1.045)}
.badge{
  position:absolute;top:12px;left:12px;padding:6px 9px;border-radius:8px;
  background:#fff;font-size:10px;font-weight:800;z-index:2;
}
.badge.sale{background:#fff0e8;color:#d96121}
.badge.new{background:#edecff;color:#5149db}
.wishlist{
  position:absolute;right:12px;top:12px;width:35px;height:35px;
  border-radius:10px;background:rgba(255,255,255,.92);
  display:grid;place-items:center;color:#666;z-index:2;
}
.wishlist.liked{color:#e55376}
.product-body{padding:15px}
.product-category{font-size:10px;color:#979aa4;text-transform:uppercase;font-weight:800;letter-spacing:.7px}
.product h3{font-size:14px;margin:5px 0 9px;line-height:1.35}
.rating{font-size:11px;color:#e6a62d}
.rating span{color:#999da7;margin-left:4px}
.price-row{display:flex;align-items:center;gap:8px;margin-top:11px}
.price{font-size:17px;font-weight:800}
.old{font-size:11px;color:#a5a8b0;text-decoration:line-through}
.add{
  width:100%;height:40px;margin-top:14px;border-radius:10px;
  background:var(--ink);color:#fff;font-size:12px;font-weight:700;
}
.add:hover{background:var(--brand)}
.add.added{background:var(--green)}

/* DEAL */
.deal{
  background:#151722;border-radius:25px;color:#fff;overflow:hidden;
  display:grid;grid-template-columns:1.05fr 1fr;min-height:380px;
}
.deal-image{min-height:380px}
.deal-image img{height:100%;object-fit:cover}
.deal-content{padding:42px;display:flex;justify-content:center;flex-direction:column}
.deal-label{color:#b8b3ff;font-size:11px;font-weight:800;text-transform:uppercase;letter-spacing:1px}
.deal h2{font-family:"Space Grotesk";font-size:36px;letter-spacing:-1.2px;margin:9px 0}
.deal p{color:#b6b8c2;font-size:14px;max-width:450px}
.deal-price{margin:20px 0;font-size:29px;font-weight:800}
.deal-price del{font-size:14px;color:#777b87;margin-left:7px;font-weight:500}
.timer{display:flex;gap:8px;margin:5px 0 22px}
.time-box{min-width:62px;padding:9px 7px;border-radius:10px;background:#22242f;text-align:center}
.time-box strong{display:block;font-size:20px}
.time-box small{font-size:9px;color:#9295a0;text-transform:uppercase}

/* REVIEWS */
.reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}
.review{
  border:1px solid var(--line);border-radius:18px;padding:22px;background:#fff;
}
.review-stars{color:#e6a62d;font-size:13px;margin-bottom:12px}
.review p{font-size:13px;line-height:1.7;color:#555963}
.reviewer{display:flex;align-items:center;gap:10px;margin-top:18px}
.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}
.reviewer b{display:block;font-size:12px}
.reviewer small{font-size:10px;color:var(--muted)}

/* NEWSLETTER */
.newsletter{
  background:#eeeefe;border-radius:25px;padding:42px;
  display:flex;align-items:center;justify-content:space-between;gap:30px;
}
.newsletter h2{font-family:"Space Grotesk";font-size:29px}
.newsletter p{color:var(--muted);font-size:13px;margin-top:5px}
.subscribe{display:flex;gap:8px;min-width:410px}
.subscribe input{
  flex:1;border:1px solid #d9d9ee;background:#fff;
  border-radius:11px;padding:0 14px;outline:0;
}
.subscribe input:focus{border-color:var(--brand)}
.message{font-size:11px;margin-top:7px;color:var(--green)}

/* FOOTER */
footer{border-top:1px solid var(--line);padding:45px 0 25px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}
.footer-brand p{color:var(--muted);font-size:12px;max-width:300px;margin-top:10px}
.footer h4{font-size:12px;margin-bottom:13px}
.footer ul{list-style:none;display:grid;gap:8px}
.footer li a{font-size:12px;color:var(--muted)}
.footer li a:hover{color:var(--brand)}
.socials{display:flex;gap:8px;margin-top:16px}
.socials a{width:34px;height:34px;border-radius:9px;background:var(--soft);display:grid;place-items:center;color:#70737d;font-size:12px}
.copyright{border-top:1px solid var(--line);margin-top:30px;padding-top:18px;color:#a0a3ab;text-align:center;font-size:10px}

/* TOAST + MOBILE */
.toast{
  position:fixed;right:22px;bottom:22px;z-index:3000;
  background:var(--ink);color:#fff;padding:12px 15px;border-radius:12px;
  font-size:12px;box-shadow:var(--shadow);
  transform:translateY(20px);opacity:0;pointer-events:none;transition:.25s;
}
.toast.show{transform:translateY(0);opacity:1}
.mobile-menu{display:none;border-top:1px solid var(--line);padding:10px 0 15px}
.mobile-menu a{display:block;padding:10px 4px;font-size:13px;font-weight:600;color:#666}
.no-results{grid-column:1/-1;text-align:center;padding:50px;color:var(--muted)}

@media(max-width:1050px){
  .nav{display:none}
  .menu-btn{display:grid}
  .search{width:210px}
  .categories{grid-template-columns:repeat(3,1fr)}
  .products{grid-template-columns:repeat(3,1fr)}
}
@media(max-width:760px){
  .container{width:min(var(--container),calc(100% - 24px))}
  .topbar{height:66px;gap:8px}
  .logo{font-size:18px}
  .logo-mark{width:34px;height:34px}
  .search{flex:1;width:auto}
  .header-right .search{display:none}
  .hero-card{min-height:510px;border-radius:22px}
  .hero-content{padding:32px 25px}
  .hero h1{font-size:42px;letter-spacing:-1.7px}
  .trust{grid-template-columns:1fr 1fr}
  .trust-item{padding:14px}
  .trust-item:nth-child(3){border-left:0;border-top:1px solid var(--line)}
  .trust-item:nth-child(4){border-top:1px solid var(--line)}
  .section{padding:38px 0}
  .section h2{font-size:25px}
  .categories{grid-template-columns:repeat(2,1fr)}
  .products{grid-template-columns:repeat(2,1fr);gap:10px}
  .product-image{height:190px}
  .deal{grid-template-columns:1fr}
  .deal-image{height:240px;min-height:240px}
  .deal-content{padding:27px}
  .reviews{grid-template-columns:1fr}
  .newsletter{padding:27px;display:block}
  .subscribe{min-width:0;margin-top:20px}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:480px){
  .container{width:calc(100% - 20px)}
  .hero{padding-top:18px}
  .hero-card:before{background:linear-gradient(90deg,rgba(11,12,18,.94),rgba(11,12,18,.55)),url("https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=1000&q=80") center/cover}
  .hero h1{font-size:35px}
  .trust{grid-template-columns:1fr}
  .trust-item+ .trust-item{border-left:0;border-top:1px solid var(--line)}
  .section-head{align-items:flex-start}
  .toolbar{display:block}
  .filters{margin-top:13px}
  .products{grid-template-columns:1fr 1fr}
  .product-image{height:160px}
  .product-body{padding:12px}
  .product h3{font-size:12px}
  .price{font-size:15px}
  .add{font-size:11px}
  .newsletter h2{font-size:24px}
  .subscribe{display:block}
  .subscribe input{width:100%;height:43px}
  .subscribe .btn{width:100%;margin-top:8px}
  .footer-grid{grid-template-columns:1fr}
}
</style>
</head>

<body>
<header>
  <div class="container topbar">
    <button class="icon-btn menu-btn" id="menuBtn" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>

    <a class="logo" href="#">
      <span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span>
      Nexus<span>Shop</span>
    </a>

    <nav class="nav">
      <a href="#" class="active">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>

    <div class="header-right">
      <div class="search">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input id="searchInput" type="search" placeholder="Search products...">
      </div>
      <button class="icon-btn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
      <button class="icon-btn" id="cartBtn" aria-label="Cart">
        <i class="fa-solid fa-bag-shopping"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <div class="mobile-menu" id="mobileMenu">
    <div class="container">
      <a href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <div class="hero-card">
        <div class="hero-content">
          <div class="eyebrow"><i class="fa-solid fa-sparkles"></i> NEW SEASON 2026</div>
          <h1>Everything you need.<br><span>One better store.</span></h1>
          <p>Discover popular tech, fashion and everyday essentials with simple shopping, trusted quality and fast delivery.</p>
          <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow">Shop collection <i class="fa-solid fa-arrow-right"></i></button>
            <button class="btn btn-light" id="heroDeals">View today's deals</button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="container">
    <div class="trust">
      <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-truck-fast"></i></div><div><b>Fast delivery</b><small>Quick doorstep shipping</small></div></div>
      <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-shield-halved"></i></div><div><b>Secure checkout</b><small>Your data stays protected</small></div></div>
      <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-rotate-left"></i></div><div><b>Easy returns</b><small>Simple return process</small></div></div>
      <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-headset"></i></div><div><b>24/7 support</b><small>We're here to help</small></div></div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-head">
        <div><div class="kicker">Explore</div><h2>Shop by category</h2><p class="section-sub">Start with what you need today.</p></div>
        <a href="#products" class="view-all">View all <i class="fa-solid fa-arrow-right"></i></a>
      </div>
      <div class="categories" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section alt" id="products">
    <div class="container">
      <div class="section-head">
        <div><div class="kicker">Popular picks</div><h2>Trending products</h2><p class="section-sub">Best-loved products from our store.</p></div>
      </div>

      <div class="toolbar">
        <div class="filters" id="filters">
          <button class="filter active" data-filter="All">All</button>
          <button class="filter" data-filter="Smartphones">Phones</button>
          <button class="filter" data-filter="Laptops">Laptops</button>
          <button class="filter" data-filter="Gadgets">Gadgets</button>
          <button class="filter" data-filter="Accessories">Accessories</button>
          <button class="filter" data-filter="Footwear">Footwear</button>
        </div>
      </div>

      <div class="products" id="productsGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-head">
        <div><div class="kicker">Limited time</div><h2>Today's special deal</h2><p class="section-sub">A premium pick at a better price.</p></div>
      </div>
      <div class="deal">
        <div class="deal-image">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook">
        </div>
        <div class="deal-content">
          <div class="deal-label">Flash offer</div>
          <h2>MacBook Air M2</h2>
          <p>Thin, light and powerful. Perfect for work, study and everyday productivity.</p>
          <div class="deal-price">$999 <del>$1,199</del></div>
          <div class="timer">
            <div class="time-box"><strong id="days">01</strong><small>Days</small></div>
            <div class="time-box"><strong id="hours">12</strong><small>Hours</small></div>
            <div class="time-box"><strong id="minutes">36</strong><small>Mins</small></div>
            <div class="time-box"><strong id="seconds">00</strong><small>Secs</small></div>
          </div>
          <button class="btn btn-primary" id="dealBtn"><i class="fa-solid fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section alt" id="reviews">
    <div class="container">
      <div class="section-head">
        <div><div class="kicker">Customer stories</div><h2>People love NexusShop</h2><p class="section-sub">A few words from our shoppers.</p></div>
      </div>
      <div class="reviews" id="reviewsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter">
        <div>
          <div class="kicker">Stay updated</div>
          <h2>Get deals in your inbox.</h2>
          <p>New products, special offers and useful updates. No spam.</p>
        </div>
        <form class="subscribe" id="newsletterForm">
          <input type="email" id="email" placeholder="Your email address" required>
          <button class="btn btn-primary">Subscribe</button>
        </form>
        <div class="message" id="message"></div>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="logo" href="#"><span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span>Nexus<span>Shop</span></a>
        <p>A clean, modern e-commerce experience designed to make everyday shopping easier.</p>
        <div class="socials">
          <a href="#"><i class="fa-brands fa-instagram"></i></a>
          <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
          <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
          <a href="#"><i class="fa-brands fa-youtube"></i></a>
        </div>
      </div>
      <div><h4>Shop</h4><ul><li><a href="#products">All products</a></li><li><a href="#categories">Categories</a></li><li><a href="#deals">Deals</a></li></ul></div>
      <div><h4>Company</h4><ul><li><a href="#">About us</a></li><li><a href="#">Careers</a></li><li><a href="#">Contact</a></li></ul></div>
      <div><h4>Support</h4><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
    </div>
    <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
const CATEGORIES = [
  {name:"Smartphones",icon:"fa-mobile-screen-button",count:24},
  {name:"Laptops",icon:"fa-laptop",count:18},
  {name:"Clothing",icon:"fa-shirt",count:42},
  {name:"Gadgets",icon:"fa-headphones",count:31},
  {name:"Footwear",icon:"fa-shoe-prints",count:27},
  {name:"Accessories",icon:"fa-watch",count:39}
];

const PRODUCTS = [
  {id:1,title:"iPhone 14 Pro Max",price:1099,old:1199,rating:5,reviews:128,badge:"New",category:"Smartphones",img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:"",category:"Laptops",img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"},
  {id:3,title:"Apple Watch Series 8",price:349,old:399,rating:5,reviews:214,badge:"Sale",category:"Accessories",img:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"},
  {id:4,title:"Nike Air Max 270",price:150,rating:4,reviews:53,badge:"",category:"Footwear",img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"},
  {id:5,title:"Sony A7 IV Camera",price:2499,rating:5,reviews:42,badge:"New",category:"Gadgets",img:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"},
  {id:6,title:"Premium Fragrance",price:120,rating:5,reviews:189,badge:"",category:"Accessories",img:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"},
  {id:7,title:"Travel Backpack",price:79,old:99,rating:4,reviews:67,badge:"Sale",category:"Accessories",img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"},
  {id:8,title:"Sony WH-1000XM5",price:399,rating:5,reviews:156,badge:"",category:"Gadgets",img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"}
];

const REVIEWS = [
  {name:"Ava Martin",role:"Verified buyer",text:"Fast delivery and a very smooth shopping experience. The product was exactly as expected.",stars:5,img:"https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"},
  {name:"Michael Lee",role:"Frequent shopper",text:"The website is easy to use and the deals are great. I would definitely shop here again.",stars:4,img:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"},
  {name:"Sophia Chen",role:"Verified buyer",text:"Great quality and simple checkout. Everything arrived safely and on time.",stars:5,img:"https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"}
];

let cart = 0;
let activeFilter = "All";

const categoriesGrid = document.getElementById("categoriesGrid");
const productsGrid = document.getElementById("productsGrid");
const cartCount = document.getElementById("cartCount");
const searchInput = document.getElementById("searchInput");
const toast = document.getElementById("toast");

function showToast(text){
  toast.textContent = text;
  toast.classList.add("show");
  clearTimeout(showToast.timer);
  showToast.timer = setTimeout(()=>toast.classList.remove("show"),2200);
}

function renderCategories(){
  categoriesGrid.innerHTML = CATEGORIES.map(c => `
    <div class="category" data-category="${c.name}">
      <div class="category-icon"><i class="fa-solid ${c.icon}"></i></div>
      <h3>${c.name}</h3>
      <p>${c.count} products</p>
    </div>
  `).join("");

  categoriesGrid.querySelectorAll(".category").forEach(card=>{
    card.addEventListener("click",()=>{
      activeFilter = card.dataset.category;
      document.querySelectorAll(".filter").forEach(b=>b.classList.toggle("active",b.dataset.filter===activeFilter));
      renderProducts();
      document.getElementById("products").scrollIntoView({behavior:"smooth"});
    });
  });
}

function renderProducts(){
  const query = searchInput.value.trim().toLowerCase();

  const list = PRODUCTS.filter(p=>{
    const matchesFilter = activeFilter==="All" || p.category===activeFilter;
    const matchesSearch = !query || p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query);
    return matchesFilter && matchesSearch;
  });

  if(!list.length){
    productsGrid.innerHTML = `<div class="no-results">No products found. Try another search.</div>`;
    return;
  }

  productsGrid.innerHTML = list.map(p=>`
    <article class="product">
      <div class="product-image">
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        ${p.badge ? `<span class="badge ${p.badge.toLowerCase()}">${p.badge}</span>` : ""}
        <button class="wishlist" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
      </div>
      <div class="product-body">
        <div class="product-category">${p.category}</div>
        <h3>${p.title}</h3>
        <div class="rating">${"★".repeat(p.rating)}${"☆".repeat(5-p.rating)} <span>(${p.reviews})</span></div>
        <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${p.old?`<span class="old">$${p.old.toLocaleString()}</span>`:""}</div>
        <button class="add" data-id="${p.id}"><i class="fa-solid fa-plus"></i> Add to cart</button>
      </div>
    </article>
  `).join("");

  productsGrid.querySelectorAll(".add").forEach(btn=>{
    btn.addEventListener("click",()=>{
      cart++;
      cartCount.textContent = cart;
      btn.classList.add("added");
      btn.innerHTML = `<i class="fa-solid fa-check"></i> Added`;
      showToast("Product added to your cart");
      setTimeout(()=>{
        btn.classList.remove("added");
        btn.innerHTML = `<i class="fa-solid fa-plus"></i> Add to cart`;
      },1300);
    });
  });

  productsGrid.querySelectorAll(".wishlist").forEach(btn=>{
    btn.addEventListener("click",()=>{
      btn.classList.toggle("liked");
      btn.innerHTML = btn.classList.contains("liked")
        ? `<i class="fa-solid fa-heart"></i>`
        : `<i class="fa-regular fa-heart"></i>`;
      showToast(btn.classList.contains("liked") ? "Added to wishlist" : "Removed from wishlist");
    });
  });
}

function renderReviews(){
  document.getElementById("reviewsList").innerHTML = REVIEWS.map(r=>`
    <article class="review">
      <div class="review-stars">${"★".repeat(r.stars)}${"☆".repeat(5-r.stars)}</div>
      <p>“${r.text}”</p>
      <div class="reviewer">
        <img class="avatar" src="${r.img}" alt="${r.name}">
        <div><b>${r.name}</b><small>${r.role}</small></div>
      </div>
    </article>
  `).join("");
}

document.querySelectorAll(".filter").forEach(btn=>{
  btn.addEventListener("click",()=>{
    activeFilter = btn.dataset.filter;
    document.querySelectorAll(".filter").forEach(b=>b.classList.remove("active"));
    btn.classList.add("active");
    renderProducts();
  });
});

searchInput.addEventListener("input",renderProducts);

document.getElementById("shopNow").addEventListener("click",()=>{
  document.getElementById("products").scrollIntoView({behavior:"smooth"});
});
document.getElementById("heroDeals").addEventListener("click",()=>{
  document.getElementById("deals").scrollIntoView({behavior:"smooth"});
});
document.getElementById("cartBtn").addEventListener("click",()=>{
  showToast(`Your cart has ${cart} item${cart===1?"":"s"}`);
});

document.getElementById("dealBtn").addEventListener("click",()=>{
  cart++;
  cartCount.textContent = cart;
  showToast("MacBook Air M2 added to your cart");
});

document.getElementById("newsletterForm").addEventListener("submit",e=>{
  e.preventDefault();
  const email = document.getElementById("email").value.trim();
  if(!email) return;
  document.getElementById("message").textContent = "Thanks! You're subscribed.";
  document.getElementById("email").value = "";
});

const menuBtn = document.getElementById("menuBtn");
const mobileMenu = document.getElementById("mobileMenu");
menuBtn.addEventListener("click",()=>{
  const open = mobileMenu.style.display==="block";
  mobileMenu.style.display = open ? "none" : "block";
  menuBtn.innerHTML = open ? `<i class="fa-solid fa-bars"></i>` : `<i class="fa-solid fa-xmark"></i>`;
});
mobileMenu.querySelectorAll("a").forEach(a=>a.addEventListener("click",()=>{
  mobileMenu.style.display="none";
  menuBtn.innerHTML=`<i class="fa-solid fa-bars"></i>`;
}));

/* 24-hour deal timer */
const target = Date.now() + 24*60*60*1000;
function tick(){
  let diff = Math.max(0,target-Date.now());
  const d = Math.floor(diff/86400000);
  const h = Math.floor(diff%86400000/3600000);
  const m = Math.floor(diff%3600000/60000);
  const s = Math.floor(diff%60000/1000);
  document.getElementById("days").textContent=String(d).padStart(2,"0");
  document.getElementById("hours").textContent=String(h).padStart(2,"0");
  document.getElementById("minutes").textContent=String(m).padStart(2,"0");
  document.getElementById("seconds").textContent=String(s).padStart(2,"0");
}
tick();
setInterval(tick,1000);

document.getElementById("year").textContent = new Date().getFullYear();

renderCategories();
renderProducts();
renderReviews();
</script>
</body>
</html>
