<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techie Horizon - Welcome</title>
    <!-- SEO Meta Tags -->
    <meta name="description" content="Techie Horizon - Your journey to finding the perfect tech talent starts here.">
    <meta name="keywords" content="Techie Horizon, tech jobs, hiring, careers, technology, recruitment">
    <meta name="author" content="Techie Horizon Team">

    <!-- Social Sharing Meta -->
    <meta property="og:title" content="Techie Horizon - Welcome">
    <meta property="og:description" content="Your journey to finding the perfect tech talent starts here.">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://techiehorizon.example.com/">
    <meta property="og:image" content="https://techiehorizon.example.com/assets/og-image.png">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Techie Horizon - Welcome">
    <meta name="twitter:description" content="Your journey to finding the perfect tech talent starts here.">
    <meta name="twitter:image" content="https://techiehorizon.example.com/assets/og-image.png">

    <!-- PWA Manifest -->
    <link rel="manifest" href="/manifest.json">

    <!-- Favicon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <style>
        :root {
            --primary-color: #007bff;
            --accent-color: #28a745;
            --accent-color-hover: #218838;
            --background: #f4f4f4;
            --container-bg: #fff;
            --text-color: #555;
            --shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        @media (prefers-color-scheme: dark) {
            :root {
                --background: #181a1b;
                --container-bg: #23272b;
                --text-color: #ccc;
                --shadow: 0 2px 10px rgba(0,0,0,0.5);
            }
        }
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            background: var(--background);
            color: var(--text-color);
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        main {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: var(--container-bg);
            padding: 2rem 2.5rem;
            border-radius: 12px;
            box-shadow: var(--shadow);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h1 {
            color: var(--primary-color);
            margin-bottom: 1.2rem;
            font-size: 2rem;
        }
        p {
            margin-bottom: 2rem;
            line-height: 1.7;
        }
        .button {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background: var(--accent-color);
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s;
            text-decoration: none;
            outline: none;
        }
        .button:focus, .button:hover {
            background: var(--accent-color-hover);
            box-shadow: 0 0 0 3px rgba(40,167,69,0.2);
        }
        /* Responsive */
        @media (max-width: 600px) {
            .container {
                padding: 1.2rem 0.8rem;
            }
        }
        /* Visually hidden, for accessibility */
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0,0,0,0);
            border: 0;
        }
    </style>
</head>
<body>
    <a href="#main-content" class="sr-only" tabindex="1">Skip to main content</a>
    <main id="main-content" role="main" aria-label="Welcome Section">
        <section class="container" aria-labelledby="welcome-title">
            <h1 id="welcome-title">Welcome to Techie Horizon!</h1>
            <p>Your journey to finding the perfect tech talent starts here.</p>
            <a href="#opportunities" class="button" id="explore-btn">Explore Opportunities</a>
        </section>
    </main>
    <!-- Example Opportunities Section -->
    <section id="opportunities" style="display:none; text-align:center; margin-top:2rem;">
        <h2>Featured Opportunities</h2>
        <p>Stay tuned! Exciting tech roles will be posted here soon.</p>
    </section>
    <script>
        // Register service worker for PWA support
        if ('serviceWorker' in navigator) {
            window.addEventListener('load', () => {
                navigator.serviceWorker.register('/service-worker.js')
                    .catch(err => console.warn('Service worker registration failed:', err));
            });
        }

        // Button click: smooth scroll and reveal opportunities
        document.getElementById('explore-btn').addEventListener('click', function(e) {
            e.preventDefault();
            const oppSection = document.getElementById('opportunities');
            oppSection.style.display = 'block';
            oppSection.scrollIntoView({ behavior: 'smooth' });
        });
    </script>
</body>
</html>
