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
        document.getElementById('error-message').style.display = 'block';
    }
}
