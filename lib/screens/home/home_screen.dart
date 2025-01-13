import 'package:flutter/material.dart';
import 'package:pokeflutter/screens/home/widget/sort_by_order_widget.dart';
import 'package:pokeflutter/screens/home/widget/sort_by_type_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icon/ic_pokeball.png"),
            ),
            Text(
              'Pokédex',
              style: TextStyle(
                color: Colors.white,
                fontSize: theme.textTheme.displayLarge?.fontSize,
                fontWeight: theme.textTheme.displayLarge?.fontWeight,
              ),
              // appBar title을 왼쪽으로 정렬
            ),
          ],
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: <Widget>[
        const SortByOrderWidget(),
        const SortByTypeWidget(),
      ].elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Type',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
