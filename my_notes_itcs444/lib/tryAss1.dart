import 'package:flutter/material.dart';

class Ass1 extends StatefulWidget {
  const Ass1({super.key});

  @override
  _Ass1State createState() => _Ass1State();
}

class _Ass1State extends State<Ass1> {
  int _selectedIndex = 0; // To track which section is shown
  // Method to determine button color based on selection
  Color getButtonColor(int index) {
    return _selectedIndex == index ? Colors.green : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Icon(Icons.home),
            SizedBox(width: 20.0),
            Text("Laptops"),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: getButtonColor(1)),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Text("Show Part 1"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    backgroundColor: getButtonColor(2),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: Text("Show Part 2"),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: _selectedIndex == 1
                ? PartOne()
                : _selectedIndex == 2
                    ? PartTwo()
                    : Center(child: Text("Click a button to show content")),
          ),
        ],
      ),
    );
  }
}

class PartOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is Part 1",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class PartTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is Part 2",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
