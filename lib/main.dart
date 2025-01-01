import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData myLightTheme = ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blue,
        hintColor: Colors.orange,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, brightness: Brightness.light),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(),
          backgroundColor: Colors.orange,
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Colors.blue)),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue),
              foregroundColor: Colors.blue),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        )),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          labelStyle: const TextStyle(
            fontSize: 15,
          ),
          hintStyle: const TextStyle(
            fontSize: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ));

    ThemeData myDarkTheme = ThemeData(
        useMaterial3: true,
        primaryColor: Color(0xff283449),
        hintColor: Color(0xffffc054),
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo, brightness: Brightness.dark),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff283449), // diawali 0xff
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Color(0xff3d485b),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white70),
          titleMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white70),
          titleSmall: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white70),
          bodyLarge: TextStyle(fontSize: 20, color: Colors.white70),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.white70),
          bodySmall: TextStyle(fontSize: 14, color: Colors.white70),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(),
          backgroundColor: Color(0xff633e73),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Colors.white70)),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white70),
              foregroundColor: Colors.white70),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Color(0xff283449)),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white70),
        )),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xff283449),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          labelStyle: const TextStyle(fontSize: 15, color: Colors.white54),
          hintStyle: const TextStyle(fontSize: 15, color: Color(0xff633e73)),
          floatingLabelStyle: TextStyle(fontSize: 20, color: Color(0xff633e73)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xff633e73)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xff633e73)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.orangeAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.orangeAccent),
          ),
        ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myLightTheme,
      darkTheme: myDarkTheme,
      home: const MyHomePage(title: 'Flutter: Theme'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: SizedBox(
              width: 1200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Title Large',
                      style: Theme.of(context).textTheme.titleLarge),
                  Text('Title Medium',
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('Title Small',
                      style: Theme.of(context).textTheme.titleSmall),
                  Text('Body Text Large',
                      style: Theme.of(context).textTheme.bodyLarge),
                  Text('Body Text Medium',
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text('Body Text Small',
                      style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Nama',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Hobi',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text('Text Button')),
                  const SizedBox(
                    height: 15,
                  ),
                  OutlinedButton(
                      onPressed: () {}, child: const Text('Outlined')),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    onPressed: () {},
                    child: const Text('Elevated Button'),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white, size: 25),
        ));
  }
}
