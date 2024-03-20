import 'package:flutter/material.dart';

class RecetaScreen extends StatefulWidget{
  const RecetaScreen({super.key});

  @override
  State<RecetaScreen> createState() => _RecetaScreenState();
}

class _RecetaScreenState extends State<RecetaScreen> {
  @override
  Widget build(Object context) {
    return const DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.add),),
            Tab(icon: Icon(Icons.traffic),),
            Tab(icon: Icon(Icons.favorite),),
          ]
          ),
        body: TabBarView(
          children: [
            Icon(Icons.add),
            Icon(Icons.traffic),
            Icon(Icons.favorite)
          ],
          ),
      )
      );
  }
}