# Address Book - Ruby on Rails Application

A full-featured address book web application built with Ruby on Rails, featuring user authentication and complete CRUD operations for managing contacts.

## 🎯 Features

- **User Authentication**: Secure login and registration system using Devise
- **Contact Management**: Full CRUD (Create, Read, Update, Delete) operations
- **User Isolation**: Each user can only access their own contacts
- **Phone Formatting**: Automatic phone number formatting (555-123-4567)
- **Email Validation**: Built-in email format validation
- **Responsive Design**: Clean, modern UI with gradient styling
- **Data Persistence**: PostgreSQL database for reliable data storage

## 🛠️ Technologies Used

- **Ruby on Rails 8.0.3** - Web application framework
- **Ruby 3.4.7** - Programming language
- **PostgreSQL** - Database
- **Devise 4.9.4** - Authentication solution
- **Turbo & Stimulus** - Modern JavaScript framework

## 📋 Requirements Met

This application fulfills all assignment requirements:

✅ Ruby on Rails framework  
✅ PostgreSQL database  
✅ User authentication (Devise gem)  
✅ List all contacts  
✅ Add new contacts  
✅ Edit existing contacts  
✅ Delete contacts  
✅ Each contact has: first name, last name, phone number  
✅ Users can only access their own contacts

## 🚀 Local Setup

### Prerequisites

- Ruby 3.4.7
- Rails 8.0.3
- PostgreSQL 17
- Git

### Installation Steps

1. Clone the repository:

```bash
git clone <your-repo-url>
cd address_book
```

2. Install dependencies:

```bash
bundle install
```

3. Configure database:

   - Update `config/database.yml` with your PostgreSQL credentials
   - Ensure PostgreSQL service is running

4. Create and migrate database:

```bash
rails db:create
rails db:migrate
```

5. Start the server:

```bash
rails server
```

6. Visit `http://localhost:3000` in your browser

## 📱 Usage

1. **Sign Up**: Create a new account with email and password
2. **Log In**: Access your personal address book
3. **Add Contact**: Click "New Contact" to add a contact with first name, last name, and phone
4. **View Contacts**: See all your contacts in a clean table format
5. **Edit Contact**: Click "Edit" to update contact information
6. **Delete Contact**: Click "Delete" to remove a contact (with confirmation)
7. **Sign Out**: Securely log out when finished

## 🏗️ Application Architecture

### Models

- **User**: Handles authentication via Devise
- **Contact**: Stores contact information, belongs to a user

### Controllers

- **ContactsController**: Manages all CRUD operations for contacts
- **ApplicationController**: Enforces authentication across the app

### Key Design Decisions

1. **Devise for Authentication**: Industry-standard gem providing secure, tested authentication
2. **User-Contact Association**: `has_many :contacts, dependent: :destroy` ensures contacts are deleted when user is deleted
3. **Strong Parameters**: Protects against mass assignment vulnerabilities
4. **Scoped Queries**: `current_user.contacts` ensures users only access their own data
5. **Validation**: Ensures data integrity (presence validations, phone format)
6. **RESTful Routes**: Follows Rails conventions for predictable URL structure

## 🎨 UI/UX Features

- Gradient backgrounds for visual appeal
- Emoji icons for intuitive navigation
- Responsive layout works on all screen sizes
- Auto-formatting phone numbers as user types
- Confirmation dialogs before deletion
- Color-coded action buttons (green=view, purple=edit, red=delete)

## 🔐 Security Features

- Password encryption via bcrypt
- Email validation
- Authentication required for all contact operations
- User data isolation (users can't access other users' contacts)
- CSRF protection (built into Rails)

## 📊 Database Schema

### Users Table

- id (primary key)
- email (unique, indexed)
- encrypted_password
- created_at
- updated_at

### Contacts Table

- id (primary key)
- first_name (string, required)
- last_name (string, required)
- phone (string, required, formatted)
- user_id (foreign key, indexed)
- created_at
- updated_at

## 🧪 Testing the Application

1. Create a new account
2. Add multiple contacts
3. Edit a contact's information
4. Delete a contact
5. Log out and log back in - verify contacts persist
6. Create a second account - verify isolation (first user's contacts not visible)

## 📦 Deployment

Deployed on Heroku: [Your Heroku URL will go here]

## 👨‍💻 Developer Notes

### Learning Journey

This was my first Ruby on Rails application, built as an aptitude test. The 20-hour learning framework was applied:

- Deconstructed the skill (MVC, CRUD, authentication)
- Learned enough to self-correct (Rails guides, debugging)
- Removed barriers (proper environment setup)
- Practiced deliberately (built real features)

### Challenges Overcome

- PostgreSQL setup on Windows
- Understanding Rails MVC architecture
- Implementing user authentication with Devise
- Database associations (has_many/belongs_to)
- Styling without a CSS framework

### Future Enhancements

- Add search functionality
- Include additional contact fields (email, address, notes)
- Export contacts to CSV
- Contact groups/categories
- Profile pictures for contacts
- Dark mode toggle

## 📄 License

This project was created as a technical assessment.

## 🙏 Acknowledgments

- Ruby on Rails community for excellent documentation
- Devise team for robust authentication solution
- PostgreSQL for reliable data storage

---

**Built with ❤️ as a learning project**
