<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="add.css">
</head>
<body>
    <form action="adminlog" id="adminForm" method="post" >
    <div class="container">
        <div class="illustration">
            <img src="admin.webp" alt="Illustration">
        </div>
        <div class="login-form">
            <h2>Welcome,Admin</h2>
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username">
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password">
            </div>
            <button class="login-btn">Login</button>
            
        </div>
    </div>
        </form>
    
</body>
</html>