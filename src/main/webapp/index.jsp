<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Groww Investment App</title>

    <style>

        /* =========================
           RESET
        ========================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f7f8fa;
            color: #1f2937;
        }

        button {
            cursor: pointer;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            height: 70px;
            background: white;

            display: flex;
            align-items: center;

            padding: 0 7%;

            border-bottom: 1px solid #eeeeee;

            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 30px;
            font-weight: bold;

            color: #00b386;

            margin-right: 45px;
        }

        nav {
            display: flex;
            gap: 28px;
        }

        nav a {
            text-decoration: none;

            color: #444;

            font-size: 15px;
            font-weight: 600;
        }

        nav a:hover {
            color: #00b386;
        }

        .search-box {
            margin-left: auto;

            width: 280px;
            height: 40px;

            background: #f5f6f7;

            border: 1px solid #e2e2e2;

            border-radius: 5px;

            display: flex;
            align-items: center;
        }

        .search-box span {
            padding-left: 12px;
            font-size: 18px;
        }

        .search-box input {
            width: 100%;
            height: 100%;

            border: none;
            outline: none;

            background: transparent;

            padding: 10px;

            font-size: 14px;
        }

        .login-btn {
            margin-left: 20px;

            background: #00b386;

            color: white;

            border: none;

            padding: 11px 22px;

            border-radius: 5px;

            font-weight: bold;
        }

        .login-btn:hover {
            background: #009b75;
        }

        /* =========================
           MAIN
        ========================= */

        main {
            width: 86%;
            margin: 30px auto;
        }

        /* =========================
           WELCOME
        ========================= */

        .welcome {
            margin-bottom: 30px;
        }

        .welcome h1 {
            font-size: 30px;
            margin-bottom: 8px;
        }

        .welcome p {
            color: #777;
        }

        /* =========================
           MARKET INDEX
        ========================= */

        .market-container {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 18px;

            margin-bottom: 35px;
        }

        .market-card {
            background: white;

            padding: 20px;

            border-radius: 8px;

            border: 1px solid #eeeeee;

            transition: 0.2s;
        }

        .market-card:hover {
            box-shadow:
                0 5px 18px
                rgba(0,0,0,0.08);

            transform: translateY(-2px);
        }

        .market-card h3 {
            font-size: 15px;

            color: #555;

            margin-bottom: 15px;
        }

        .market-value {
            font-size: 22px;

            font-weight: bold;

            margin-bottom: 7px;
        }

        .positive {
            color: #00a878;
        }

        .negative {
            color: #e5484d;
        }

        /* =========================
           PORTFOLIO
        ========================= */

        .portfolio {
            background: white;

            border: 1px solid #eeeeee;

            border-radius: 8px;

            padding: 25px;

            margin-bottom: 35px;
        }

        .portfolio-header {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 25px;
        }

        .portfolio-header h2 {
            font-size: 22px;
        }

        .view-btn {
            border: none;

            background: #e9f9f5;

            color: #00a878;

            padding: 9px 18px;

            border-radius: 5px;

            font-weight: bold;
        }

        .portfolio-data {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 25px;
        }

        .portfolio-item p:first-child {
            color: #777;

            font-size: 13px;

            margin-bottom: 8px;
        }

        .portfolio-item p:last-child {
            font-size: 20px;

            font-weight: bold;
        }

        /* =========================
           QUICK ACTIONS
        ========================= */

        .quick-actions {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 15px;

            margin-bottom: 35px;
        }

        .action {
            background: white;

            border: 1px solid #eeeeee;

            padding: 20px;

            border-radius: 8px;

            text-align: center;

            transition: 0.2s;
        }

        .action:hover {
            border-color: #00b386;

            transform: translateY(-2px);
        }

        .action-icon {
            font-size: 35px;

            margin-bottom: 10px;
        }

        .action h3 {
            font-size: 15px;

            margin-bottom: 5px;
        }

        .action p {
            font-size: 12px;

            color: #777;
        }

        /* =========================
           SECTION TITLE
        ========================= */

        .section-title {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 20px;
        }

        .section-title h2 {
            font-size: 24px;
        }

        .section-title a {
            color: #00a878;

            text-decoration: none;

            font-size: 14px;

            font-weight: bold;
        }

        /* =========================
           STOCKS
        ========================= */

        .stocks {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 18px;

            margin-bottom: 40px;
        }

        .stock-card {
            background: white;

            border: 1px solid #eeeeee;

            border-radius: 8px;

            padding: 20px;

            transition: 0.2s;
        }

        .stock-card:hover {
            box-shadow:
                0 5px 18px
                rgba(0,0,0,0.08);

            transform: translateY(-3px);
        }

        .stock-top {
            display: flex;

            align-items: center;

            gap: 12px;

            margin-bottom: 20px;
        }

        .stock-logo {
            width: 45px;
            height: 45px;

            border-radius: 50%;

            background: #e9f9f5;

            display: flex;

            justify-content: center;

            align-items: center;

            font-weight: bold;

            color: #00a878;
        }

        .stock-name h3 {
            font-size: 15px;

            margin-bottom: 4px;
        }

        .stock-name p {
            font-size: 12px;

            color: #888;
        }

        .stock-price {
            font-size: 21px;

            font-weight: bold;

            margin-bottom: 6px;
        }

        .stock-change {
            font-size: 13px;

            font-weight: bold;
        }

        .buy-btn {
            width: 100%;

            margin-top: 18px;

            padding: 10px;

            background: #00b386;

            color: white;

            border: none;

            border-radius: 5px;

            font-weight: bold;
        }

        .buy-btn:hover {
            background: #009b75;
        }

        /* =========================
           MUTUAL FUNDS
        ========================= */

        .funds {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 20px;

            margin-bottom: 40px;
        }

        .fund-card {
            background: white;

            border: 1px solid #eeeeee;

            border-radius: 8px;

            padding: 22px;
        }

        .fund-card h3 {
            font-size: 16px;

            margin-bottom: 8px;
        }

        .fund-card p {
            color: #777;

            font-size: 13px;

            margin-bottom: 18px;
        }

        .fund-details {
            display: flex;

            justify-content: space-between;

            border-top: 1px solid #eeeeee;

            padding-top: 15px;
        }

        .fund-details div {
            text-align: left;
        }

        .fund-details small {
            color: #888;

            display: block;

            margin-bottom: 5px;
        }

        .fund-details strong {
            font-size: 14px;
        }

        /* =========================
           IPO
        ========================= */

        .ipo {
            background: white;

            border: 1px solid #eeeeee;

            border-radius: 8px;

            padding: 25px;

            margin-bottom: 40px;
        }

        .ipo-row {
            display: flex;

            justify-content: space-between;

            align-items: center;

            padding: 18px 0;

            border-bottom: 1px solid #eeeeee;
        }

        .ipo-row:last-child {
            border-bottom: none;
        }

        .ipo-company {
            display: flex;

            align-items: center;

            gap: 15px;
        }

        .ipo-logo {
            width: 45px;
            height: 45px;

            background: #f0f7ff;

            border-radius: 50%;

            display: flex;

            align-items: center;

            justify-content: center;

            font-weight: bold;

            color: #3478f6;
        }

        .ipo-company h3 {
            font-size: 15px;

            margin-bottom: 5px;
        }

        .ipo-company p {
            font-size: 12px;

            color: #888;
        }

        .apply-btn {
            border: 1px solid #00b386;

            color: #00a878;

            background: white;

            padding: 9px 20px;

            border-radius: 5px;

            font-weight: bold;
        }

        .apply-btn:hover {
            background: #e9f9f5;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: #1f2937;

            color: white;

            padding: 45px 8%;

            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 40px;
        }

        footer h3 {
            color: #00c896;

            margin-bottom: 18px;

            font-size: 16px;
        }

        footer a {
            display: block;

            text-decoration: none;

            color: #ccc;

            margin-bottom: 11px;

            font-size: 13px;
        }

        footer a:hover {
            color: white;
        }

        footer p {
            color: #ccc;

            font-size: 13px;

            line-height: 1.7;
        }

        .copyright {
            background: #151c27;

            color: #999;

            text-align: center;

            padding: 18px;

            font-size: 12px;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media(max-width: 1100px) {

            header {
                padding: 0 3%;
            }

            main {
                width: 92%;
            }

            .market-container,
            .stocks {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .quick-actions {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .funds {
                grid-template-columns:
                    repeat(2, 1fr);
            }

        }

        @media(max-width: 750px) {

            header {
                height: auto;

                padding: 15px;

                flex-wrap: wrap;
            }

            .logo {
                margin-right: auto;
            }

            nav {
                order: 4;

                width: 100%;

                overflow-x: auto;

                padding-top: 15px;
            }

            .search-box {
                width: 230px;
            }

            .login-btn {
                margin-left: 5px;
            }

            .portfolio-data {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .market-container,
            .stocks,
            .funds {
                grid-template-columns: 1fr;
            }

            footer {
                grid-template-columns:
                    repeat(2, 1fr);
            }

        }

        @media(max-width: 500px) {

            .search-box {
                order: 3;

                width: 100%;

                margin-top: 10px;
            }

            .quick-actions {
                grid-template-columns: 1fr;
            }

            .portfolio-data {
                grid-template-columns: 1fr 1fr;
            }

            .ipo-row {
                gap: 10px;
            }

            footer {
                grid-template-columns: 1fr;
            }

        }

    </style>

</head>


<body>


<!-- =========================
     HEADER
========================= -->

<header>

    <div class="logo">
        groww
    </div>


    <nav>

        <a href="#">
            Stocks
        </a>

        <a href="#">
            Mutual Funds
        </a>

        <a href="#">
            ETFs
        </a>

        <a href="#">
            IPOs
        </a>

        <a href="#">
            Gold
        </a>

    </nav>


    <div class="search-box">

        <span>
            🔍
        </span>

        <input
            type="text"
            placeholder="Search stocks, mutual funds..."
        >

    </div>


    <button class="login-btn">
        Login
    </button>

</header>



<!-- =========================
     MAIN
========================= -->

<main>


    <!-- WELCOME -->

    <section class="welcome">

        <h1>
            Good afternoon!
        </h1>

        <p>
            Track your investments and explore opportunities.
        </p>

    </section>



    <!-- MARKET INDICES -->

    <section>

        <div class="section-title">

            <h2>
                Market Today
            </h2>

            <a href="#">
                View all
            </a>

        </div>


        <div class="market-container">


            <div class="market-card">

                <h3>
                    NIFTY 50
                </h3>

                <div class="market-value">
                    24,832.20
                </div>

                <div class="positive">
                    ▲ 185.40 (0.75%)
                </div>

            </div>


            <div class="market-card">

                <h3>
                    SENSEX
                </h3>

                <div class="market-value">
                    81,721.12
                </div>

                <div class="positive">
                    ▲ 612.35 (0.76%)
                </div>

            </div>


            <div class="market-card">

                <h3>
                    BANK NIFTY
                </h3>

                <div class="market-value">
                    54,210.40
                </div>

                <div class="negative">
                    ▼ 125.30 (0.23%)
                </div>

            </div>


            <div class="market-card">

                <h3>
                    NIFTY IT
                </h3>

                <div class="market-value">
                    41,285.60
                </div>

                <div class="positive">
                    ▲ 320.45 (0.78%)
                </div>

            </div>


        </div>

    </section>



    <!-- PORTFOLIO -->

    <section class="portfolio">

        <div class="portfolio-header">

            <h2>
                My Portfolio
            </h2>

            <button class="view-btn">
                View Portfolio
            </button>

        </div>


        <div class="portfolio-data">


            <div class="portfolio-item">

                <p>
                    Invested
                </p>

                <p>
                    ₹1,25,000
                </p>

            </div>


            <div class="portfolio-item">

                <p>
                    Current Value
                </p>

                <p>
                    ₹1,42,850
                </p>

            </div>


            <div class="portfolio-item">

                <p>
                    Total Returns
                </p>

                <p class="positive">
                    +₹17,850
                </p>

            </div>


            <div class="portfolio-item">

                <p>
                    Returns %
                </p>

                <p class="positive">
                    +14.28%
                </p>

            </div>


        </div>

    </section>



    <!-- QUICK ACTIONS -->

    <section>

        <div class="section-title">

            <h2>
                Explore
            </h2>

        </div>


        <div class="quick-actions">


            <div class="action">

                <div class="action-icon">
                    📈
                </div>

                <h3>
                    Stocks
                </h3>

                <p>
                    Invest in companies
                </p>

            </div>


            <div class="action">

                <div class="action-icon">
                    💰
                </div>

                <h3>
                    Mutual Funds
                </h3>

                <p>
                    Start with small amounts
                </p>

            </div>


            <div class="action">

                <div class="action-icon">
                    🏦
                </div>

                <h3>
                    IPOs
                </h3>

                <p>
                    Apply for new listings
                </p>

            </div>


            <div class="action">

                <div class="action-icon">
                    🪙
                </div>

                <h3>
                    Digital Gold
                </h3>

                <p>
                    Invest in gold
                </p>

            </div>


        </div>

    </section>



    <!-- TOP STOCKS -->

    <section>

        <div class="section-title">

            <h2>
                Top Stocks
            </h2>

            <a href="#">
                Explore stocks →
            </a>

        </div>


        <div class="stocks">


            <div class="stock-card">

                <div class="stock-top">

                    <div class="stock-logo">
                        T
                    </div>

                    <div class="stock-name">

                        <h3>
                            TCS
                        </h3>

                        <p>
                            Tata Consultancy Services
                        </p>

                    </div>

                </div>


                <div class="stock-price">
                    ₹3,845.20
                </div>

                <div class="stock-change positive">
                    ▲ 1.42%
                </div>

                <button class="buy-btn">
                    Buy
                </button>

            </div>



            <div class="stock-card">

                <div class="stock-top">

                    <div class="stock-logo">
                        R
                    </div>

                    <div class="stock-name">

                        <h3>
                            RELIANCE
                        </h3>

                        <p>
                            Reliance Industries
                        </p>

                    </div>

                </div>


                <div class="stock-price">
                    ₹2,945.65
                </div>

                <div class="stock-change positive">
                    ▲ 0.82%
                </div>

                <button class="buy-btn">
                    Buy
                </button>

            </div>



            <div class="stock-card">

                <div class="stock-top">

                    <div class="stock-logo">
                        H
                    </div>

                    <div class="stock-name">

                        <h3>
                            HDFCBANK
                        </h3>

                        <p>
                            HDFC Bank
                        </p>

                    </div>

                </div>


                <div class="stock-price">
                    ₹1,756.40
                </div>

                <div class="stock-change negative">
                    ▼ 0.35%
                </div>

                <button class="buy-btn">
                    Buy
                </button>

            </div>



            <div class="stock-card">

                <div class="stock-top">

                    <div class="stock-logo">
                        I
                    </div>

                    <div class="stock-name">

                        <h3>
                            INFY
                        </h3>

                        <p>
                            Infosys
                        </p>

                    </div>

                </div>


                <div class="stock-price">
                    ₹1,542.80
                </div>

                <div class="stock-change positive">
                    ▲ 2.18%
                </div>

                <button class="buy-btn">
                    Buy
                </button>

            </div>


        </div>

    </section>



    <!-- MUTUAL FUNDS -->

    <section>

        <div class="section-title">

            <h2>
                Popular Mutual Funds
            </h2>

            <a href="#">
                View all →
            </a>

        </div>


        <div class="funds">


            <div class="fund-card">

                <h3>
                    Parag Parikh Flexi Cap Fund
                </h3>

                <p>
                    Direct Growth • Equity
                </p>


                <div class="fund-details">

                    <div>

                        <small>
                            1Y Returns
                        </small>

                        <strong class="positive">
                            18.45%
                        </strong>

                    </div>


                    <div>

                        <small>
                            Min. SIP
                        </small>

                        <strong>
                            ₹500
                        </strong>

                    </div>

                </div>

            </div>



            <div class="fund-card">

                <h3>
                    HDFC Mid-Cap Opportunities
                </h3>

                <p>
                    Direct Growth • Equity
                </p>


                <div class="fund-details">

                    <div>

                        <small>
                            1Y Returns
                        </small>

                        <strong class="positive">
                            21.20%
                        </strong>

                    </div>


                    <div>

                        <small>
                            Min. SIP
                        </small>

                        <strong>
                            ₹500
                        </strong>

                    </div>

                </div>

            </div>



            <div class="fund-card">

                <h3>
                    SBI Large & Midcap Fund
                </h3>

                <p>
                    Direct Growth • Equity
                </p>


                <div class="fund-details">

                    <div>

                        <small>
                            1Y Returns
                        </small>

                        <strong class="positive">
                            16.72%
                        </strong>

                    </div>


                    <div>

                        <small>
                            Min. SIP
                        </small>

                        <strong>
                            ₹500
                        </strong>

                    </div>

                </div>

            </div>


        </div>

    </section>



    <!-- IPO -->

    <section class="ipo">

        <div class="section-title">

            <h2>
                Upcoming IPOs
            </h2>

            <a href="#">
                View all →
            </a>

        </div>


        <div class="ipo-row">

            <div class="ipo-company">

                <div class="ipo-logo">
                    A
                </div>

                <div>

                    <h3>
                        ABC Technologies
                    </h3>

                    <p>
                        Open: Sep 10 - Sep 12
                    </p>

                </div>

            </div>


            <button class="apply-btn">
                View IPO
            </button>

        </div>


        <div class="ipo-row">

            <div class="ipo-company">

                <div class="ipo-logo">
                    F
                </div>

                <div>

                    <h3>
                        Future Retail
                    </h3>

                    <p>
                        Open: Sep 15 - Sep 17
                    </p>

                </div>

            </div>


            <button class="apply-btn">
                View IPO
            </button>

        </div>


        <div class="ipo-row">

            <div class="ipo-company">

                <div class="ipo-logo">
                    M
                </div>

                <div>

                    <h3>
                        Metro Industries
                    </h3>

                    <p>
                        Open: Sep 20 - Sep 22
                    </p>

                </div>

            </div>


            <button class="apply-btn">
                View IPO
            </button>

        </div>

    </section>


</main>



<!-- =========================
     FOOTER
========================= -->

<footer>


    <div>

        <h3>
            INVESTMENTS
        </h3>

        <a href="#">
            Stocks
        </a>

        <a href="#">
            Mutual Funds
        </a>

        <a href="#">
            ETFs
        </a>

        <a href="#">
            IPOs
        </a>

        <a href="#">
            Gold
        </a>

    </div>


    <div>

        <h3>
            COMPANY
        </h3>

        <a href="#">
            About Us
        </a>

        <a href="#">
            Careers
        </a>

        <a href="#">
            Blog
        </a>

        <a href="#">
            Contact Us
        </a>

    </div>


    <div>

        <h3>
            SUPPORT
        </h3>

        <a href="#">
            Help Center
        </a>

        <a href="#">
            FAQs
        </a>

        <a href="#">
            Security
        </a>

        <a href="#">
            Privacy
        </a>

    </div>


    <div>

        <h3>
            DISCLAIMER
        </h3>

        <p>
            This is a frontend educational
            demonstration. The prices and
            investment data shown here are
            fictional and are not real-time
            market data.
        </p>

    </div>


</footer>


<div class="copyright">

    © 2026 Investment App UI.
    Educational project only.

</div>


</body>

</html>
