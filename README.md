# 📌 Exercícios de Flutter

Este repositório contém exercícios práticos desenvolvidos em Flutter, abordando conceitos básicos de criação de interfaces, widgets e layouts.

---

## 🚀 Exercícios

### 1️⃣ **Flutter Basic Exercise 1**
Este exercício cria uma interface simples com um `AppBar`, um `Container` centralizado e um layout básico usando `Row`.

#### Código:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Use super parameter for 'key'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // Shows the debug banner in the corner
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter is Fun!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Colors.red),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Hi Mom', style: TextStyle(color: Colors.white)),
                const SizedBox(width: 4),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300, // Use non-const color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

### 2️⃣ **Flutter Basic Exercise 2**
Este exercício cria uma interface com um layout mais complexo, utilizando Column, ElevatedButton e estilos personalizados.

#### Código:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Exercise',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Home Page'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hello, World! text with border
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Hello, World!',
                style: TextStyle(fontSize: 16),
              ),
            ),

            const SizedBox(height: 20),

            // A button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
              child: const Text('A button'),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
```
## Explicação:

- **`ThemeData`**: Define o tema do aplicativo, incluindo a cor primária.
- **`Scaffold`**: Estrutura básica com `AppBar` e `body`.
- **`Column`**: Organiza os widgets filhos (`Container`, `SizedBox`, `ElevatedButton`) verticalmente.
- **`ElevatedButton`**: Botão com estilo personalizado (cor de fundo, cor do texto e padding).
- **`SizedBox`**: Adiciona espaçamento entre os widgets.

---

## 📄 Licença

Este projeto está sob a **MIT License** – sinta-se livre para usar e modificar.

