# 💬 The Gossip Project - MVC Ruby Edition 🗣️

## 📖 Description

🌶️ My first Ruby project with MVC architecture! A gossip application where you can create, read and delete all the juicy secrets you want.
Share your most delicious rumors in this app that follows the Model-View-Controller architecture! 🎭

## 🛠️ Prerequisites

- Ruby (version 2.7 or higher)
- Terminal/Command line interface
- CSV gem (included in Ruby by default)

## 📦 Installation

1. Clone the repository on your local machine
2. Navigate to the project directory
3. Create the database folder:

```bash
mkdir db
```

4. No additional dependencies required - pure Ruby magic! ✨

## 🎮 How to Use

1. Launch the application with:

```bash
ruby app.rb
```

2. Choose your action from the main menu:

   ```
   🎭 Welcome petite comère ! 🎭

   🤔 Que veux tu faire ?

   1. ✍️  Créer un gossip.
   2. 👀 Consulter un gossip.
   3. 🗑️  Supprimer un gossip.
   4. 👋 Quitter l'app.
   ```

3. **Create a gossip**: Enter your name and your juicy gossip 🌶️

4. **View gossips**: Display all saved gossips 📰

5. **Delete a gossip**: Choose the number of the gossip to eliminate 💥

## 🏗️ Architecture

The project follows the **MVC (Model-View-Controller)** architecture:

```
📁 Project Structure
├── 📄 app.rb                 # Entry point
├── 📁 lib/
│   └── 📁 app/
│       ├── 🚦 router.rb      # Router - Navigation
│       ├── 🎛️ controller.rb  # Controller - Business logic
│       ├── 👁️ view.rb        # View - User interface
│       └── 💾 gossip.rb      # Model - Data management
├── 📁 db/
│   └── 📄 gossips.csv        # CSV database
├── 📄 Gemfile
├── 📄 Gemfile.lock
└── 📄 README.md
```

## 🎯 Features

- ✅ **Complete MVC architecture**
- ✅ **Full CRUD functionality** (Create, Read, Delete)
- ✅ **CSV persistence**
- ✅ **Intuitive user interface** with emojis
- ✅ **User input validation**
- ✅ **Robust error handling**
- ✅ **Automatic gossip numbering**
- ✅ **Deletion confirmations**

## 🔧 Components

### 🚦 Router (`router.rb`)

- Displays the main menu
- Handles navigation between actions
- Processes user choices

### 🎛️ Controller (`controller.rb`)

- Orchestrates interactions between View and Model
- Contains business logic
- Manages data flow

### 👁️ View (`view.rb`)

- User interface (puts/gets)
- Gossip display
- User data input

### 💾 Model (`gossip.rb`)

- Gossip class with author and content attributes
- Save methods (save)
- Read methods (self.all)
- Delete methods (self.destroy)

## 📊 Database

Gossips are stored in `db/gossips.csv`:

```csv
Alice,I love Ruby!
Bob,MVC is awesome
Claire,Gossips are fun
```

## 🎨 Interface

```
🎭 Welcome petite comère ! 🎭

📰 Voici les gossips :

1. 👤 Alice, nous partage : 💭 I love Ruby!
2. 👤 Bob, nous partage : 💭 MVC is awesome
3. 👤 Claire, nous partage : 💭 Gossips are fun

🎯 ---Quel gossip veux tu supprimer ?---
🔢 Entre le numéro du gossip maintenant :
⚡ > 2

✅ Le gossip a été supprimé avec succès !! 🎉
```

## 🚀 Future Improvements

- 🗃️ Migration to a real database (SQLite)
- 🔍 Search functionality by author
- ✏️ Edit existing gossips
- 📅 Add timestamps
- 🎨 Graphical interface with a gem like Shoes
- 🌐 Web version with Sinatra

## 🐛 Known Issues

- Gossips are stored in CSV (limitations for large volumes)
- No validation for gossip length
- Permanent deletion without trash bin

## 🎓 Learning Objectives

This project demonstrates mastery of:

- **MVC Architecture** fundamentals
- **Object-Oriented Programming** in Ruby
- **File manipulation** with CSV
- **User interface design** in terminal
- **Error handling** and input validation
- **Class vs instance methods** (`self.all` vs `save`)

---

**Built with ❤️ and Ruby as part of learning MVC architecture!**

🌶️ _"A gossip a day keeps the boredom away"_ 🌶️
