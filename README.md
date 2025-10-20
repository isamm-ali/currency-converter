# currency-converter
My first Flutter mini project — a simple Currency Converter app (USD → INR) built using Flutter and Dart. A beginner-friendly project to understand Stateful Widgets, user input, and basic UI design.

# 💱 Currency Converter App (Flutter)

A simple **Currency Converter app (USD → INR)** built using **Flutter** and **Dart**.  
This is my **first Flutter mini project** as a beginner, focused on understanding:
- Stateful Widgets and `setState()`
- TextField input handling
- Clean and minimal UI design

---

## 📱 Features
- Convert USD to INR instantly  
- Simple and elegant user interface  
- Real-time calculation using user input  
- Beginner-friendly project structure  

---

## 🧩 Tech Stack
- **Framework:** Flutter  
- **Language:** Dart  

---

🧠 Learnings

This project helped me understand:
The basics of Flutter widgets
Managing app state using setState()
Designing responsive and aesthetic UIs

🌟 Future Improvements
Add real-time currency API integration
Multi-currency support
Dark mode toggle

❄️ Widget Tree - 
MyApp (StatefulWidget)
└── MaterialApp
    └── Scaffold
        ├── backgroundColor: Color(219, 194, 166)
        ├── appBar: AppBar
        │   ├── title: Text("Currency Converter")
        │   ├── centerTitle: true
        │   └── backgroundColor: Color(65, 74, 55)
        └── body: Center
            └── Column (mainAxisAlignment: center)
                ├── Container (Title Box)
                │   ├── padding: 10
                │   ├── margin: 25
                │   ├── color: Color(65, 74, 55)
                │   └── Text("- Convert USD to INR -")
                │
                ├── Container (TextField Wrapper)
                │   ├── margin: 6
                │   ├── padding: 10
                │   └── TextField
                │       ├── controller: textEditingController
                │       ├── decoration: InputDecoration
                │       │   ├── hintText: "Enter the amount in USD"
                │       │   ├── prefixIcon: Icon(Icons.attach_money)
                │       │   ├── fillColor: white
                │       │   ├── enabledBorder: OutlineInputBorder(...)
                │       │   └── focusedBorder: OutlineInputBorder(...)
                │       └── keyboardType: numberWithOptions(decimal: true)
                │
                ├── TextButton ("Convert")
                │   ├── onPressed: setState → update result
                │   ├── style: TextButton.styleFrom(...)
                │   └── child: Text("Convert")
                │
                └── Container (Result Display)
                    ├── margin: 36
                    ├── padding: 12
                    ├── width: 500
                    ├── decoration: BoxDecoration
                    │   ├── color: Color(65, 74, 55)
                    │   └── borderRadius: 50
                    └── Text("INR: ₹$result")


🧑‍💻 Author
Isam Ali
📍 Beginner Flutter Developer
isamali.work@gmail.com

