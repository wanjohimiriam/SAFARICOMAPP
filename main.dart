import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _cardTile = <StaggeredTile>[
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
];
List<Widget> _listTile = <Widget>[
  const BodyGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
  const BodyGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
  const BodyGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
  const BodyGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
  const BodyGroundTile(
      backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  const BodyGroundTile(
      backgroundColor: Colors.blue, icondata: Icons.access_alarms),
  const BodyGroundTile(
      backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
  const BodyGroundTile(
      backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
  const BodyGroundTile(
      backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
  const BodyGroundTile(
      backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "GridView",
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
    );
  }
}

class GridView extends StatelessWidget {
  const GridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _cardTile,
          children: _listTile,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}

class BodyGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;

  // ignore: use_key_in_widget_constructors
  const BodyGroundTile({required this.backgroundColor, required this.icondata});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}
