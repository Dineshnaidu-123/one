<!DOCTYPE html>
<html lang="en">
<head> ,,,,,,,
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Discover. Shop. Love.</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap"
        rel="stylesheet"
    >

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    >

    <style>
        /* =========================================================
           ROOT
        ========================================================= */

        :root {
            --bg: #f8f9fc;
            --white: #ffffff;
            --primary: #171725;
            --primary-light: #29293d;

            --accent: #e76f51;
            --accent-dark: #c9573b;
            --accent-light: #ffe8e1;

            --muted: #6b7280;
            --border: #e7e7ee;

            --success: #2a9d8f;
            --warning: #f4c95d;

            --radius: 18px;
            --radius-sm: 12px;

            --shadow:
                0 8px 30px rgba(20, 20, 40, 0.07);

            --shadow-hover:
                0 18px 50px rgba(20, 20, 40, 0.13);

            --container: 1240px;

            --transition:
                0.25s cubic-bezier(.4, 0, .2, 1);
        }

        /* =========================================================
           RESET
        ========================================================= */

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
            line-height: 1.5;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input {
            font: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 24px;
        }

        /* =========================================================
           BUTTONS
        ========================================================= */

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;

            padding: 13px 25px;

            border-radius: 999px;

            font-size: 14px;
            font-weight: 700;

            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(231, 111, 81, .25);
        }

        .btn-dark {
            background: var(--primary);
            color: white;
        }

        .btn-dark:hover {
            background: var(--primary-light);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: white;
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--accent);
            color: var(--accent);
        }

        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(255,255,255,.94);
            backdrop-filter: blur(18px);

            border-bottom: 1px solid rgba(0,0,0,.05);
        }

        .header-inner {
            min-height: 74px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 25px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;

            font-size: 22px;
            font-weight: 800;
            letter-spacing: -.5px;
        }

        .brand i {
            color: var(--accent);
            font-size: 25px;
        }

        .brand .accent {
            color: var(--accent);
        }

        nav ul {
            list-style: none;

            display: flex;
            align-items: center;
            gap: 4px;
        }

        nav a {
            display: flex;
            align-items: center;
            gap: 7px;

            padding: 9px 14px;

            color: var(--muted);
            font-size: 14px;
            font-weight: 600;

            border-radius: 10px;

            transition: var(--transition);
        }

        nav a:hover,
        nav a.active {
            background: #f0f1f5;
            color: var(--primary);
        }

        /* =========================================================
           SEARCH
        ========================================================= */

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search-box {
            width: 230px;

            display: flex;
            align-items: center;

            background: #f2f3f6;
            border: 2px solid transparent;

            padding: 0 14px;

            border-radius: 999px;

            transition: var(--transition);
        }

        .search-box:focus-within {
            background: white;
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(231,111,81,.1);
        }

        .search-box i {
            color: var(--muted);
            font-size: 14px;
        }

        .search-box input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;

            padding: 11px 9px;

            font-size: 13px;
        }

        .icon-btn {
            position: relative;

            width: 42px;
            height: 42px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            color: var(--muted);
            background: transparent;

            transition: var(--transition);
        }

        .icon-btn:hover {
            background: #f0f1f5;
            color: var(--primary);
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;

            width: 20px;
            height: 20px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: var(--accent);
            color: white;

            font-size: 10px;
            font-weight: 800;

            border: 2px solid white;
        }

        .mobile-toggle {
            display: none;

            width: 42px;
            height: 42px;

            border-radius: 50%;

            background: #f0f1f5;
        }

        /* =========================================================
           MOBILE MENU
        ========================================================= */

        #mobileMenu {
            display: none;
            background: white;
            border-top: 1px solid var(--border);
        }

        #mobileMenu ul {
            list-style: none;
            padding: 12px 0 18px;
        }

        #mobileMenu a {
            display: flex;
            align-items: center;
            gap: 12px;

            padding: 13px 10px;

            border-radius: 10px;

            font-weight: 600;
        }

        #mobileMenu a:hover {
            background: #f3f4f6;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            position: relative;

            margin: 20px 20px 0;

            min-height: 510px;

            display: flex;
            align-items: center;

            overflow: hidden;

            border-radius: 24px;

            background:
                linear-gradient(
                    100deg,
                    rgba(15,15,30,.94),
                    rgba(15,15,30,.55)
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover;
        }

        .hero-content {
            position: relative;
            z-index: 2;

            max-width: 680px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 7px;

            padding: 7px 15px;

            background: rgba(231,111,81,.18);
            color: #ffb7a5;

            border: 1px solid rgba(255,255,255,.12);

            border-radius: 999px;

            font-size: 12px;
            font-weight: 700;

            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;

            color: white;

            font-size: clamp(38px, 5vw, 62px);

            line-height: 1.08;

            margin-bottom: 18px;
        }

        .hero p {
            max-width: 570px;

            color: rgba(255,255,255,.76);

            font-size: 17px;

            margin-bottom: 30px;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .hero-stat {
            display: flex;
            gap: 30px;

            margin-top: 38px;

            color: white;
        }

        .hero-stat strong {
            display: block;
            font-size: 20px;
        }

        .hero-stat span {
            font-size: 12px;
            color: rgba(255,255,255,.6);
        }

        /* =========================================================
           SECTION
        ========================================================= */

        .section {
            padding: 65px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;

            gap: 20px;

            margin-bottom: 28px;
        }

        .section-title h2 {
            font-size: 29px;
            letter-spacing: -.7px;
        }

        .section-title p {
            color: var(--muted);
            font-size: 14px;
            margin-top: 5px;
        }

        .view-all {
            color: var(--accent);
            font-size: 14px;
            font-weight: 700;
        }

        /* =========================================================
           CATEGORY
        ========================================================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6,1fr);
            gap: 16px;
        }

        .category-card {
            background: white;

            border: 1px solid var(--border);

            border-radius: var(--radius);

            padding: 24px 12px;

            text-align: center;

            cursor: pointer;

            transition: var(--transition);
        }

        .category-card:hover {
            transform: translateY(-5px);
            border-color: var(--accent-light);
            box-shadow: var(--shadow-hover);
        }

        .category-icon {
            width: 58px;
            height: 58px;

            margin: auto auto 13px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: var(--accent-light);
            color: var(--accent);

            font-size: 23px;

            transition: var(--transition);
        }

        .category-card:hover .category-icon {
            background: var(--accent);
            color: white;
        }

        .category-card h4 {
            font-size: 14px;
        }

        .category-card span {
            display: block;

            margin-top: 3px;

            color: var(--muted);

            font-size: 12px;
        }

        /* =========================================================
           FILTER BAR
        ========================================================= */

        .filter-bar {
            display: flex;
            align-items: center;
            gap: 10px;

            margin-bottom: 25px;

            overflow-x: auto;

            padding-bottom: 5px;
        }

        .filter-btn {
            white-space: nowrap;

            padding: 9px 17px;

            border: 1px solid var(--border);

            background: white;

            border-radius: 999px;

            font-size: 13px;
            font-weight: 600;

            color: var(--muted);

            transition: var(--transition);
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 20px;
        }

        .product-card {
            position: relative;

            display: flex;
            flex-direction: column;

            background: white;

            border: 1px solid var(--border);

            border-radius: var(--radius);

            overflow: hidden;

            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product-image {
            position: relative;

            aspect-ratio: 1 / 1;

            overflow: hidden;

            background: #f0f1f4;
        }

        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .4s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;

            left: 12px;
            top: 12px;

            padding: 5px 11px;

            background: var(--accent);
            color: white;

            border-radius: 999px;

            font-size: 10px;
            font-weight: 800;

            text-transform: uppercase;
        }

        .product-badge.sale {
            background: var(--warning);
            color: var(--primary);
        }

        .wishlist-btn {
            position: absolute;

            top: 10px;
            right: 10px;

            width: 38px;
            height: 38px;

            display: grid;
            place-items: center;

            background: rgba(255,255,255,.95);

            border-radius: 50%;

            color: var(--muted);

            transition: var(--transition);
        }

        .wishlist-btn:hover,
        .wishlist-btn.active {
            color: var(--accent);
            transform: scale(1.1);
        }

        .product-info {
            padding: 17px;

            flex: 1;

            display: flex;
            flex-direction: column;
        }

        .product-category {
            color: #a0a3ad;

            font-size: 11px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: .5px;
        }

        .product-title {
            margin-top: 6px;

            font-size: 15px;
            font-weight: 700;

            line-height: 1.35;

            min-height: 40px;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;

            margin-top: 7px;

            color: #f4a623;

            font-size: 12px;
        }

        .rating span {
            color: var(--muted);
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 8px;

            margin-top: 10px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: #a5a7af;

            font-size: 12px;

            text-decoration: line-through;
        }

        .product-footer {
            display: flex;
            gap: 8px;

            padding: 0 17px 17px;
        }

        .add-cart {
            flex: 1;

            padding: 10px;

            background: var(--primary);
            color: white;

            border-radius: 10px;

            font-size: 13px;
            font-weight: 700;

            transition: var(--transition);
        }

        .add-cart:hover {
            background: var(--accent);
        }

        .add-cart.added {
            background: var(--success);
        }

        /* =========================================================
           DEAL
        ========================================================= */

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;

            overflow: hidden;

            background: white;

            border: 1px solid var(--border);

            border-radius: var(--radius);

            box-shadow: var(--shadow);
        }

        .deal-image {
            min-height: 370px;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            display: flex;
            flex-direction: column;
            justify-content: center;

            padding: 45px;
        }

        .deal-tag {
            align-self: flex-start;

            padding: 5px 13px;

            background: var(--accent-light);
            color: var(--accent);

            border-radius: 999px;

            font-size: 11px;
            font-weight: 800;

            text-transform: uppercase;

            margin-bottom: 15px;
        }

        .deal-content h3 {
            font-size: 31px;
            margin-bottom: 8px;
        }

        .deal-content p {
            color: var(--muted);
            font-size: 14px;
        }

        .deal-price {
            margin-top: 15px;

            font-size: 32px;
            font-weight: 800;
        }

        .deal-price del {
            margin-left: 8px;

            font-size: 17px;
            font-weight: 400;

            color: var(--muted);
        }

        .timer {
            display: flex;
            gap: 10px;

            margin: 22px 0;
        }

        .timer-box {
            min-width: 64px;

            padding: 9px;

            text-align: center;

            border-radius: 10px;

            background: var(--primary);
            color: white;
        }

        .timer-box strong {
            display: block;
            font-size: 21px;
        }

        .timer-box span {
            font-size: 9px;
            opacity: .65;
            text-transform: uppercase;
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .reviews {
            display: flex;
            gap: 18px;

            overflow-x: auto;

            padding: 5px 2px 15px;
        }

        .review {
            flex: 0 0 320px;

            padding: 25px;

            background: white;

            border: 1px solid var(--border);

            border-radius: var(--radius);

            box-shadow: var(--shadow);
        }

        .review-stars {
            color: #f4a623;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }

        .review-text {
            font-size: 14px;
            line-height: 1.65;
            margin-bottom: 18px;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .review-user img {
            width: 42px;
            height: 42px;

            border-radius: 50%;

            object-fit: cover;
        }

        .review-user strong {
            display: block;
            font-size: 13px;
        }

        .review-user span {
            font-size: 11px;
            color: var(--muted);
        }

        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 30px;

            padding: 45px;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    #30304a
                );

            border-radius: var(--radius);

            color: white;
        }

        .newsletter h3 {
            font-size: 26px;
        }

        .newsletter p {
            margin-top: 4px;
            color: rgba(255,255,255,.65);
            font-size: 13px;
        }

        .newsletter-form {
            display: flex;
            gap: 8px;

            width: 450px;
            max-width: 100%;
        }

        .newsletter-form input {
            flex: 1;

            min-width: 0;

            padding: 13px 17px;

            border: 0;
            outline: 0;

            border-radius: 999px;

            background: rgba(255,255,255,.12);

            color: white;
        }

        .newsletter-form input::placeholder {
            color: rgba(255,255,255,.5);
        }

        #newsletterMsg {
            margin-top: 8px;
            font-size: 12px;
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            padding: 50px 0 25px;
            background: white;

            border-top: 1px solid var(--border);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;

            gap: 40px;

            margin-bottom: 35px;
        }

        .footer-brand p {
            max-width: 320px;

            margin-top: 10px;

            color: var(--muted);
            font-size: 13px;
            line-height: 1.7;
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 17px;
        }

        .socials a {
            width: 36px;
            height: 36px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: #f1f2f5;
            color: var(--muted);

            transition: var(--transition);
        }

        .socials a:hover {
            background: var(--accent);
            color: white;
        }

        .footer-col h4 {
            font-size: 13px;
            margin-bottom: 12px;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col li {
            margin-bottom: 7px;
        }

        .footer-col a {
            color: var(--muted);
            font-size: 13px;
        }

        .footer-col a:hover {
            color: var(--accent);
        }

        .copyright {
            padding-top: 20px;

            border-top: 1px solid var(--border);

            text-align: center;

            color: #a0a2aa;

            font-size: 12px;
        }

        /* =========================================================
           CART DRAWER
        ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;

            z-index: 1999;

            background: rgba(0,0,0,.45);

            opacity: 0;
            visibility: hidden;

            transition: var(--transition);
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;

            top: 0;
            right: 0;

            z-index: 2000;

            width: 420px;
            max-width: 100%;

            height: 100vh;

            background: white;

            display: flex;
            flex-direction: column;

            transform: translateX(100%);

            transition: .35s ease;

            box-shadow: -10px 0 40px rgba(0,0,0,.12);
        }

        .cart-drawer.open {
            transform: translateX(0);
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;

            padding: 22px;

            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-size: 18px;
        }

        .close-cart {
            width: 38px;
            height: 38px;

            border-radius: 50%;

            background: #f2f3f5;
        }

        .cart-items {
            flex: 1;

            overflow-y: auto;

            padding: 18px;
        }

        .empty-cart {
            height: 100%;

            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;

            color: var(--muted);

            text-align: center;
        }

        .empty-cart i {
            font-size: 45px;
            margin-bottom: 15px;
            color: #d5d7dd;
        }

        .cart-item {
            display: flex;
            gap: 12px;

            padding: 13px 0;

            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 75px;
            height: 75px;

            border-radius: 10px;

            object-fit: cover;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info h4 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .cart-item-price {
            font-size: 13px;
            font-weight: 800;
        }

        .quantity {
            display: flex;
            align-items: center;

            gap: 8px;

            margin-top: 9px;
        }

        .quantity button {
            width: 26px;
            height: 26px;

            border-radius: 7px;

            background: #f0f1f4;
        }

        .quantity span {
            min-width: 15px;
            text-align: center;

            font-size: 12px;
            font-weight: 700;
        }

        .remove-item {
            align-self: flex-start;

            color: #aaa;

            background: transparent;
        }

        .remove-item:hover {
            color: var(--accent);
        }

        .cart-footer {
            padding: 20px;

            border-top: 1px solid var(--border);
        }

        .subtotal {
            display: flex;
            justify-content: space-between;

            margin-bottom: 15px;

            font-weight: 800;
        }

        .checkout-btn {
            width: 100%;
            padding: 14px;

            background: var(--accent);
            color: white;

            border-radius: 12px;

            font-weight: 800;
        }

        .checkout-btn:hover {
            background: var(--accent-dark);
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast-container {
            position: fixed;

            right: 20px;
            bottom: 20px;

            z-index: 5000;

            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .toast {
            min-width: 270px;

            display: flex;
            align-items: center;
            gap: 10px;

            padding: 13px 17px;

            background: var(--primary);
            color: white;

            border-radius: 12px;

            box-shadow: var(--shadow-hover);

            animation: toastIn .3s ease;
        }

        .toast i {
            color: #72d5c8;
        }

        @keyframes toastIn {
            from {
                opacity: 0;
                transform: translateY(15px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* =========================================================
           NO RESULTS
        ========================================================= */

        .no-results {
            grid-column: 1 / -1;

            padding: 70px 20px;

            text-align: center;

            color: var(--muted);
        }

        .no-results i {
            font-size: 40px;
            color: #d0d2d8;

            margin-bottom: 12px;
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media(max-width:1100px) {

            .products {
                grid-template-columns: repeat(3,1fr);
            }

            .categories {
                grid-template-columns: repeat(3,1fr);
            }

            nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
                place-items: center;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:800px) {

            .header-inner {
                gap: 8px;
            }

            .search-box {
                width: 160px;
            }

            .hero {
                min-height: 440px;
                margin: 12px 12px 0;
            }

            .hero h1 {
                font-size: 40px;
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 270px;
            }

            .newsletter {
                flex-direction: column;
                align-items: flex-start;
            }

            .newsletter-form {
                width: 100%;
            }
        }

        @media(max-width:600px) {

            .container {
                padding: 0 15px;
            }

            .section {
                padding: 45px 0;
            }

            .header-inner {
                min-height: 65px;
            }

            .brand {
                font-size: 18px;
            }

            .brand i {
                font-size: 20px;
            }

            .search-box {
                width: 125px;
            }

            .search-box input {
                font-size: 11px;
            }

            .header-right {
                gap: 2px;
            }

            .icon-btn {
                width: 36px;
                height: 36px;
            }

            .hero {
                min-height: 390px;
            }

            .hero h1 {
                font-size: 31px;
            }

            .hero p {
                font-size: 14px;
            }

            .hero-stat {
                gap: 18px;
            }

            .hero-stat strong {
                font-size: 16px;
            }

            .categories {
                grid-template-columns: repeat(2,1fr);
                gap: 10px;
            }

            .products {
                grid-template-columns: repeat(2,1fr);
                gap: 10px;
            }

            .product-info {
                padding: 12px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 15px;
            }

            .product-footer {
                padding: 0 12px 12px;
            }

            .add-cart {
                font-size: 11px;
                padding: 9px;
            }

            .section-title h2 {
                font-size: 23px;
            }

            .deal-content {
                padding: 25px 20px;
            }

            .deal-content h3 {
                font-size: 24px;
            }

            .deal-price {
                font-size: 27px;
            }

            .newsletter {
                padding: 28px 20px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input,
            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
        }

        @media(max-width:400px) {

            .search-box {
                width: 105px;
            }

            .hero h1 {
                font-size: 27px;
            }

            .product-badge {
                font-size: 8px;
            }

            .wishlist-btn {
                width: 32px;
                height: 32px;
            }

            .category-card {
                padding: 18px 8px;
            }

            .category-icon {
                width: 45px;
                height: 45px;
                font-size: 18px;
            }
        }
    

/* =========================================================
   NEXUSSHOP VISUAL REFRESH — attractive modern storefront
   ========================================================= */
:root{
    --bg:#f4f7fb;
    --white:#fff;
    --primary:#111827;
    --primary-light:#243047;
    --accent:#6c5ce7;
    --accent-dark:#5546cf;
    --accent-light:#eeeaff;
    --muted:#667085;
    --border:#e6eaf0;
    --success:#12b981;
    --warning:#ffb020;
    --radius:20px;
    --radius-sm:14px;
    --shadow:0 10px 35px rgba(31,41,55,.08);
    --shadow-hover:0 22px 55px rgba(31,41,55,.16);
    --container:1280px;
}

body{
    background:
      radial-gradient(circle at 10% 0%, rgba(108,92,231,.08), transparent 28%),
      radial-gradient(circle at 95% 15%, rgba(18,185,129,.06), transparent 25%),
      var(--bg);
    color:var(--primary);
}

/* smooth page feel */
html{scroll-padding-top:100px}
::selection{background:rgba(108,92,231,.2);color:var(--primary)}

/* Header / navigation */
header{
    position:sticky !important;
    top:0;
    z-index:1000;
    background:rgba(255,255,255,.88) !important;
    backdrop-filter:blur(18px);
    -webkit-backdrop-filter:blur(18px);
    border-bottom:1px solid rgba(230,234,240,.8) !important;
    box-shadow:0 5px 24px rgba(17,24,39,.04);
}

.logo,
.brand{
    letter-spacing:-.04em;
}

.logo span,
.brand span{
    color:var(--accent) !important;
}

nav a{
    position:relative;
    transition:.25s ease !important;
}
nav a:hover{color:var(--accent) !important}
nav a.active{color:var(--accent) !important}
nav a.active::after{
    content:"";
    position:absolute;
    left:50%;
    bottom:-10px;
    width:22px;
    height:3px;
    transform:translateX(-50%);
    border-radius:99px;
    background:var(--accent);
}

/* Hero */
.hero{
    position:relative;
    overflow:hidden;
    background:
      linear-gradient(135deg,rgba(108,92,231,.98),rgba(79,70,229,.88) 48%,rgba(17,24,39,.96));
    border-radius:0 0 34px 34px;
    color:#fff;
    box-shadow:0 18px 50px rgba(76,63,180,.18);
}
.hero::before,
.hero::after{
    content:"";
    position:absolute;
    border-radius:50%;
    pointer-events:none;
}
.hero::before{
    width:420px;height:420px;
    right:-120px;top:-170px;
    background:rgba(255,255,255,.10);
}
.hero::after{
    width:300px;height:300px;
    left:-120px;bottom:-180px;
    background:rgba(18,185,129,.14);
}
.hero-content{position:relative;z-index:2}
.hero h1{
    font-size:clamp(2.6rem,6vw,5.3rem) !important;
    line-height:.98 !important;
    letter-spacing:-.055em !important;
    text-shadow:0 10px 35px rgba(0,0,0,.15);
}
.hero p{color:rgba(255,255,255,.82) !important;max-width:650px}
.hero .btn-primary{
    background:#fff !important;
    color:#4f46e5 !important;
    box-shadow:0 12px 28px rgba(0,0,0,.16);
}
.hero .btn-primary:hover{transform:translateY(-3px);box-shadow:0 18px 35px rgba(0,0,0,.22)}
.hero .btn-secondary,
.hero .btn-outline{
    border-color:rgba(255,255,255,.5) !important;
    color:#fff !important;
    background:rgba(255,255,255,.08) !important;
    backdrop-filter:blur(10px);
}

/* Section headings */
section{position:relative}
.section-title h2,
.section-header h2{
    letter-spacing:-.04em !important;
}
.section-title p,
.section-header p{color:var(--muted)}

/* Category cards */
.category-card{
    position:relative;
    overflow:hidden;
    border:1px solid rgba(230,234,240,.9) !important;
    background:rgba(255,255,255,.82) !important;
    border-radius:22px !important;
    box-shadow:var(--shadow) !important;
    transition:transform .3s ease,box-shadow .3s ease,border-color .3s ease !important;
}
.category-card::after{
    content:"";
    position:absolute;
    width:90px;height:90px;
    right:-30px;bottom:-35px;
    border-radius:50%;
    background:var(--accent-light);
    opacity:.65;
}
.category-card:hover{
    transform:translateY(-8px);
    box-shadow:var(--shadow-hover) !important;
    border-color:rgba(108,92,231,.3) !important;
}
.category-icon{
    background:linear-gradient(135deg,#eeeaff,#f7f5ff) !important;
    color:var(--accent) !important;
    box-shadow:inset 0 0 0 1px rgba(108,92,231,.08);
}

/* Filter bar */
.filter-bar,
.filters{
    background:rgba(255,255,255,.76) !important;
    border:1px solid var(--border);
    border-radius:18px;
    padding:8px;
    box-shadow:0 8px 25px rgba(31,41,55,.05);
}
.filter-btn{
    border-radius:12px !important;
    transition:.22s ease !important;
}
.filter-btn:hover{color:var(--accent) !important;background:var(--accent-light) !important}
.filter-btn.active{
    background:var(--accent) !important;
    color:#fff !important;
    box-shadow:0 7px 18px rgba(108,92,231,.25);
}

/* Product grid/cards */
.products-grid{align-items:stretch}
.product-card{
    position:relative;
    overflow:hidden;
    background:rgba(255,255,255,.94) !important;
    border:1px solid rgba(230,234,240,.95) !important;
    border-radius:24px !important;
    box-shadow:var(--shadow) !important;
    transition:transform .3s cubic-bezier(.2,.8,.2,1),box-shadow .3s ease,border-color .3s ease !important;
}
.product-card:hover{
    transform:translateY(-9px);
    box-shadow:var(--shadow-hover) !important;
    border-color:rgba(108,92,231,.25) !important;
}
.product-image{
    background:linear-gradient(145deg,#f8f9fc,#eef1f7) !important;
    overflow:hidden;
}
.product-image img{transition:transform .55s cubic-bezier(.2,.8,.2,1) !important}
.product-card:hover .product-image img{transform:scale(1.07)}
.product-info{padding:20px !important}
.product-category{
    color:var(--accent) !important;
    font-weight:800 !important;
    letter-spacing:.06em;
    text-transform:uppercase;
    font-size:11px !important;
}
.product-title{letter-spacing:-.025em}
.rating{color:#f59e0b !important}
.product-badge{
    border-radius:999px !important;
    box-shadow:0 7px 18px rgba(0,0,0,.12);
}
.wishlist-btn{
    background:rgba(255,255,255,.94) !important;
    box-shadow:0 7px 20px rgba(17,24,39,.12) !important;
    transition:.25s ease !important;
}
.wishlist-btn:hover{transform:scale(1.08);color:#ef476f !important}
.wishlist-btn.active{color:#ef476f !important}

/* Buttons */
.btn{
    box-shadow:0 7px 18px rgba(17,24,39,.07);
}
.btn-primary{
    background:linear-gradient(135deg,var(--accent),#8b5cf6) !important;
    border:0 !important;
}
.btn-primary:hover{
    background:linear-gradient(135deg,var(--accent-dark),#7c3aed) !important;
    transform:translateY(-2px);
}

/* Deals section */
#deals,
.deals-section{
    border-radius:28px;
    overflow:hidden;
}
.deal-card,
.flash-deal{
    border-radius:28px !important;
    background:linear-gradient(135deg,#111827,#242b45) !important;
    box-shadow:0 18px 45px rgba(17,24,39,.16) !important;
}

/* Cart drawer */
.cart-drawer{
    box-shadow:-20px 0 55px rgba(17,24,39,.18) !important;
}
.cart-overlay{backdrop-filter:blur(3px)}

/* Toast */
.toast{
    border:1px solid rgba(255,255,255,.35) !important;
    box-shadow:0 16px 40px rgba(17,24,39,.18) !important;
    border-radius:14px !important;
}

/* Newsletter */
.newsletter,
.newsletter-section{
    border-radius:28px !important;
    background:linear-gradient(135deg,#eef2ff,#f5f3ff) !important;
    border:1px solid #e2defe !important;
}

/* Footer */
footer{
    background:#101827 !important;
    color:rgba(255,255,255,.8) !important;
}
footer a:hover{color:#a99cff !important}

/* Focus accessibility */
button:focus-visible,
a:focus-visible,input:focus-visible,select:focus-visible{
    outline:3px solid rgba(108,92,231,.35) !important;
    outline-offset:3px;
}

/* Mobile polish */
@media(max-width:768px){
    .container{padding-left:16px !important;padding-right:16px !important}
    .hero{border-radius:0 0 24px 24px}
    .hero h1{font-size:2.65rem !important}
    .product-card{border-radius:18px !important}
    .category-card{border-radius:18px !important}
}


.nexus-announcement{position:relative;z-index:1001;}
@media(max-width:600px){.nexus-announcement{font-size:11px;padding:8px 10px;}}
</style>
</head>

<body>
    <div class="nexus-announcement" style="background:#111827;color:#fff;text-align:center;padding:9px 16px;font-size:13px;font-weight:700;letter-spacing:.01em;">
        <i class="fas fa-sparkles" style="color:#a99cff;margin-right:7px;"></i> Fresh finds, limited deals &amp; everyday essentials — all in one place.
    </div>

<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:10px;">

            <button
                class="mobile-toggle"
                id="mobileToggle"
                aria-label="Open menu"
            >
                <i class="fas fa-bars"></i>
            </button>

            <a href="#" class="brand">
                <i class="fas fa-store"></i>

                <span>
                    Nexus<span class="accent">Shop</span>
                </span>
            </a>

        </div>

        <nav>

            <ul>

                <li>
                    <a href="#" class="active">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fas fa-th-large"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fas fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-bolt"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#reviews">
                        <i class="fas fa-star"></i>
                        Reviews
                    </a>
                </li>

            </ul>

        </nav>

        <div class="header-right">

            <div class="search-box">

                <i class="fas fa-search"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products"
                >

            </div>

            <button
                class="icon-btn"
                id="accountBtn"
                title="Account"
            >
                <i class="far fa-user"></i>
            </button>

            <button
                class="icon-btn"
                id="wishlistHeaderBtn"
                title="Wishlist"
            >
                <i class="far fa-heart"></i>
            </button>

            <button
                class="icon-btn"
                id="cartBtn"
                title="Shopping Cart"
            >
                <i class="fas fa-shopping-bag"></i>

                <span
                    class="cart-count"
                    id="cartCount"
                >
                    0
                </span>

            </button>

        </div>

    </div>

    <!-- Mobile menu -->

    <div id="mobileMenu">

        <div class="container">

            <ul>

                <li>
                    <a href="#">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fas fa-th-large"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fas fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-bolt"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#reviews">
                        <i class="fas fa-star"></i>
                        Reviews
                    </a>
                </li>

            </ul>

        </div>

    </div>

</header>


<!-- =========================================================
     HERO
========================================================= -->

<main>

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-badge">

                <i class="fas fa-sparkles"></i>

                New Collection 2026

            </div>

            <h1>
                Discover Premium
                <br>
                Essentials
            </h1>

            <p>
                Curated fashion, technology and accessories
                designed to make everyday life better.
            </p>

            <div class="hero-actions">

                <button
                    class="btn btn-primary"
                    id="shopNow"
                >
                    Shop Now

                    <i class="fas fa-arrow-right"></i>

                </button>

                <button
                    class="btn"
                    id="exploreDeals"
                    style="background:rgba(255,255,255,.12);color:white;border:1px solid rgba(255,255,255,.2);"
                >
                    <i class="fas fa-bolt"></i>

                    Explore Deals

                </button>

            </div>

            <div class="hero-stat">

                <div>
                    <strong>50K+</strong>
                    <span>Happy Customers</span>
                </div>

                <div>
                    <strong>4.9/5</strong>
                    <span>Average Rating</span>
                </div>

                <div>
                    <strong>Free</strong>
                    <span>First Order Shipping</span>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section
    class="section"
    id="categories"
>

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>Browse Categories</h2>

                <p>
                    Find exactly what you're looking for
                </p>

            </div>

            <a href="#products" class="view-all">
                View Products
                <i class="fas fa-arrow-right"></i>
            </a>

        </div>

        <div
            class="categories"
            id="categoriesGrid"
        ></div>

    </div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section
    class="section"
    id="products"
>

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>Trending Now</h2>

                <p>
                    Popular products loved by our customers
                </p>

            </div>

            <span
                id="productCount"
                class="view-all"
            >
                8 Products
            </span>

        </div>

        <div
            class="filter-bar"
            id="filterBar"
        >

            <button
                class="filter-btn active"
                data-category="All"
            >
                All
            </button>

        </div>

        <div
            class="products"
            id="productsGrid"
        ></div>

    </div>

</section>


<!-- =========================================================
     DEAL
========================================================= -->

<section
    class="section"
    id="deals"
>

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>⚡ Flash Deal</h2>

                <p>
                    Limited-time offer
                </p>

            </div>

        </div>

        <div class="deal">

            <div class="deal-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
                    alt="MacBook Air"
                >

            </div>

            <div class="deal-content">

                <span class="deal-tag">
                    Limited Offer
                </span>

                <h3>
                    MacBook Air M2
                </h3>

                <p>
                    Thin, light and incredibly powerful.
                    Experience Apple's M2 performance.
                </p>

                <div class="deal-price">
                    $999
                    <del>$1,199</del>
                </div>

                <div class="timer">

                    <div class="timer-box">
                        <strong id="dealDays">0</strong>
                        <span>Days</span>
                    </div>

                    <div class="timer-box">
                        <strong id="dealHours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="timer-box">
                        <strong id="dealMinutes">00</strong>
                        <span>Mins</span>
                    </div>

                    <div class="timer-box">
                        <strong id="dealSeconds">00</strong>
                        <span>Secs</span>
                    </div>

                </div>

                <button
                    class="btn btn-primary"
                    id="buyDeal"
                >
                    <i class="fas fa-cart-plus"></i>
                    Add to Cart
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section
    class="section"
    id="reviews"
>

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>What Customers Say</h2>

                <p>
                    Real reviews from real customers
                </p>

            </div>

        </div>

        <div
            class="reviews"
            id="reviewsList"
        ></div>

    </div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>

                <h3>
                    Stay in the Loop
                </h3>

                <p>
                    Get exclusive offers and new arrivals.
                </p>

                <div id="newsletterMsg"></div>

            </div>

            <form
                class="newsletter-form"
                id="newsletterForm"
            >

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email"
                    required
                >

                <button class="btn btn-primary">
                    <i class="fas fa-paper-plane"></i>
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <div class="brand">

                    <i class="fas fa-store"></i>

                    <span>
                        Nexus<span class="accent">Shop</span>
                    </span>

                </div>

                <p>
                    A modern e-commerce experience
                    designed for premium products,
                    easy discovery and simple shopping.
                </p>

                <div class="socials">

                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>

                </div>

            </div>

            <div class="footer-col">

                <h4>Company</h4>

                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Press</a></li>
                </ul>

            </div>

            <div class="footer-col">

                <h4>Support</h4>

                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>

            </div>

            <div class="footer-col">

                <h4>Legal</h4>

                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Cookies</a></li>
                </ul>

            </div>

        </div>

        <div class="copyright">

            © <span id="year"></span>
            NexusShop. All rights reserved.

        </div>

    </div>

</footer>


<!-- =========================================================
     CART OVERLAY
========================================================= -->

<div
    class="overlay"
    id="cartOverlay"
></div>


<!-- =========================================================
     CART DRAWER
========================================================= -->

<aside
    class="cart-drawer"
    id="cartDrawer"
>

    <div class="cart-header">

        <h3>
            Shopping Cart
        </h3>

        <button
            class="close-cart"
            id="closeCart"
        >
            <i class="fas fa-times"></i>
        </button>

    </div>

    <div
        class="cart-items"
        id="cartItems"
    ></div>

    <div class="cart-footer">

        <div class="subtotal">

            <span>
                Subtotal
            </span>

            <span id="cartSubtotal">
                $0
            </span>

        </div>

        <button
            class="checkout-btn"
            id="checkoutBtn"
        >
            Proceed to Checkout
            <i class="fas fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- =========================================================
     TOASTS
========================================================= -->

<div
    class="toast-container"
    id="toastContainer"
></div>


<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [
    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-alt",
        count: 24
    },
    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },
    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-tshirt",
        count: 42
    },
    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones",
        count: 31
    },
    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    },
    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch",
        count: 39
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
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
        category: "Smartphones"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "",
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
        category: "Laptops"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",
        category: "Accessories"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",
        category: "Footwear"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",
        category: "Gadgets"
    },

    {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "",
        img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
        category: "Accessories"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",
        category: "Accessories"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",
        category: "Gadgets"
    }

];


const TESTIMONIALS = [

    {
        name: "Ava Martin",
        role: "Verified Buyer",
        avatar: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80",
        text: "Fast shipping and excellent support. The product exceeded my expectations!",
        stars: 5
    },

    {
        name: "Michael Lee",
        role: "Frequent Shopper",
        avatar: "https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80",
        text: "Great selection and smooth checkout. Will definitely shop again.",
        stars: 4
    },

    {
        name: "Sophia Chen",
        role: "Designer",
        avatar: "https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80",
        text: "Love the quality and packaging. Everything arrived in perfect condition.",
        stars: 5
    },

    {
        name: "James Wilson",
        role: "Tech Enthusiast",
        avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80",
        text: "Amazing prices on electronics. The M2 MacBook deal was unbeatable.",
        stars: 5
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];

let wishlist = [];

let activeCategory = "All";


/* =========================================================
   DOM
========================================================= */

const productsGrid =
    document.getElementById("productsGrid");

const categoriesGrid =
    document.getElementById("categoriesGrid");

const filterBar =
    document.getElementById("filterBar");

const productCount =
    document.getElementById("productCount");

const searchInput =
    document.getElementById("searchInput");

const cartBtn =
    document.getElementById("cartBtn");

const cartCount =
    document.getElementById("cartCount");

const cartDrawer =
    document.getElementById("cartDrawer");

const cartOverlay =
    document.getElementById("cartOverlay");

const closeCart =
    document.getElementById("closeCart");

const cartItems =
    document.getElementById("cartItems");

const cartSubtotal =
    document.getElementById("cartSubtotal");

const toastContainer =
    document.getElementById("toastContainer");


/* =========================================================
   ESCAPE HTML
========================================================= */

function escapeHtml(value) {

    return String(value).replace(
        /[&<>"']/g,
        character => ({
            "&": "&amp;",
            "<": "&lt;",
            ">": "&gt;",
            '"': "&quot;",
            "'": "&#39;"
        })[character]
    );

}


/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const card =
            document.createElement("div");

        card.className = "category-card";

        card.innerHTML = `

            <div class="category-icon">

                <i class="fas ${category.icon}"></i>

            </div>

            <h4>
                ${escapeHtml(category.name)}
            </h4>

            <span>
                ${category.count} items
            </span>

        `;

        card.addEventListener(
            "click",
            () => {

                activeCategory =
                    category.name;

                updateFilterButtons();

                renderProducts();

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );

        categoriesGrid.appendChild(card);

    });

}


/* =========================================================
   FILTER BUTTONS
========================================================= */

function renderFilterButtons() {

    CATEGORIES.forEach(category => {

        const button =
            document.createElement("button");

        button.className = "filter-btn";

        button.dataset.category =
            category.name;

        button.textContent =
            category.name;

        filterBar.appendChild(button);

    });

    filterBar
        .querySelectorAll(".filter-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    activeCategory =
                        button.dataset.category;

                    searchInput.value = "";

                    updateFilterButtons();

                    renderProducts();

                }
            );

        });

}


function updateFilterButtons() {

    filterBar
        .querySelectorAll(".filter-btn")
        .forEach(button => {

            button.classList.toggle(
                "active",
                button.dataset.category ===
                activeCategory
            );

        });

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts() {

    const search =
        searchInput.value
            .trim()
            .toLowerCase();

    let products =
        PRODUCTS.filter(product => {

            const matchesCategory =
                activeCategory === "All" ||
                product.category === activeCategory;

            const matchesSearch =
                !search ||
                product.title
                    .toLowerCase()
                    .includes(search) ||
                product.category
                    .toLowerCase()
                    .includes(search);

            return matchesCategory &&
                   matchesSearch;

        });


    productCount.textContent =
        `${products.length} Product${products.length !== 1 ? "s" : ""}`;


    productsGrid.innerHTML = "";


    if (!products.length) {

        productsGrid.innerHTML = `

            <div class="no-results">

                <i class="fas fa-search"></i>

                <h3>
                    No products found
                </h3>

                <p>
                    Try another search or category.
                </p>

            </div>

        `;

        return;
    }


    products.forEach(product => {

        const card =
            document.createElement("article");

        card.className =
            "product-card";

        const stars =
            "★".repeat(Math.round(product.rating)) +
            "☆".repeat(5 - Math.round(product.rating));

        const oldPrice =
            product.oldPrice
                ? `
                    <span class="old-price">
                        $${product.oldPrice.toLocaleString()}
                    </span>
                `
                : "";


        const isWishlisted =
            wishlist.includes(product.id);


        card.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.img}"
                    alt="${escapeHtml(product.title)}"
                    loading="lazy"
                >

                ${
                    product.badge
                        ? `
                            <span
                                class="product-badge ${
                                    product.badge === "Sale"
                                        ? "sale"
                                        : ""
                                }"
                            >
                                ${product.badge}
                            </span>
                        `
                        : ""
                }

                <button
                    class="wishlist-btn ${
                        isWishlisted ? "active" : ""
                    }"
                    data-wishlist="${product.id}"
                    aria-label="Wishlist"
                >
                    <i class="${
                        isWishlisted
                            ? "fas"
                            : "far"
                    } fa-heart"></i>
                </button>

            </div>

            <div class="product-info">

                <div class="product-category">
                    ${escapeHtml(product.category)}
                </div>

                <h3 class="product-title">
                    ${escapeHtml(product.title)}
                </h3>

                <div class="rating">

                    ${stars}

                    <span>
                        (${product.reviews})
                    </span>

                </div>

                <div class="price-row">

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    ${oldPrice}

                </div>

            </div>

            <div class="product-footer">

                <button
                    class="add-cart"
                    data-product="${product.id}"
                >
                    <i class="fas fa-cart-plus"></i>
                    Add to Cart
                </button>

            </div>

        `;


        productsGrid.appendChild(card);

    });


    attachProductEvents();

}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function attachProductEvents() {

    document
        .querySelectorAll(".add-cart")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const id =
                        Number(button.dataset.product);

                    addToCart(id);

                    button.innerHTML =
                        `<i class="fas fa-check"></i> Added`;

                    button.classList.add("added");

                    setTimeout(() => {

                        button.innerHTML =
                            `<i class="fas fa-cart-plus"></i> Add to Cart`;

                        button.classList.remove("added");

                    }, 1200);

                }
            );

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener(
                "click",
                event => {

                    event.stopPropagation();

                    const id =
                        Number(button.dataset.wishlist);

                    toggleWishlist(id);

                }
            );

        });

}


/* =========================================================
   CART
========================================================= */

function addToCart(productId) {

    const product =
        PRODUCTS.find(
            item => item.id === productId
        );

    if (!product) return;


    const existing =
        cart.find(
            item => item.id === productId
        );


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            id: productId,
            quantity: 1
        });

    }


    updateCart();

    showToast(
        `${product.title} added to cart`
    );

}


function removeFromCart(productId) {

    cart =
        cart.filter(
            item => item.id !== productId
        );

    updateCart();

}


function changeQuantity(
    productId,
    change
) {

    const item =
        cart.find(
            item => item.id === productId
        );

    if (!item) return;


    item.quantity += change;


    if (item.quantity <= 0) {

        removeFromCart(productId);

        return;

    }


    updateCart();

}


/* =========================================================
   UPDATE CART
========================================================= */

function updateCart() {

    const totalQuantity =
        cart.reduce(
            (sum, item) =>
                sum + item.quantity,
            0
        );


    cartCount.textContent =
        totalQuantity;


    cartCount.style.transform =
        "scale(1.35)";


    setTimeout(() => {

        cartCount.style.transform =
            "scale(1)";

    }, 180);


    renderCart();

}


/* =========================================================
   RENDER CART
========================================================= */

function renderCart() {

    if (!cart.length) {

        cartItems.innerHTML = `

            <div class="empty-cart">

                <i class="fas fa-shopping-bag"></i>

                <h3>
                    Your cart is empty
                </h3>

                <p>
                    Add something you love.
                </p>

            </div>

        `;

        cartSubtotal.textContent =
            "$0";

        return;

    }


    cartItems.innerHTML = "";


    let subtotal = 0;


    cart.forEach(item => {

        const product =
            PRODUCTS.find(
                product => product.id === item.id
            );

        if (!product) return;


        subtotal +=
            product.price *
            item.quantity;


        const element =
            document.createElement("div");

        element.className =
            "cart-item";


        element.innerHTML = `

            <img
                src="${product.img}"
                alt="${escapeHtml(product.title)}"
            >

            <div class="cart-item-info">

                <h4>
                    ${escapeHtml(product.title)}
                </h4>

                <div class="cart-item-price">
                    $${product.price.toLocaleString()}
                </div>

                <div class="quantity">

                    <button
                        data-minus="${product.id}"
                    >
                        −
                    </button>

                    <span>
                        ${item.quantity}
                    </span>

                    <button
                        data-plus="${product.id}"
                    >
                        +
                    </button>

                </div>

            </div>

            <button
                class="remove-item"
                data-remove="${product.id}"
                title="Remove"
            >
                <i class="fas fa-trash"></i>
            </button>

        `;


        cartItems.appendChild(element);

    });


    cartSubtotal.textContent =
        `$${subtotal.toLocaleString()}`;


    attachCartEvents();

}


/* =========================================================
   CART EVENTS
========================================================= */

function attachCartEvents() {

    document
        .querySelectorAll("[data-minus]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    changeQuantity(
                        Number(button.dataset.minus),
                        -1
                    );

                }
            );

        });


    document
        .querySelectorAll("[data-plus]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    changeQuantity(
                        Number(button.dataset.plus),
                        1
                    );

                }
            );

        });


    document
        .querySelectorAll("[data-remove]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    removeFromCart(
                        Number(button.dataset.remove)
                    );

                    showToast(
                        "Item removed from cart"
                    );

                }
            );

        });

}


/* =========================================================
   CART DRAWER
========================================================= */

function openCart() {

    cartDrawer.classList.add("open");

    cartOverlay.classList.add("show");

    document.body.classList.add("no-scroll");

}


function closeCartDrawer() {

    cartDrawer.classList.remove("open");

    cartOverlay.classList.remove("show");

    document.body.classList.remove("no-scroll");

}


cartBtn.addEventListener(
    "click",
    openCart
);


closeCart.addEventListener(
    "click",
    closeCartDrawer
);


cartOverlay.addEventListener(
    "click",
    closeCartDrawer
);


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(productId) {

    const product =
        PRODUCTS.find(
            item => item.id === productId
        );


    if (wishlist.includes(productId)) {

        wishlist =
            wishlist.filter(
                id => id !== productId
            );

        showToast(
            `${product.title} removed from wishlist`
        );

    } else {

        wishlist.push(productId);

        showToast(
            `${product.title} added to wishlist`
        );

    }


    renderProducts();

}


/* =========================================================
   SEARCH
========================================================= */

searchInput.addEventListener(
    "input",
    () => {

        if (searchInput.value.trim()) {

            activeCategory = "All";

            updateFilterButtons();

        }

        renderProducts();

    }
);


/* =========================================================
   HERO BUTTONS
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


document
    .getElementById("exploreDeals")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* =========================================================
   FLASH DEAL
========================================================= */

(function setupTimer() {

    const target =
        new Date(
            Date.now() +
            (
                24 * 60 * 60 * 1000
            ) +
            (
                36 * 60 * 1000
            )
        );


    function tick() {

        const difference =
            target - new Date();


        if (difference <= 0) {

            document.getElementById(
                "dealDays"
            ).textContent = "0";

            document.getElementById(
                "dealHours"
            ).textContent = "00";

            document.getElementById(
                "dealMinutes"
            ).textContent = "00";

            document.getElementById(
                "dealSeconds"
            ).textContent = "00";

            return;

        }


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (
                    difference /
                    (1000 * 60 * 60)
                ) % 24
            );


        const minutes =
            Math.floor(
                (
                    difference /
                    (1000 * 60)
                ) % 60
            );


        const seconds =
            Math.floor(
                (
                    difference /
                    1000
                ) % 60
            );


        document.getElementById(
            "dealDays"
        ).textContent =
            days;


        document.getElementById(
            "dealHours"
        ).textContent =
            String(hours).padStart(2,"0");


        document.getElementById(
            "dealMinutes"
        ).textContent =
            String(minutes).padStart(2,"0");


        document.getElementById(
            "dealSeconds"
        ).textContent =
            String(seconds).padStart(2,"0");

    }


    tick();

    setInterval(
        tick,
        1000
    );

})();


/* =========================================================
   DEAL CART
========================================================= */

document
    .getElementById("buyDeal")
    .addEventListener(
        "click",
        () => {

            addToCart(2);

            openCart();

        }
    );


/* =========================================================
   REVIEWS
========================================================= */

function renderReviews() {

    const container =
        document.getElementById("reviewsList");


    TESTIMONIALS.forEach(review => {

        const card =
            document.createElement("article");

        card.className = "review";


        const stars =
            "★".repeat(review.stars) +
            "☆".repeat(5 - review.stars);


        card.innerHTML = `

            <div class="review-stars">
                ${stars}
            </div>

            <p class="review-text">
                “${escapeHtml(review.text)}”
            </p>

            <div class="review-user">

                <img
                    src="${review.avatar}"
                    alt="${escapeHtml(review.name)}"
                    loading="lazy"
                >

                <div>

                    <strong>
                        ${escapeHtml(review.name)}
                    </strong>

                    <span>
                        ${escapeHtml(review.role)}
                    </span>

                </div>

            </div>

        `;


        container.appendChild(card);

    });

}


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();


            const email =
                document
                    .getElementById("newsletterEmail")
                    .value
                    .trim();


            const message =
                document.getElementById(
                    "newsletterMsg"
                );


            if (
                !email ||
                !email.includes("@")
            ) {

                message.textContent =
                    "Please enter a valid email address.";

                message.style.color =
                    "#ff9b9b";

                return;

            }


            message.textContent =
                "🎉 Thanks for subscribing!";

            message.style.color =
                "#79d8ca";


            document
                .getElementById(
                    "newsletterEmail"
                )
                .value = "";


            showToast(
                "You're subscribed!"
            );

        }
    );


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileToggle =
    document.getElementById(
        "mobileToggle"
    );

const mobileMenu =
    document.getElementById(
        "mobileMenu"
    );


mobileToggle.addEventListener(
    "click",
    () => {

        const open =
            mobileMenu.style.display ===
            "block";


        mobileMenu.style.display =
            open ? "none" : "block";


        mobileToggle.innerHTML =
            open
                ? '<i class="fas fa-bars"></i>'
                : '<i class="fas fa-times"></i>';

    }
);


mobileMenu
    .querySelectorAll("a")
    .forEach(link => {

        link.addEventListener(
            "click",
            () => {

                mobileMenu.style.display =
                    "none";

                mobileToggle.innerHTML =
                    '<i class="fas fa-bars"></i>';

            }
        );

    });


/* =========================================================
   ACCOUNT
========================================================= */

document
    .getElementById("accountBtn")
    .addEventListener(
        "click",
        () => {

            showToast(
                "Account feature coming soon"
            );

        }
    );


/* =========================================================
   HEADER WISHLIST
========================================================= */

document
    .getElementById("wishlistHeaderBtn")
    .addEventListener(
        "click",
        () => {

            if (!wishlist.length) {

                showToast(
                    "Your wishlist is empty"
                );

                return;

            }


            activeCategory = "All";

            searchInput.value = "";


            const wishlistProducts =
                PRODUCTS.filter(
                    product =>
                        wishlist.includes(
                            product.id
                        )
                );


            productsGrid.innerHTML = "";


            wishlistProducts.forEach(
                product => {

                    const original =
                        activeCategory;

                    activeCategory = "All";

                    renderProducts();

                    activeCategory = original;

                }
            );


            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* =========================================================
   CHECKOUT
========================================================= */

document
    .getElementById("checkoutBtn")
    .addEventListener(
        "click",
        () => {

            if (!cart.length) {

                showToast(
                    "Your cart is empty"
                );

                return;

            }


            showToast(
                "Checkout is ready to connect"
            );

        }
    );


/* =========================================================
   TOAST
========================================================= */

function showToast(message) {

    const toast =
        document.createElement("div");

    toast.className =
        "toast";


    toast.innerHTML = `

        <i class="fas fa-check-circle"></i>

        <span>
            ${escapeHtml(message)}
        </span>

    `;


    toastContainer.appendChild(toast);


    setTimeout(
        () => {

            toast.style.opacity =
                "0";

            toast.style.transform =
                "translateY(10px)";


            setTimeout(
                () => toast.remove(),
                250
            );

        },
        2500
    );

}


/* =========================================================
   ACTIVE NAVIGATION
========================================================= */

const sections =
    document.querySelectorAll(
        "main section[id]"
    );


window.addEventListener(
    "scroll",
    () => {

        let current = "";


        sections.forEach(section => {

            const top =
                section.offsetTop - 120;

            if (
                window.scrollY >= top
            ) {

                current =
                    section.id;

            }

        });


        document
            .querySelectorAll("nav a")
            .forEach(link => {

                link.classList.remove(
                    "active"
                );


                const href =
                    link.getAttribute("href");


                if (
                    href === `#${current}`
                ) {

                    link.classList.add(
                        "active"
                    );

                }

            });

    }
);


/* =========================================================
   YEAR
========================================================= */

document.getElementById(
    "year"
).textContent =
    new Date().getFullYear();


/* =========================================================
   INITIALIZE
========================================================= */

renderCategories();

renderFilterButtons();

renderProducts();

renderReviews();

updateCart();


console.log(
    "🚀 NexusShop user-friendly interface loaded."
);

</script>

</body>
</html>
