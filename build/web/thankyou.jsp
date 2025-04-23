<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Thank You for Participating</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      background: radial-gradient(circle at center, #a092de, #2566c8);
      overflow: hidden;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .container {
      text-align: center;
      color: #fff;
    }

    h1 {
      font-size: 4rem;
      animation: glow 2s ease-in-out infinite alternate;
      margin-bottom: 10px;
    }

    p {
      font-size: 1.5rem;
      color: #f0f0f0;
    }

    @keyframes glow {
      from {
        text-shadow: 0 0 10px #f9d423, 0 0 20px #f9d423, 0 0 30px #f83600;
      }
      to {
        text-shadow: 0 0 20px #fc466b, 0 0 30px #3f5efb, 0 0 40px #3f5efb;
      }
    }

    .confetti {
      position: absolute;
      width: 10px;
      height: 10px;
      background: rgba(255,255,255,0.6);
      border-radius: 50%;
      animation: fall 5s linear infinite;
    }

    @keyframes fall {
      0% {
        transform: translateY(-100vh) rotate(0deg);
        opacity: 1;
      }
      100% {
        transform: translateY(100vh) rotate(360deg);
        opacity: 0;
      }
    }

    /* Random confetti drops */
    .confetti:nth-child(even) {
      background: #f9d423;
    }

    .confetti:nth-child(odd) {
      background: #fc466b;
    }

    /* Generate multiple confetti */
    body::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none;
    }

    /* Create multiple confetti elements */
    .confetti-container {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Thank You!</h1>
    <p>We appreciate your participation .</p>
  </div>

  <div class="confetti-container">
    <!-- Add 30 confetti dots -->
    <script>
      for (let i = 0; i < 30; i++) {
        const confetti = document.createElement("div");
        confetti.classList.add("confetti");
        confetti.style.left = `${Math.random() * 100}vw`;
        confetti.style.animationDuration = `${2 + Math.random() * 3}s`;
        document.querySelector(".confetti-container").appendChild(confetti);
      }
    </script>
  </div>
</body>
</html>
