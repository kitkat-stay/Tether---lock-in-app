import 'package:flutter/material.dart';
void main() => runApp(const TetherApp());
class TetherApp extends StatelessWidget {
  const TetherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Color(0xFF0A0A0A), primaryColor: Color(0xFFFFD700)),
      home: const MainNav(),
    );
  }
}
class MainNav extends StatefulWidget {
  const MainNav({super.key});
  @override
  State<MainNav> createState() => _MainNavState();
}
class _MainNavState extends State<MainNav> {
  int _index = 0;
  final pages = const [FeedScreen(), GroupsScreen(), CameraScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFFFFD700),
        unselectedItemColor: Colors.white54,
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'FYP'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Groups'),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Study'),
        ],
      ),
    );
  }
}
class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('FYP FEED - Black & Gold Timelapses', style: TextStyle(color: Color(0xFFFFD700), fontSize: 20)));
  }
}
class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('GROUPS - Lock in with friends'));
  }
}
class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('CAMERA - Record study session'));
  }
}
