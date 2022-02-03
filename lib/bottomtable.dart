import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({ Key? key }) : super(key: key);

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class BottomTabBtn extends StatelessWidget {
  const BottomTabBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
child: IconButton(icon: Icon(Icons.shopping_bag_outlined),onPressed: (){}),
    );
  }
}