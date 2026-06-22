
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop - Modern E-Commerce</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        :root {
            --bg: #f8fafc;
            --primary: #0f172a;
            --secondary: #1e293b;
            --accent: #06b6d4;
            --accent-dark: #0891b2;
            --blue: #2563eb;
            --purple: #7c3aed;
            --muted: #64748b;
            --card: #ffffff;
            --light: #e2e8f0;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --radius: 22px;
            --container: 1250px;
            --shadow: 0 20px 45px rgba(15, 23, 42, 0.12);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 22px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 999;
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(20px);
            box-shadow: 0 8px 28px rgba(15, 23, 42, 0.08);
        }

        .header-inner {
            height: 78px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 18px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: "Poppins", sans-serif;
            font-size: 24px;
            font-weight: 800;
            color: var(--primary);
        }

        .brand-icon {
            width: 42px;
            height: 42px;
            border-radius: 14px;
            background: linear-gradient(135deg, var(--blue), var(--accent));
            display: grid;
            place-items: center;
            color: white;
            box-shadow: 0 10px 22px rgba(37, 99, 235, 0.35);
        }

        .brand span span {
            color: var(--accent);
        }

        .main-nav ul {
            list-style: none;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .main-nav a {
            padding: 10px 14px;
            border-radius: 999px;
            font-weight: 600;
            color: var(--secondary);
            transition: 0.3s;
            font-size: 14px;
        }

        .main-nav a:hover {
            background: #e0f2fe;
            color: var(--accent-dark);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .search {
            display: flex;
            align-items: center;
            width: 310px;
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 999px;
            padding: 9px 14px;
            box-shadow: 0 8px 24px rgba(15, 23, 42, 0.06);
        }

        .search input {
            border: none;
            outline: none;
            width: 100%;
            font-size: 14px;
            background: transparent;
            color: var(--primary);
        }

        .search button {
            border: none;
            background: linear-gradient(135deg, var(--blue), var(--accent));
            color: white;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            cursor: pointer;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            border: 1px solid #e2e8f0;
            background: white;
            display: grid;
            place-items: center;
            cursor: pointer;
            transition: 0.3s;
            color: var(--primary);
        }

        .icon-btn:hover {
            transform: translateY(-3px);
            color: var(--accent-dark);
            box-shadow: 0 10px 22px rgba(15, 23, 42, 0.12);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -7px;
            right: -6px;
            width: 21px;
            height: 21px;
            border-radius: 50%;
            background: var(--danger);
            color: white;
            font-size: 11px;
            font-weight: 800;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: none;
            background: transparent;
            font-size: 24px;
            color: var(--primary);
            cursor: pointer;
        }

        .mobile-menu {
            display: none;
            background: white;
            border-top: 1px solid #e2e8f0;
        }

        .mobile-menu ul {
            list-style: none;
            padding: 18px 22px;
            display: flex;
            flex-direction: column;
            gap: 14px;
            font-weight: 600;
        }

        /* Hero */
        .hero {
            min-height: 620px;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            color: white;
            background:
                radial-gradient(circle at top left, rgba(6, 182, 212, 0.35), transparent 35%),
                radial-gradient(circle at bottom right, rgba(124, 58, 237, 0.35), transparent 35%),
                linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #111827 100%);
        }

        .hero::before {
            content: "";
            position: absolute;
            inset: 0;
            background-image:
                linear-gradient(rgba(255, 255, 255, 0.04) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255, 255, 255, 0.04) 1px, transparent 1px);
            background-size: 50px 50px;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            align-items: center;
            gap: 45px;
            padding: 70px 0;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.12);
            color: #cffafe;
            border: 1px solid rgba(255, 255, 255, 0.22);
            padding: 9px 16px;
            border-radius: 999px;
            margin-bottom: 22px;
            font-weight: 700;
            backdrop-filter: blur(10px);
        }

        .hero h1 {
            font-family: "Poppins", sans-serif;
            font-size: clamp(42px, 6vw, 72px);
            line-height: 1.05;
            letter-spacing: -2px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            background: linear-gradient(135deg, #67e8f9, #a78bfa);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            max-width: 650px;
            color: #cbd5e1;
            font-size: 18px;
            margin-bottom: 30px;
        }

        .btn-group {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            cursor: pointer;
            padding: 14px 24px;
            border-radius: 999px;
            font-size: 15px;
            font-weight: 800;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            transition: 0.35s;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--blue), var(--accent));
            color: white;
            box-shadow: 0 16px 35px rgba(37, 99, 235, 0.35);
        }

        .btn-primary:hover {
            transform: translateY(-5px);
            box-shadow: 0 25px 50px rgba(37, 99, 235, 0.45);
        }

        .btn-outline {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.28);
            backdrop-filter: blur(10px);
        }

        .btn-outline:hover {
            background: white;
            color: var(--primary);
            transform: translateY(-5px);
        }

        .hero-card {
            position: relative;
            background: rgba(255, 255, 255, 0.12);
            border: 1px solid rgba(255, 255, 255, 0.22);
            border-radius: 34px;
            padding: 25px;
            backdrop-filter: blur(18px);
            box-shadow: 0 35px 90px rgba(0, 0, 0, 0.35);
        }

        .hero-card img {
            width: 100%;
            height: 390px;
            object-fit: cover;
            border-radius: 26px;
        }

        .floating-offer {
            position: absolute;
            left: -20px;
            bottom: 45px;
            background: white;
            color: var(--primary);
            padding: 16px 18px;
            border-radius: 20px;
            box-shadow: var(--shadow);
            font-weight: 800;
        }

        .floating-offer span {
            color: var(--danger);
            font-size: 22px;
        }

        /* Sections */
        .section {
            padding: 74px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 38px;
        }

        .section-title .mini {
            color: var(--accent-dark);
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1.4px;
            font-size: 13px;
        }

        .section-title h2 {
            font-family: "Poppins", sans-serif;
            font-size: clamp(30px, 4vw, 44px);
            margin: 8px 0 10px;
            letter-spacing: -1px;
        }

        .section-title p {
            color: var(--muted);
            max-width: 650px;
            margin: auto;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: white;
            border-radius: var(--radius);
            padding: 28px 18px;
            text-align: center;
            border: 1px solid #e2e8f0;
            box-shadow: 0 12px 32px rgba(15, 23, 42, 0.06);
            cursor: pointer;
            transition: 0.35s;
        }

        .cat-card:hover {
            transform: translateY(-10px);
            background: linear-gradient(135deg, var(--blue), var(--accent));
            color: white;
            box-shadow: 0 24px 48px rgba(37, 99, 235, 0.32);
        }

        .cat-icon {
            width: 60px;
            height: 60px;
            border-radius: 19px;
            margin: 0 auto 14px;
            display: grid;
            place-items: center;
            background: #e0f2fe;
            color: var(--accent-dark);
            font-size: 26px;
            transition: 0.35s;
        }

        .cat-card:hover .cat-icon {
            background: rgba(255, 255, 255, 0.18);
            color: white;
        }

        .cat-card h4 {
            font-size: 16px;
            margin-bottom: 6px;
        }

        .cat-card p {
            color: var(--muted);
            font-size: 13px;
        }

        .cat-card:hover p {
            color: #e0f2fe;
        }

        /* Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            position: relative;
            background: white;
            border-radius: 26px;
            overflow: hidden;
            border: 1px solid #e2e8f0;
            box-shadow: 0 14px 35px rgba(15, 23, 42, 0.07);
            transition: 0.35s;
        }

        .product:hover {
            transform: translateY(-12px);
            box-shadow: 0 28px 60px rgba(15, 23, 42, 0.16);
        }

        .product-image {
            height: 235px;
            overflow: hidden;
            background: #f1f5f9;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.55s;
        }

        .product:hover .product-image img {
            transform: scale(1.09);
        }

        .badge {
            position: absolute;
            top: 16px;
            left: 16px;
            z-index: 5;
            padding: 7px 12px;
            border-radius: 999px;
            color: white;
            font-size: 12px;
            font-weight: 800;
            background: var(--success);
        }

        .badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            top: 16px;
            right: 16px;
            z-index: 5;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            border: none;
            background: rgba(255, 255, 255, 0.92);
            color: var(--primary);
            cursor: pointer;
            transition: 0.3s;
        }

        .wishlist:hover {
            background: var(--danger);
            color: white;
        }

        .product-body {
            padding: 18px;
        }

        .product-category {
            color: var(--accent-dark);
            font-size: 13px;
            font-weight: 800;
            text-transform: capitalize;
            margin-bottom: 6px;
        }

        .product h3 {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .rating {
            color: var(--warning);
            font-size: 13px;
            margin-bottom: 12px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 4px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 16px;
        }

        .price {
            font-size: 20px;
            font-weight: 900;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            font-size: 13px;
            text-decoration: line-through;
            margin-left: 5px;
        }

        .add-btn {
            width: 100%;
            border: none;
            padding: 12px 16px;
            border-radius: 14px;
            background: linear-gradient(135deg, var(--primary), var(--blue));
            color: white;
            font-weight: 800;
            cursor: pointer;
            transition: 0.3s;
        }

        .add-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 14px 28px rgba(37, 99, 235, 0.32);
        }

        .no-results {
            grid-column: 1 / -1;
            text-align: center;
            background: white;
            padding: 35px;
            border-radius: var(--radius);
            color: var(--muted);
            box-shadow: 0 12px 32px rgba(15, 23, 42, 0.06);
        }

        /* Deal */
        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0;
            overflow: hidden;
            border-radius: 34px;
            background: linear-gradient(135deg, var(--blue), var(--purple), var(--accent));
            color: white;
            box-shadow: 0 35px 80px rgba(37, 99, 235, 0.32);
        }

        .deal img {
            width: 100%;
            height: 100%;
            min-height: 430px;
            object-fit: cover;
        }

        .deal-content {
            padding: 45px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-content h3 {
            font-family: "Poppins", sans-serif;
            font-size: 42px;
            line-height: 1.1;
            margin-bottom: 14px;
        }

        .deal-content p {
            color: #e0f2fe;
            margin-bottom: 18px;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 24px 0;
            flex-wrap: wrap;
        }

        .time-box {
            min-width: 78px;
            background: rgba(255, 255, 255, 0.15);
            border: 1px solid rgba(255, 255, 255, 0.25);
            border-radius: 18px;
            padding: 14px 10px;
            text-align: center;
            backdrop-filter: blur(10px);
        }

        .time-box strong {
            font-size: 24px;
            display: block;
        }

        .time-box span {
            font-size: 12px;
            color: #dbeafe;
        }

        .deal-price {
            font-size: 34px;
            font-weight: 900;
            margin-bottom: 22px;
        }

        .deal-price span {
            font-size: 20px;
            color: #cbd5e1;
            text-decoration: line-through;
            margin-left: 8px;
        }

        /* Testimonials */
        .testimonials {
            grid-template-columns: repeat(3, 1fr);
        }

        .testimonial {
            background: white;
            border-radius: 26px;
            padding: 26px;
            border: 1px solid #e2e8f0;
            box-shadow: 0 14px 35px rgba(15, 23, 42, 0.07);
        }

        .testimonial p {
            color: var(--muted);
            margin: 14px 0 20px;
        }

        .user {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .user img {
            width: 48px;
            height: 48px;
            object-fit: cover;
            border-radius: 50%;
        }

        .user strong {
            display: block;
        }

        .user span {
            color: var(--muted);
            font-size: 13px;
        }

        /* Newsletter */
        .newsletter {
            background:
                radial-gradient(circle at left, rgba(6, 182, 212, 0.35), transparent 35%),
                linear-gradient(135deg, #0f172a, #1e293b);
            color: white;
            border-radius: 34px;
            padding: 55px 25px;
            text-align: center;
            box-shadow: 0 28px 70px rgba(15, 23, 42, 0.28);
        }

        .newsletter h3 {
            font-family: "Poppins", sans-serif;
            font-size: 38px;
            margin-bottom: 10px;
        }

        .newsletter p {
            color: #cbd5e1;
            margin-bottom: 25px;
        }

        .newsletter form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
        }

        .newsletter input {
            width: 360px;
            max-width: 100%;
            padding: 15px 18px;
            border: none;
            outline: none;
            border-radius: 999px;
            font-size: 15px;
        }

        #newsletterMsg {
            margin-top: 15px;
            font-weight: 700;
            display: none;
        }

        /* Footer */
        footer {
            background: #020617;
            color: white;
            padding: 60px 0 25px;
            margin-top: 60px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.4fr 1fr 1fr 1fr;
            gap: 35px;
        }

        footer h4 {
            margin-bottom: 14px;
        }

        footer p,
        footer a {
            color: #94a3b8;
            font-size: 14px;
        }

        footer a {
            display: block;
            margin-bottom: 9px;
            transition: 0.3s;
        }

        footer a:hover {
            color: var(--accent);
        }

        .socials {
            display: flex;
            gap: 10px;
            margin-top: 18px;
        }

        .socials a {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: #1e293b;
            display: grid;
            place-items: center;
            color: white;
        }

        .copyright {
            text-align: center;
            color: #64748b;
            border-top: 1px solid #1e293b;
            margin-top: 40px;
            padding-top: 22px;
            font-size: 13px;
        }

        /* Toast */
        .toast {
            position: fixed;
            right: 24px;
            bottom: 24px;
            background: var(--primary);
            color: white;
            padding: 14px 20px;
            border-radius: 16px;
            box-shadow: var(--shadow);
            transform: translateY(120px);
            opacity: 0;
            transition: 0.4s;
            z-index: 9999;
            font-weight: 700;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* Responsive */
        @media (max-width: 1100px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .hero-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .hero p {
                margin-left: auto;
                margin-right: auto;
            }

            .btn-group {
                justify-content: center;
            }

            .hero-card {
                max-width: 600px;
                margin: auto;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .testimonials {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 850px) {
            .search {
                display: none;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal img {
                min-height: 280px;
            }
        }

        @media (max-width: 600px) {
            .header-inner {
                height: 70px;
            }

            .brand {
                font-size: 20px;
            }

            .brand-icon {
                width: 38px;
                height: 38px;
            }

            .hero {
                min-height: auto;
            }

            .hero-content {
                padding: 55px 0;
            }

            .hero-card img {
                height: 280px;
            }

            .floating-offer {
                left: 15px;
                bottom: 28px;
            }

            .categories,
            .products,
            .testimonials,
            .footer-grid {
                grid-template-columns: 1fr;
            }

            .deal-content {
                padding: 30px 22px;
            }

            .deal-content h3 {
                font-size: 32px;
            }

            .newsletter h3 {
                font-size: 30px;
            }

            .section {
                padding: 55px 0;
            }
        }
    </style>
</head>

<body>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="brand">
                <div class="brand-icon">
                    <i class="fa-solid fa-bag-shopping"></i>
                </div>
                <span>Nexus<span>Shop</span></span>
            </a>

            <nav class="main-nav">
                <ul>
                    <li><a href="#"><i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fa-solid fa-layer-group"></i> Categories</a></li>
                    <li><a href="#products"><i class="fa-solid fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fa-solid fa-tag"></i> Deals</a></li>
                    <li><a href="#contact"><i class="fa-solid fa-phone"></i> Contact</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <div class="search">
                    <input type="search" id="searchInput" placeholder="Search products..." />
                    <button id="searchBtn" aria-label="Search">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>

                <button class="icon-btn" title="Account">
                    <i class="fa-regular fa-user"></i>
                </button>

                <button class="icon-btn" title="Wishlist">
                    <i class="fa-regular fa-heart"></i>
                </button>

                <button class="icon-btn cart" title="Cart">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>

        <div class="mobile-menu" id="mobileMenu">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">Trending</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>

            <div style="padding: 0 22px 18px;">
                <div class="search" style="display:flex; width:100%;">
                    <input type="search" id="mobileSearchInput" placeholder="Search products..." />
                    <button id="mobileSearchBtn">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- Hero -->
    <section class="hero">
        <div class="container hero-content">
            <div>
                <div class="hero-badge">
                    <i class="fa-solid fa-bolt"></i>
                    Summer Mega Sale Live
                </div>

                <h1>Upgrade Your Style With <span>Premium Picks</span></h1>

                <p>
                    Discover trending gadgets, fashion, accessories, and lifestyle products with exclusive deals,
                    fast delivery, and a smooth shopping experience.
                </p>

                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNow">
                        Shop Now <i class="fa-solid fa-arrow-right"></i>
                    </button>
                    <button class="btn btn-outline" id="exploreDeals">
                        Explore Deals <i class="fa-solid fa-tags"></i>
                    </button>
                </div>
            </div>

            <div class="hero-card">
                <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1000&q=80" alt="Shopping products">
                <div class="floating-offer">
                    Flat <span>40%</span><br>
                    Off Today
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="section container" id="categories">
        <div class="section-title">
            <div class="mini">Browse Collection</div>
            <h2>Shop by Category</h2>
            <p>Select your favorite category and quickly filter trending products.</p>
        </div>

        <div class="grid categories" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section class="section container" id="products">
        <div class="section-title">
            <div class="mini">Popular Products</div>
            <h2>Trending Products</h2>
            <p>Explore the most-loved products selected for modern shoppers.</p>
        </div>

        <div class="grid products" id="productsGrid"></div>
    </section>

    <!-- Deals -->
    <section class="section container" id="deals">
        <div class="section-title">
            <div class="mini">Limited Offer</div>
            <h2>Flash Sale</h2>
            <p>Grab this premium product before the deal expires.</p>
        </div>

        <div class="deal">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook deal">

            <div class="deal-content">
                <h3>MacBook Air M2</h3>
                <p>Thin, powerful, and beautifully designed. Get it now at a special flash sale price.</p>

                <div class="timer">
                    <div class="time-box">
                        <strong id="dealDays">0</strong>
                        <span>Days</span>
                    </div>
                    <div class="time-box">
                        <strong id="dealHours">00</strong>
                        <span>Hours</span>
                    </div>
                    <div class="time-box">
                        <strong id="dealMinutes">00</strong>
                        <span>Minutes</span>
                    </div>
                    <div class="time-box">
                        <strong id="dealSeconds">00</strong>
                        <span>Seconds</span>
                    </div>
                </div>

                <div class="deal-price">
                    $999 <span>$1,199</span>
                </div>

                <button class="btn btn-primary" id="buyDeal">
                    Buy Now <i class="fa-solid fa-cart-plus"></i>
                </button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section container">
        <div class="section-title">
            <div class="mini">Customer Love</div>
            <h2>What Buyers  was quick and the product quality was excellent."</p>
                <div class="user">
                    https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80
                    <div>
                        <strong>Ava Martin</strong>
                        <span>Verified Buyer</span>
                    </div>
                </div>
            </div>

            <div class="testimonial">
                <div class="rating">★★★★★</div>
                <p>"The UI is very clean and checkout was smooth. I will definitely shop again."</p>
                <div class="user">
                    https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80
                    <div>
                        <strong>Michael Lee</strong>
                        <span>Frequent Buyer</span>
                    </div>
                </div>
            </div>

            <div class="testimonial">
                <div class="rating">★★★★☆</div>
                <p>"Great product collection and attractive discounts. Very professional website."</p>
                <div class="user">
                    https://images.unsplash.com/photo-1544723795-3fb6469f5b39?auto=format&fit=crop&w=100&q=80
                    <div>
                        <strong>Sophia Clark</strong>
                        <span>Premium Customer</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="section container" id="contact">
        <div class="newsletter">
            <h3>Stay in the Loop</h3>
            <p>Subscribe to receive exclusive offers, fresh arrivals, and flash sale alerts.</p>

            <form id="newsletterForm">
                <input id="newsletterEmail" type="email" placeholder="Enter your email address">
                <button class="btn btn-primary" type="submit">
                    Subscribe <i class="fa-solid fa-paper-plane"></i>
                </button>
            </form>

            <div id="newsletterMsg"></div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container footer-grid">
            <div>
                #
                    <div class="brand-icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    <span>Nexus<span>Shop</span></span>
                </a>

                <p style="margin-top:14px;">
                    A modern e-commerce demo website built using HTML, CSS, and JavaScript.
                </p>

                <div class="socials">
                    #<i class="fa-brands fa-facebook-f"></i></a>
                    #<i class="fa-brands fa-x-twitter"></i></a>
                    #<i class="fa-brands fa-instagram"></i></a>
                    #<i class="fa-brands fa-linkedin-in"></i></a>
                </div>
            </div>

            <div>
                <h4>Company</h4>
                #About Us</a>
                #Careers</a>
                #Press</a>
                #Blog</a>
            </div>

            <div>
                <h4>Support</h4>
                #Help Center</a>
                #Shipping</a>
                #Returns</a>
                #Contact</a>
            </div>

            <div>
                <h4>Shop</h4>
                #Smartphones</a>
                #Laptops</a>
                #Accessories</a>
                #Deals</a>
            </div>
        </div>

        <div class="container copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>
    </footer>

    <div class="toast" id="toast">Product added to cart</div>

    <script>
        const CATEGORIES = [
            {
                id: "phones",
                name: "Smartphones",
                icon: "fa-mobile-screen-button"
            },
            {
                id: "laptops",
                name: "Laptops",
                icon: "fa-laptop"
            },
            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-shirt"
            },
            {
                id: "gadgets",
                name: "Gadgets",
                icon: "fa-headphones-simple"
            },
            {
                id: "footwear",
                name: "Footwear",
                icon: "fa-shoe-prints"
            },
            {
                id: "accessories",
                name: "Accessories",
                icon: "fa-gem"
            }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: "iPhone 14 Pro Max",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: "New",
                img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80",
                category: "phones"
            },
            {
                id: 2,
                title: "MacBook Pro 14",
                price: 1999,
                oldPrice: 2199,
                rating: 5,
                reviews: 86,
                badge: "Hot",
                img: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80",
                category: "laptops"
            },
            {
                id: 3,
                title: "Apple Watch Series 8",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: "-25%",
                img: "https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?auto=format&fit=crop&w=700&q=80",
                category: "accessories"
            },
            {
                id: 4,
                title: "Nike Air Max 270",
                price: 150,
                oldPrice: 180,
                rating: 4,
                reviews: 53,
                badge: "Sale",
                img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80",
                category: "footwear"
            },
            {
                id: 5,
                title: "Sony A7 IV Camera",
                price: 2499,
                oldPrice: 2699,
                rating: 5,
                reviews: 42,
                badge: "Pro",
                img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80",
                category: "gadgets"
            },
            {
                id: 6,
                title: "Premium Perfume",
                price: 120,
                oldPrice: 150,
                rating: 5,
                reviews: 189,
                badge: "Best",
                img: "https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=700&q=80",
                category: "accessories"
            },
            {
                id: 7,
                title: "Travel Backpack",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                badge: "-20%",
                img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80",
                category: "accessories"
            },
            {
                id: 8,
                title: "Sony WH-1000XM5",
                price: 399,
                oldPrice: 449,
                rating: 5,
                reviews: 156,
                badge: "Top",
                img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80",
                category: "gadgets"
            }
        ];

        const categoriesGrid = document.getElementById("categoriesGrid");
        const productsGrid = document.getElementById("productsGrid");
        const searchInput = document.getElementById("searchInput");
        const mobileSearchInput = document.getElementById("mobileSearchInput");
        const cartCountEl = document.getElementById("cartCount");
        const toast = document.getElementById("toast");

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = "";

            CATEGORIES.forEach(category => {
                const card = document.createElement("div");
                card.className = "cat-card";
                card.innerHTML = `
                    <div class="cat-icon">
                        <i class="fa-solid ${category.icon}"></i>
                    </div>
                    <h4>${category.name}</h4>
                    <p>Explore products</p>
                `;

                card.addEventListener("click", () => {
                    filterProducts(category.id);
                    document.getElementById("products").scrollIntoView({ behavior: "smooth" });
                });

                categoriesGrid.appendChild(card);
            });
        }

        function renderProducts(products) {
            productsGrid.innerHTML = "";

            if (products.length === 0) {
                productsGrid.innerHTML = `
                    <div class="no-results">
                        <h3>No products found</h3>
                        <p>Please try another keyword or category.</p>
                    </div>
                `;
                return;
            }

            products.forEach(product => {
                const card = document.createElement("article");
                card.className = "product";

                const isSale = product.badge.includes("-") || product.badge.toLowerCase() === "sale";

                card.innerHTML = `
                    <span class="badge ${isSale ? "sale" : ""}">${product.badge}</span>

                    <button class="wishlist" aria-label="Wishlist">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <div class="product-image">
                        <img src="${product.img}" alt="${escapeHtml(product.title)}">
                    </div>

                    <div class="product-body">
                        <div class="product-category">${product.category}</div>
                        <h3>${escapeHtml(product.title)}</h3>

                        <div class="rating">
                            ${"★".repeat(product.rating)}
                            <span>(${product.reviews})</span>
                        </div>

                        <div class="price-row">
                            <div>
                                <span class="price">$${product.price.toLocaleString()}</span>
                                <span class="old-price">$${product.oldPrice.toLocaleString()}</span>
                            </div>
                        </div>

                        <button class="add-btn" data-id="${product.id}">
                            <i class="fa-solid fa-cart-plus"></i> Add to Cart
                        </button>
                    </div>
                `;

                productsGrid.appendChild(card);
            });

            document.querySelectorAll(".add-btn").forEach(button => {
                button.addEventListener("click", () => {
                    const productId = Number(button.dataset.id);
                    addToCart(productId, button);
                });
            });

            document.querySelectorAll(".wishlist").forEach(button => {
                button.addEventListener("click", () => {
                    button.innerHTML = `<i class="fa-solid fa-heart"></i>`;
                    button.style.background = "#ef4444";
                    button.style.color = "white";
                    showToast("Added to wishlist");
                });
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, function (value) {
                return {
                    "&": "&amp;",
                    "<": "&lt;",
                    ">": "&gt;",
                    '"': "&quot;",
                    "'": "&#039;"
                }[value];
            });
        }

        function addToCart(productId, button) {
            const product = PRODUCTS.find(item => item.id === productId);

            if (!product) return;

            cartCount++;
            cartCountEl.textContent = cartCount;

            const originalText = button.innerHTML;
            button.innerHTML = `<i class="fa-solid fa-check"></i> Added`;
            button.disabled = true;

            showToast(`${product.title} added to cart`);

            setTimeout(() => {
                button.innerHTML = originalText;
                button.disabled = false;
            }, 1200);
        }

        function showToast(message) {
            toast.textContent = message;
            toast.classList.add("show");

            setTimeout(() => {
                toast.classList.remove("show");
            }, 2200);
        }

        function filterProducts(query) {
            const searchTerm = String(query || "").toLowerCase().trim();

            if (!searchTerm) {
                renderProducts(PRODUCTS);
                return;
            }

            const filtered = PRODUCTS.filter(product =>
                product.title.toLowerCase().includes(searchTerm) ||
                product.category.toLowerCase().includes(searchTerm)
            );

            renderProducts(filtered);
        }

        document.getElementById("searchBtn").addEventListener("click", () => {
            filterProducts(searchInput.value);
            document.getElementById("products").scrollIntoView({ behavior: "smooth" });
        });

        searchInput.addEventListener("keydown", event => {
            if (event.key === "Enter") {
                filterProducts(searchInput.value);
                document.getElementById("products").scrollIntoView({ behavior: "smooth" });
            }
        });

        document.getElementById("mobileSearchBtn").addEventListener("click", () => {
            filterProducts(mobileSearchInput.value);
            document.getElementById("products").scrollIntoView({ behavior: "smooth" });
        });

        mobileSearchInput.addEventListener("keydown", event => {
            if (event.key === "Enter") {
                filterProducts(mobileSearchInput.value);
                document.getElementById("products").scrollIntoView({ behavior: "smooth" });
            }
        });

        document.getElementById("mobileToggle").addEventListener("click", () => {
            const mobileMenu = document.getElementById("mobileMenu");

            if (mobileMenu.style.display === "block") {
                mobileMenu.style.display = "none";
            } else {
                mobileMenu.style.display = "block";
            }
        });

        document.getElementById("shopNow").addEventListener("click", () => {
            document.getElementById("products").scrollIntoView({ behavior: "smooth" });
        });

        document.getElementById("exploreDeals").addEventListener("click", () => {
            document.getElementById("deals").scrollIntoView({ behavior: "smooth" });
        });

        document.getElementById("buyDeal").addEventListener("click", () => {
            cartCount++;
            cartCountEl.textContent = cartCount;
            showToast("MacBook Air M2 added to cart");
        });

        document.getElementById("newsletterForm").addEventListener("submit", event => {
            event.preventDefault();

            const email = document.getElementById("newsletterEmail").value.trim();
            const message = document.getElementById("newsletterMsg");

            if (!email || !email.includes("@") || !email.includes(".")) {
                message.style.display = "block";
                message.style.color = "#fecaca";
                message.textContent = "Please enter a valid email address.";
                return;
            }

            message.style.display = "block";
            message.style.color = "#bbf7d0";
            message.textContent = "Thank you! You have successfully subscribed.";

            document.getElementById("newsletterEmail").value = "";

            setTimeout(() => {
                message.style.display = "none";
            }, 3000);
        });

        function setupDealTimer() {
            const targetDate = new Date();
            targetDate.setHours(targetDate.getHours() + 24);
            targetDate.setMinutes(targetDate.getMinutes() + 36);

            const timer = setInterval(() => {
                const now = new Date();
                const difference = targetDate - now;

                if (difference <= 0) {
                    clearInterval(timer);
                    document.getElementById("dealDays").textContent = "0";
                    document.getElementById("dealHours").textContent = "00";
                    document.getElementById("dealMinutes").textContent = "00";
                    document.getElementById("dealSeconds").textContent = "00";
                    return;
                }

                const days = Math.floor(difference / (1000 * 60 * 60 * 24));
                const hours = Math.floor((difference / (1000 * 60 * 60)) % 24);
                const minutes = Math.floor((difference / (1000 * 60)) % 60);
                const seconds = Math.floor((difference / 1000) % 60);

                document.getElementById("dealDays").textContent = days;
                document.getElementById("dealHours").textContent = String(hours).padStart(2, "0");
                document.getElementById("dealMinutes").textContent = String(minutes).padStart(2, "0");
                document.getElementById("dealSeconds").textContent = String(seconds).padStart(2, "0");
            }, 1000);
        }

        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            setupDealTimer();
            document.getElementById("year").textContent = new Date().getFullYear();
        }

        init();
    </script>

</body>

</html>
