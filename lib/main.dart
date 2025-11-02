import 'package:flutter/material.dart';
import 'screens/card_demo.dart';
import 'screens/listview_demo.dart';
import 'screens/gridview_demo.dart';
import 'screens/stack_demo.dart';
import 'screens/sliver_demo.dart';

void main() {
  runApp(const Week10App());
}

class Week10App extends StatelessWidget {
  const Week10App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 10 Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 10 Flutter Widgets")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const CardDemo())),
              child: const Text("Card Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ListViewDemo())),
              child: const Text("ListView Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const GridViewDemo())),
              child: const Text("GridView Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const StackDemo())),
              child: const Text("Stack Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SliverDemo())),
              child: const Text("Sliver (CustomScrollView) Demo"),
            ),
          ],
        ),
      ),
    );
  }
}
