<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myntra Style E-Commerce</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f5f5f5;
            color: #282c3f;
        }

        /* ================= HEADER ================= */

        header {
            height: 80px;
            background: white;
            display: flex;
            align-items: center;
            padding: 0 5%;
            gap: 30px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo {
            font-size: 30px;
            font-weight: bold;
            color: #ff3f6c;
            cursor: pointer;
        }

        nav {
            display: flex;
            gap: 25px;
            height: 100%;
            align-items: center;
        }

        nav a {
            text-decoration: none;
            color: #282c3f;
            font-size: 14px;
            font-weight: bold;
            position: relative;
        }

        nav a:hover {
            color: #ff3f6c;
        }

        nav a:hover::after {
            content: "";
            position: absolute;
            height: 3px;
            background: #ff3f6c;
            left: 0;
            right: 0;
            bottom: -30px;
        }

        .search {
            flex: 1;
            max-width: 400px;
            height: 40px;
            background: #f5f5f6;
            display: flex;
            align-items: center;
            border-radius: 4px;
            margin-left: auto;
        }

        .search span {
            padding-left: 15px;
            font-size: 18px;
        }

        .search input {
            width: 100%;
            height: 100%;
            border: none;
            outline: none;
            background: transparent;
            padding: 10px;
            font-size: 14px;
        }

        .header-icons {
            display: flex;
            gap: 20px;
        }

        .icon {
            text-align: center;
            cursor: pointer;
            font-size: 20px;
        }

        .icon p {
            font-size: 11px;
            margin-top: 3px;
            font-weight: bold;
        }

        /* ================= HERO ================= */

        .hero {
            margin: 25px auto;
            width: 90%;
            height: 350px;

            background:
                linear-gradient(
                    90deg,
                    rgba(0,0,0,0.6),
                    rgba(0,0,0,0.1)
                ),
                linear-gradient(
                    120deg,
                    #ff3f6c,
                    #ff9a44,
                    #ffe259
                );

            display: flex;
            align-items: center;
            padding-left: 7%;
            color: white;
        }

        .hero-content h1 {
            font-size: 52px;
            margin-bottom: 15px;
        }

        .hero-content h2 {
            font-size: 28px;
            margin-bottom: 15px;
        }

        .hero-content p {
            font-size: 18px;
            margin-bottom: 25px;
        }

        .shop-btn {
            background: white;
            color: #ff3f6c;
            border: none;
            padding: 14px 35px;
            font-weight: bold;
            cursor: pointer;
        }

        /* ================= SECTION ================= */

        .section {
            width: 90%;
            margin: 35px auto;
        }

        .section-title {
            font-size: 28px;
            letter-spacing: 2px;
            margin-bottom: 25px;
        }

        /* ================= CATEGORIES ================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
        }

        .category {
            background: white;
            text-align: center;
            cursor: pointer;
            transition: 0.3s;
        }

        .category:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.12);
        }

        .category-image {
            height: 180px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 75px;
            background: #fff0f3;
        }

        .category h3 {
            padding: 15px 5px 5px;
        }

        .category p {
            color: #ff3f6c;
            font-weight: bold;
            padding-bottom: 15px;
        }

        /* ================= PRODUCTS ================= */

        .products {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 18px;
        }

        .product {
            background: white;
            cursor: pointer;
            transition: 0.3s;
            position: relative;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 18px rgba(0,0,0,0.15);
        }

        .product-image {
            height: 250px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 110px;
            background: #f8f8f8;
        }

        .product-info {
            padding: 12px;
        }

        .product-info h3 {
            font-size: 15px;
            margin-bottom: 7px;
        }

        .product-info p {
            font-size: 13px;
            color: #777;
            margin-bottom: 7px;
        }

        .price {
            font-weight: bold;
            color: #282c3f !important;
        }

        .discount {
            color: #ff3f6c !important;
            font-weight: bold;
        }

        .wishlist {
            position: absolute;
            right: 10px;
            top: 10px;
            background: white;
            border-radius: 50%;
            width: 35px;
            height: 35px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
        }

        /* ================= DEAL BANNER ================= */

        .deal-banner {
            width: 90%;
            margin: 40px auto;
            height: 220px;

            background:
                linear-gradient(
                    135deg,
                    #282c3f,
                    #ff3f6c
                );

            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .deal-banner h2 {
            font-size: 38px;
            margin-bottom: 15px;
        }

        .deal-banner p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #282c3f;
            color: white;
            padding: 50px 8%;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 40px;
        }

        footer h3 {
            color: #ff3f6c;
            margin-bottom: 20px;
        }

        footer a {
            display: block;
            color: #ddd;
            text-decoration: none;
            margin-bottom: 12px;
            font-size: 14px;
        }

        footer a:hover {
            color: white;
        }

        .copyright {
            background: #1e212d;
            color: #aaa;
            text-align: center;
            padding: 20px;
            font-size: 13px;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width: 1100px) {

            nav {
                gap: 12px;
            }

            .products {
                grid-template-columns: repeat(4, 1fr);
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media(max-width: 800px) {

            header {
                height: auto;
                padding: 15px;
                flex-wrap: wrap;
            }

            nav {
                order: 3;
                width: 100%;
                justify-content: center;
            }

            nav a:hover::after {
                display: none;
            }

            .search {
                max-width: none;
            }

            .hero {
                height: 280px;
            }

            .hero-content h1 {
                font-size: 38px;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            footer {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width: 500px) {

            .logo {
                font-size: 24px;
            }

            nav {
                overflow-x: auto;
                justify-content: flex-start;
                padding-bottom: 5px;
            }

            .header-icons {
                gap: 8px;
            }

            .hero {
                width: 95%;
                padding-left: 25px;
            }

            .hero-content h1 {
                font-size: 30px;
            }

            .hero-content h2 {
                font-size: 20px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .product-image {
                height: 180px;
                font-size: 70px;
            }

            footer {
                grid-template-columns: 1fr;
            }
        }

    </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

    <div class="logo">
        myntra
    </div>

    <nav>
        <a href="#">MEN</a>
        <a href="#">WOMEN</a>
        <a href="#">KIDS</a>
        <a href="#">HOME</a>
        <a href="#">BEAUTY</a>
        <a href="#">STUDIO</a>
    </nav>

    <div class="search">

        <span>🔍</span>

        <input
            type="text"
            placeholder="Search for products, brands and more"
        >

    </div>

    <div class="header-icons">

        <div class="icon">
            👤
            <p>Profile</p>
        </div>

        <div class="icon">
            ❤️
            <p>Wishlist</p>
        </div>

        <div class="icon">
            🛍️
            <p>Bag</p>
        </div>

    </div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <h1>FASHION SALE</h1>

        <h2>FLAT 50% OFF</h2>

        <p>
            Discover the latest styles & trends
        </p>

        <button class="shop-btn">
            SHOP NOW
        </button>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section">

    <h2 class="section-title">
        SHOP BY CATEGORY
    </h2>

    <div class="categories">

        <div class="category">

            <div class="category-image">
                👔
            </div>

            <h3>
                Men's Fashion
            </h3>

            <p>
                UP TO 60% OFF
            </p>

        </div>


        <div class="category">

            <div class="category-image">
                👗
            </div>

            <h3>
                Women's Fashion
            </h3>

            <p>
                UP TO 70% OFF
            </p>

        </div>


        <div class="category">

            <div class="category-image">
                👶
            </div>

            <h3>
                Kids
            </h3>

            <p>
                UP TO 50% OFF
            </p>

        </div>


        <div class="category">

            <div class="category-image">
                👟
            </div>

            <h3>
                Footwear
            </h3>

            <p>
                UP TO 65% OFF
            </p>

        </div>


        <div class="category">

            <div class="category-image">
                👜
            </div>

            <h3>
                Accessories
            </h3>

            <p>
                UP TO 55% OFF
            </p>

        </div>


        <div class="category">

            <div class="category-image">
                💄
            </div>

            <h3>
                Beauty
            </h3>

            <p>
                UP TO 40% OFF
            </p>

        </div>

    </div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="section">

    <h2 class="section-title">
        TRENDING NOW
    </h2>

    <div class="products">


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                👕
            </div>

            <div class="product-info">

                <h3>
                    Roadster
                </h3>

                <p>
                    Men Regular Fit T-Shirt
                </p>

                <p class="price">
                    ₹499
                </p>

                <p class="discount">
                    50% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                👗
            </div>

            <div class="product-info">

                <h3>
                    DressBerry
                </h3>

                <p>
                    Women Floral Dress
                </p>

                <p class="price">
                    ₹799
                </p>

                <p class="discount">
                    40% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                👟
            </div>

            <div class="product-info">

                <h3>
                    Puma
                </h3>

                <p>
                    Running Shoes
                </p>

                <p class="price">
                    ₹1,999
                </p>

                <p class="discount">
                    45% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                👜
            </div>

            <div class="product-info">

                <h3>
                    Lavie
                </h3>

                <p>
                    Women's Handbag
                </p>

                <p class="price">
                    ₹1,299
                </p>

                <p class="discount">
                    55% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                ⌚
            </div>

            <div class="product-info">

                <h3>
                    Fastrack
                </h3>

                <p>
                    Analog Watch
                </p>

                <p class="price">
                    ₹1,599
                </p>

                <p class="discount">
                    30% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                🕶️
            </div>

            <div class="product-info">

                <h3>
                    Ray-Ban
                </h3>

                <p>
                    Stylish Sunglasses
                </p>

                <p class="price">
                    ₹2,499
                </p>

                <p class="discount">
                    25% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                👖
            </div>

            <div class="product-info">

                <h3>
                    Levis
                </h3>

                <p>
                    Slim Fit Jeans
                </p>

                <p class="price">
                    ₹1,499
                </p>

                <p class="discount">
                    35% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                🎒
            </div>

            <div class="product-info">

                <h3>
                    Wildcraft
                </h3>

                <p>
                    Casual Backpack
                </p>

                <p class="price">
                    ₹899
                </p>

                <p class="discount">
                    40% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                💄
            </div>

            <div class="product-info">

                <h3>
                    Lakme
                </h3>

                <p>
                    Beauty Essentials
                </p>

                <p class="price">
                    ₹699
                </p>

                <p class="discount">
                    20% OFF
                </p>

            </div>

        </div>


        <div class="product">

            <div class="wishlist">
                ♡
            </div>

            <div class="product-image">
                🧥
            </div>

            <div class="product-info">

                <h3>
                    HRX
                </h3>

                <p>
                    Men's Jacket
                </p>

                <p class="price">
                    ₹1,799
                </p>

                <p class="discount">
                    45% OFF
                </p>

            </div>

        </div>

    </div>

</section>


<!-- ================= DEAL BANNER ================= -->

<section class="deal-banner">

    <div>

        <h2>
            END OF SEASON SALE
        </h2>

        <p>
            FLAT 50% - 80% OFF
        </p>

        <button class="shop-btn">
            SHOP NOW
        </button>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <div>

        <h3>
            ONLINE SHOPPING
        </h3>

        <a href="#">Men</a>
        <a href="#">Women</a>
        <a href="#">Kids</a>
        <a href="#">Home & Living</a>
        <a href="#">Beauty</a>
        <a href="#">Gift Cards</a>

    </div>


    <div>

        <h3>
            CUSTOMER POLICIES
        </h3>

        <a href="#">Contact Us</a>
        <a href="#">FAQ</a>
        <a href="#">Terms Of Use</a>
        <a href="#">Track Orders</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>

    </div>


    <div>

        <h3>
            USEFUL LINKS
        </h3>

        <a href="#">Blog</a>
        <a href="#">Careers</a>
        <a href="#">Site Map</a>
        <a href="#">Corporate Information</a>
        <a href="#">Whitehat</a>

    </div>


    <div>

        <h3>
            KEEP IN TOUCH
        </h3>

        <a href="#">Instagram</a>
        <a href="#">Facebook</a>
        <a href="#">Twitter</a>
        <a href="#">YouTube</a>

    </div>

</footer>


<div class="copyright">

    © 2026 Fashion E-Commerce Website.
    Built for educational purposes.

</div>


</body>
</html>
