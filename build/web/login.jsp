<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="Login.css">
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- Form-->
    <div class="grid-container">
        <img src="login.jpg" alt="Left Image" class="side-image">
<div class="form">
    <div class="form-toggle"></div>
    <div class="form-panel one">
        <div class="form-header">
            <h1>LOGIN</h1>
        </div>
        <div class="form-content">
            <form action="login" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" type="text" name="username" required="required" />
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" type="password" name="password" required="required" />
                </div>
                <div class="form-group">
                    <label class="form-remember">
                        <input type="checkbox" />Remember Me
                    </label><a class="form-recovery" href="#">Forgot Password?</a>
                </div>
                <div class="form-group">
                    <button type="submit">Log In</button> 
                </div>
            </form>
        </div>
    </div>
    

           
</body>
</html>
