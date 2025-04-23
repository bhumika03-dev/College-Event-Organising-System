
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Eventplus</title>
    <link rel="stylesheet" href="contactus.css">
</head>
<body>
    <!-- navigation bar --> 
    <headers class="section-navbar">
        <div class="container">
            <div class="navbar">
                <a href="index.html">
                    <img src="https://imperialcollege.org.in/img/logo.png" alt="Imperial college" width="100%" height="auto">
                </a>
            </div>
       
        <nav class="navbar">
              <ul>
                <li class="nav-item"><a class="nav-link" href="Homepage.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Signup</a></li>
                <li class="nav-item"><a class="nav-link" href="">Create Events</a></li>
                
                
                <li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>

              </ul>
        </nav>
    </div>
    </headers>
    <header>
        <div class="header-content">
            <h1>We love to hear from you.</h1>
            <p></p>
        </div>
    </header>
    <section class="contact-form">
        <form action="contactus" method="post" id="contactForm">
            <h2>Send a message</h2>
            <input type="text" placeholder="Name" name="t1" required>
            <input type="email" placeholder="Email Address" name="t2" required>
            <input type="tel" placeholder="Phone" name="t3"required>
            <input type="text" placeholder="Class" name="t4" required>
            <input type="text" placeholder="Year" name="t5" required>
            <textarea placeholder="Any query" name="t7" required></textarea>
            <button type="submit">Send a message</button>
        </form>
    </section>
   
    
</body>
</html>
