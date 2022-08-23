import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    final pageState = IndexedPage.of(context);
    final selectedIndex = pageState.index;
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: List.generate(
          pageState.stacks.length,
          (index) => PageStackNavigator(
            key: ValueKey(index),
            stack: pageState.stacks[index],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          pageState.index = index;
        }),
        items: [
          BottomNavigationBarItem(icon: Container(), label: 'First'),
          BottomNavigationBarItem(icon: Container(), label: 'Second'),
        ],
      ),
    );
  }
}
