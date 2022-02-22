import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies DT"),
      ),
      body: Column(
        children: <Widget>[
          _buildSection("Trending"),
          _buildSection("Upcoming"),
        ],
      ),
    );
  }

  Widget _buildSection(String title) {
    return Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(
        height: 210,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildItem();
          },
        ),
      ),
    ]);
  }

  Widget _buildItem() {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlueAccent.withOpacity(0.2),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              "assets/images/witcher.jpg",
              height: 150,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "The witcher",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "20.09.2021",
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
