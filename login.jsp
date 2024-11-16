<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* Full Page Style */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body, html {
            height: 100%;
            font-family: Arial, sans-serif;
        }

        /* Video Background */
        .background-video-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Ensure the video stays behind the login form */
        }

        .background-video-container video {
            object-fit: cover;
            width: 100%;
            height: 100%;
            opacity: 0.7;
        }

        /* Main Login Container */
        .login-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 15px;
            display: none;
        }

        .error-message.active {
            display: block;
        }

        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

    <!-- Background Video Container -->
    <div class="background-video-container">
        <video autoplay muted loop>
            <source src="video.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>

    <!-- Login Form -->
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm" onsubmit="validateLogin(event)">
            <div class="form-group">
                <input type="text" id="username" placeholder="Username" required />
            </div>
            <div class="form-group">
                <input type="password" id="password" placeholder="Password" required />
            </div>
            <button type="submit">Login</button>
            <div id="error-message" class="error-message">Invalid username or password.</div>
        </form>
    </div>

    <script>
        function validateLogin(event) {
            event.preventDefault();

            // Get the entered username and password
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Default username and password
            const defaultUsername = 'admin';
            const defaultPassword = 'admin';

            // Check if the username and password are correct
            if (username === defaultUsername && password === defaultPassword) {
                // Redirect to index.html upon successful login
                window.location.href = 'index.html';  // Make sure this points to your JSP page
            } else {
                // Show error message if login fails
                document.getElementById('error-message').classList.add('active');
            }
        }
    </script>

</body>
</html>
