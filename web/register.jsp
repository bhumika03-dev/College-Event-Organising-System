<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Event Registration</title>
    <link rel="stylesheet" href="register.css">
    
        
</head>
<body>
    <div class="grid-container">
        <img src="couple-dance-party.png" alt="Left Image" class="side-image">
        <div class="container">
            <h1 class="title">Register for the Event</h1>
            <form action="register" method="post" id="registerForm">
                <div class="input-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" placeholder="Enter your full name" name="fullname" required>
                </div>
                <div class="input-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" placeholder="Enter your username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="email">email</label>
                    <input type="email" id="password" placeholder="Enter your password" name="password" required>
                </div>
                <div class="input-group">
                    <label for="password">password</label>
                    <input type="password" id="email" placeholder="Enter your email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" placeholder="Enter your phone number" pattern="[0-9]{10}" name="phoneno" required>
                </div>
                <div class="terms-container">
                    <p><strong>Terms & Conditions:</strong></p>
                    <p>1. The information provided must be accurate and complete.</p>
                    <p>2. Registration is non-transferable.</p>
                    <p>3. Any misconduct may result in disqualification.</p>
                    <p>4. The organizers hold the right to modify the event schedule.</p>
                    <p>5. By registering, you agree to abide by all event rules.</p>
                </div>
                <div class="input-groupc">
                    <label>
                        <input type="checkbox" id="terms" required>
                        I agree to the Terms & Conditions
                    </label>
                </div>
                <button type="submit" class="btn">Register Now</button>
                <button onclick="window.location.href='login.jsp'" style="background: linear-gradient(to right, #ff66b2, #ff99cc); color: white; padding: 12px 25px; font-size: 16px; font-weight: bold; border: none; border-radius: 25px; cursor: pointer; margin-top: 2%">
                    Login
                </button>
            </form>
        </div>
        <img src="Screenshot 2025-03-06 232920.png" alt="Right Image" class="side-image">
    </div>
   
</body>
</html>
