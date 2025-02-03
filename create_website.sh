#!/bin/bash

# Define the project folder name
PROJECT_FOLDER="project-folder"

# Create the main project folder
mkdir -p "$PROJECT_FOLDER"

# Create subdirectories
mkdir -p "$PROJECT_FOLDER/assets/images"
mkdir -p "$PROJECT_FOLDER/assets/fonts"

# Create HTML files
touch "$PROJECT_FOLDER/index.html"
touch "$PROJECT_FOLDER/about.html"
touch "$PROJECT_FOLDER/services.html"
touch "$PROJECT_FOLDER/contact.html"

# Create CSS and JS files
touch "$PROJECT_FOLDER/styles.css"
touch "$PROJECT_FOLDER/script.js"

# Populate HTML files with boilerplate code
cat <<EOF > "$PROJECT_FOLDER/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <link rel="stylesheet" href="styles.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
  <nav class="navbar">
    <div class="logo">YourLogo</div>
    <ul class="nav-links">
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    <div class="menu-toggle" id="mobile-menu">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
  </nav>

  <main>
    <section class="hero">
      <h1>Welcome to Our Website</h1>
      <p>Your one-stop solution for all your needs.</p>
      <a href="services.html" class="cta-button">Explore Services</a>
    </section>
  </main>

  <footer class="footer">
    <p>&copy; 2023 Your Company. All rights reserved.</p>
    <div class="social-icons">
      <a href="#"><img src="assets/images/facebook-icon.png" alt="Facebook"></a>
      <a href="#"><img src="assets/images/twitter-icon.png" alt="Twitter"></a>
      <a href="#"><img src="assets/images/instagram-icon.png" alt="Instagram"></a>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
EOF

cat <<EOF > "$PROJECT_FOLDER/about.html"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About</title>
  <link rel="stylesheet" href="styles.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
  <nav class="navbar">
    <div class="logo">YourLogo</div>
    <ul class="nav-links">
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    <div class="menu-toggle" id="mobile-menu">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
  </nav>

  <main>
    <section class="about">
      <h2>About Us</h2>
      <p>We are a dedicated team of professionals committed to delivering excellence.</p>
      <div class="team">
        <div class="team-member">
          <img src="assets/images/team1.jpg" alt="Team Member 1">
          <h3>John Doe</h3>
          <p>CEO</p>
        </div>
        <div class="team-member">
          <img src="assets/images/team2.jpg" alt="Team Member 2">
          <h3>Jane Smith</h3>
          <p>CTO</p>
        </div>
      </div>
    </section>
  </main>

  <footer class="footer">
    <p>&copy; 2023 Your Company. All rights reserved.</p>
    <div class="social-icons">
      <a href="#"><img src="assets/images/facebook-icon.png" alt="Facebook"></a>
      <a href="#"><img src="assets/images/twitter-icon.png" alt="Twitter"></a>
      <a href="#"><img src="assets/images/instagram-icon.png" alt="Instagram"></a>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
EOF

cat <<EOF > "$PROJECT_FOLDER/services.html"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Services</title>
  <link rel="stylesheet" href="styles.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
  <nav class="navbar">
    <div class="logo">YourLogo</div>
    <ul class="nav-links">
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    <div class="menu-toggle" id="mobile-menu">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
  </nav>

  <main>
    <section class="services">
      <h2>Our Services</h2>
      <ul>
        <li>
          <h3>Web Development</h3>
          <p>We create responsive and user-friendly websites.</p>
        </li>
        <li>
          <h3>SEO Optimization</h3>
          <p>Improve your website's visibility on search engines.</p>
        </li>
        <li>
          <h3>Graphic Design</h3>
          <p>Designs that make your brand stand out.</p>
        </li>
      </ul>
    </section>
  </main>

  <footer class="footer">
    <p>&copy; 2023 Your Company. All rights reserved.</p>
    <div class="social-icons">
      <a href="#"><img src="assets/images/facebook-icon.png" alt="Facebook"></a>
      <a href="#"><img src="assets/images/twitter-icon.png" alt="Twitter"></a>
      <a href="#"><img src="assets/images/instagram-icon.png" alt="Instagram"></a>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
EOF

cat <<EOF > "$PROJECT_FOLDER/contact.html"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact</title>
  <link rel="stylesheet" href="styles.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
  <nav class="navbar">
    <div class="logo">YourLogo</div>
    <ul class="nav-links">
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    <div class="menu-toggle" id="mobile-menu">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
  </nav>

  <main>
    <section class="contact">
      <h2>Contact Us</h2>
      <form id="contact-form">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea>
        <button type="submit">Send</button>
      </form>
      <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.8354345093747!2d144.95373531531615!3d-37.816279742021665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf577d6e1f6a6a6a6!2sYour%20Business%20Name!5e0!3m2!1sen!2sau!4v1625070000000!5m2!1sen!2sau" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
    </section>
  </main>

  <footer class="footer">
    <p>&copy; 2023 Your Company. All rights reserved.</p>
    <div class="social-icons">
      <a href="#"><img src="assets/images/facebook-icon.png" alt="Facebook"></a>
      <a href="#"><img src="assets/images/twitter-icon.png" alt="Twitter"></a>
      <a href="#"><img src="assets/images/instagram-icon.png" alt="Instagram"></a>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
EOF

# Populate CSS file
cat <<EOF > "$PROJECT_FOLDER/styles.css"
/* Basic Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Roboto', sans-serif;
  line-height: 1.6;
  color: #333;
}

/* Navigation Bar */
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem;
  background-color: #333;
  color: #fff;
}

.nav-links {
  display: flex;
  list-style: none;
}

.nav-links li {
  margin-left: 1rem;
}

.nav-links a {
  color: #fff;
  text-decoration: none;
}

.menu-toggle {
  display: none;
  flex-direction: column;
  cursor: pointer;
}

.menu-toggle .bar {
  width: 25px;
  height: 3px;
  background-color: #fff;
  margin: 4px 0;
}

/* Footer */
.footer {
  text-align: center;
  padding: 1rem;
  background-color: #333;
  color: #fff;
}

.social-icons img {
  width: 24px;
  margin: 0 0.5rem;
}

/* Responsive Design */
@media (max-width: 768px) {
  .nav-links {
    display: none;
    flex-direction: column;
    width: 100%;
  }

  .nav-links.active {
    display: flex;
  }

  .menu-toggle {
    display: flex;
  }
}

/* Page-specific styles */
.hero {
  text-align: center;
  padding: 2rem;
  background-color: #f4f4f4;
}

.cta-button {
  display: inline-block;
  padding: 0.5rem 1rem;
  background-color: #007BFF;
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
}

.team-member {
  text-align: center;
  margin: 1rem;
}

.team-member img {
  width: 100px;
  border-radius: 50%;
}

.services ul {
  list-style: none;
  padding: 1rem;
}

.services li {
  margin-bottom: 1rem;
}

.contact form {
  display: flex;
  flex-direction: column;
  max-width: 400px;
  margin: 0 auto;
}

.contact form input,
.contact form textarea {
  margin-bottom: 1rem;
  padding: 0.5rem;
}

.contact form button {
  padding: 0.5rem;
  background-color: #007BFF;
  color: #fff;
  border: none;
  cursor: pointer;
}

.map {
  margin-top: 2rem;
}
EOF

# Populate JS file
cat <<EOF > "$PROJECT_FOLDER/script.js"
// Toggle mobile menu
const mobileMenu = document.getElementById('mobile-menu');
const navLinks = document.querySelector('.nav-links');

mobileMenu.addEventListener('click', () => {
  navLinks.classList.toggle('active');
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    document.querySelector(this.getAttribute('href')).scrollIntoView({
      behavior: 'smooth'
    });
  });
});

// Form validation for contact page
const contactForm = document.getElementById('contact-form');
if (contactForm) {
  contactForm.addEventListener('submit', function (e) {
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const message = document.getElementById('message').value;

    if (!name || !email || !message) {
      e.preventDefault();
      alert('Please fill out all fields.');
    }
  });
}
EOF

echo "Website project structure and files created successfully in '$PROJECT_FOLDER'!"