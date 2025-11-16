<h1 align="center">🩺 FitCure – Health & Wellness Product Platform</h1>

<p align="center">
  A clean, modern, and responsive Health & Wellness product website built using 
  <b>Django</b>, <b>Tailwind CSS</b>, and <b>MySQL</b>.
  Explore natural remedies, supplements, and fitness products with category browsing,
  wishlist feature, and user authentication.
</p>

<hr>

<h2>🌟 Key Features</h2>

<h3>👤 User Features</h3>
<ul>
  <li>User Registration & Login (Django Auth)</li>
  <li>Personal user dashboard</li>
  <li>Wishlist add/remove with heart icons (❤️ / 🖤)</li>
  <li>Contact form stored in MySQL database</li>
  <li>Dynamic Profile link for each logged-in user</li>
</ul>

<h3>🛍️ Product Features</h3>
<ul>
  <li>Category-wise product browsing</li>
  <li>Horizontal product category slider</li>
  <li>Product detail page using slugs</li>
  <li>Complete product data model including:
    <ul>
      <li>Product name</li>
      <li>Image</li>
      <li>Category</li>
      <li>Short description</li>
      <li>Full description</li>
      <li>Ingredients</li>
      <li>Usage guide</li>
      <li>Benefits (shown as bullet points)</li>
    </ul>
  </li>
  <li>Mobile-friendly UI using Tailwind CSS</li>
</ul>

<h3>🗂️ Admin Features</h3>
<ul>
  <li>Add / Edit / Delete Products</li>
  <li>Manage Categories</li>
  <li>View contact form messages</li>
  <li>MySQL database integration</li>
</ul>

<hr>

<h2>🛠️ Tech Stack</h2>

<table>
  <tr><td><b>Backend</b></td><td>Django (Python)</td></tr>
  <tr><td><b>Frontend</b></td><td>HTML, Tailwind CSS</td></tr>
  <tr><td><b>Database</b></td><td>MySQL</td></tr>
  <tr><td><b>Media Handling</b></td><td>Django Media Storage</td></tr>
  <tr><td><b>Version Control</b></td><td>Git & GitHub</td></tr>
  <tr><td><b>Deployment</b></td><td>PythonAnywhere / Render / Railway</td></tr>
</table>

<hr>

<h2>📂 Project Structure</h2>

<pre>
FitCure/
│── healthapp/
│   ├── models.py       # Product, Category, Wishlist, Contact
│   ├── views.py        # All business logic
│   ├── urls.py         # App routes
│   ├── templates/      # HTML pages
│── static/             # CSS, JS, Images
│── media/              # Uploaded product images
│── fitcure/settings.py # Database & App config
│── manage.py
</pre>

<hr>

<h2>⚙️ Installation & Setup</h2>

<h3>1️⃣ Clone Repository</h3>
<pre>
git clone https://github.com/yourusername/FitCure.git
cd FitCure
</pre>

<h3>2️⃣ Create Virtual Environment</h3>
<pre>
python -m venv env
env\Scripts\activate      <!-- Windows -->
source env/bin/activate   <!-- Linux/Mac -->
</pre>

<h3>3️⃣ Install Dependencies</h3>
<pre>
pip install -r requirements.txt
</pre>

<h3>4️⃣ Configure MySQL (settings.py)</h3>
<pre>
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'fitcure_db',
        'USER': 'root',
        'PASSWORD': 'yourpassword',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
</pre>

<h3>5️⃣ Apply Migrations</h3>
<pre>
python manage.py makemigrations
python manage.py migrate
</pre>

<h3>6️⃣ Create Admin User</h3>
<pre>
python manage.py createsuperuser
</pre>

<h3>7️⃣ Start Django Development Server</h3>
<pre>
python manage.py runserver
</pre>

<p>Open in browser: <b>http://127.0.0.1:8000/</b></p>

<hr>

<h2>🎯 Core Functionalities</h2>

<h3>🔸 Product Model Features</h3>
<ul>
  <li>Slug-based product pages</li>
  <li>Category relationships</li>
  <li>Detailed product information</li>
</ul>

<h3>🔸 Category System</h3>
<ul>
  <li>Scrollable horizontal design</li>
  <li>Responsive mobile layout</li>
</ul>

<h3>🔸 Wishlist Feature</h3>
<ul>
  <li>❤️ Red heart → Product added</li>
  <li>🖤 Black heart → Not in wishlist</li>
  <li>Unique for each user</li>
</ul>

<h3>🔸 Contact Form</h3>
<ul>
  <li>Name</li>
  <li>Email</li>
  <li>Message</li>
  <li>Stored in MySQL</li>
</ul>

<hr>




<h2>👤 Author</h2>
<p>
<b>Kushal Ner</b><br>
Python & Django Developer<br>
India 🇮🇳
</p>
