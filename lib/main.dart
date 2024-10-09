import 'package:flutter/material.dart';

Color customColor = Color(0xFF7c7ded);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/cat.jpeg',
                width: 200, // Smaller width for the circular image
                height: 200, // Smaller height for the circular image
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5), // Reduced padding
                  width: 80, // Adjusted width for the name container
                  height: 40, // Adjusted height for the name container
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Cat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: customColor,
                      fontSize: 20, // Reduced font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5), // Reduced margin
                  padding: EdgeInsets.all(5), // Reduced padding
                  width: 100, // Adjusted width for the age container
                  height: 40, // Adjusted height for the age container
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Age: 3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: customColor,
                      fontSize: 20, // Reduced font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5), // Reduced padding
                  width: 200, // Adjusted width for the gender container
                  height: 40, // Adjusted height for the gender container
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    border: Border.all(
                      color: Colors.purple.shade100,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Gender: Female',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: customColor,
                      fontSize: 20, // Reduced font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(),
    );
  }
}
