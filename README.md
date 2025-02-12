# Password Manager - Rails Practice Project

This is a learning repository where I built a practice password manager following the [GoRails Password Manager Tutorial](https://gorails.com/series/password-manager-with-rails-7).

## Technologies & Features

### Core Technologies
- Ruby on Rails 7
- PostgreSQL
- TailwindCSS
- Stimulus.js

### Key Gems
- Devise (Authentication)
- Active Record Encryption

### Main Features

#### Password Management & Security
- Secure password storage using Active Record Encryption
- Non-deterministic encryption for passwords
- Deterministic encryption for usernames (to allow querying)

#### User Permissions & Sharing
- Many-to-many relationships using join tables
- Role-based permissions (owner, editor, viewer)
- Password sharing between users
- Custom authorization methods for different access levels

#### User Interface
- Modern Clipboard API integration for copying credentials
- Stimulus.js controller for clipboard functionality
- Responsive design with TailwindCSS
- SVG icons from Heroicons

## Learning Outcomes
This project provided hands-on experience with:
- Building complex user authorization systems
- Managing sensitive data encryption
- Implementing many-to-many relationships
- Working with modern JavaScript APIs
- Creating a responsive user interface