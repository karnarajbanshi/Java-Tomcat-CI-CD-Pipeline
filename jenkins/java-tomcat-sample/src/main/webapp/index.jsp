<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechAxis - Empowering Your Tech Journey</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="styles.css" rel="stylesheet">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">TechAxis</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#courses">Courses</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#testimonials">Testimonials</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Welcome to TechAxis</h1>
                <p class="lead">Empowering Your Tech Journey</p>
                <a href="#courses" class="btn btn-primary btn-lg">Explore Courses</a>
            </div>
        </div>
    </header>
    <section id="about" class="section">
        <div class="container">
            <h2>About Us</h2>
            <p>TechAxis is a leading tech training institute dedicated to providing high-quality, hands-on training in various technology domains.</p>
            <p>Our mission is to empower individuals with the skills and knowledge needed to thrive in the fast-paced tech industry.</p>
        </div>
    </section>
    <section id="courses" class="section bg-light">
        <div class="container">
            <h2>Our Courses</h2>
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/300?text=Web+Development" class="card-img-top" alt="Web Development">
                        <div class="card-body">
                            <h3 class="card-title">Web Development Bootcamp</h3>
                            <p class="card-text">Learn the essentials of web development with our comprehensive bootcamp program.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/300?text=Data+Science" class="card-img-top" alt="Data Science">
                        <div class="card-body">
                            <h3 class="card-title">Data Science Masterclass</h3>
                            <p class="card-text">Master the art of data science and analytics with our advanced masterclass.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/300?text=DevOps" class="card-img-top" alt="DevOps">
                        <div class="card-body">
                            <h3 class="card-title">DevOps Fundamentals</h3>
                            <p class="card-text">Explore the principles and practices of DevOps for seamless software delivery.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- Add more courses as needed -->
            </div>
        </div>
    </section>
    <section id="testimonials" class="section">
        <div class="container">
            <h2>What Our Students Say</h2>
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-text">"TechAxis provided me with the skills and confidence to pursue my dream job in tech. Highly recommended!"</p>
                            <p class="card-text"><small class="text-muted">- John Doe, Web Developer</small></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-text">"The instructors at TechAxis are top-notch, and the hands-on approach to learning made all the difference."</p>
                            <p class="card-text"><small class="text-muted">- Jane Smith, Data Scientist</small></p>
                        </div>
                    </div>
                </div>
                <!-- Add more testimonials as needed -->
            </div>
        </div>
    </section>
    <section id="contact" class="section bg-light">
        <div class="container">
            <h2>Contact Us</h2>
            <p>Have questions? Reach out to us for more information about our courses and programs.</p>
            <form>
                <div class="form-group">
                    <input type="text" class="form-control" id="name" placeholder="Your Name">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="email" placeholder="Your Email">
                </div>
                <div class="form-group">
                    <textarea class="form-control" id="message" rows="3" placeholder="Your Message"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </section>
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 TechAxis. All rights reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS and jQuery (required for Bootstrap functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/
