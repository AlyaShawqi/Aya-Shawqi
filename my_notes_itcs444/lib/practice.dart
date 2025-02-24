// import 'package:flutter/material.dart';

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// class _PracticeState extends State<Practice> {
//   //here we created variablethat is called input and this variable of type class,
//   //we made it of type class so we can call it later and do many things to it.
//   TextEditingController hight = TextEditingController();
//   TextEditingController wedth = TextEditingController();
//   double area = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(50),
//             child: TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "enter the Hight",
//                   labelText: "Hight"),
//               controller: hight,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(50),
//             child: TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "Enter the Width",
//                   labelText: "Wedth"),
//               controller: wedth,
//             ),
//           ),
//           ElevatedButton(
//               child: Text("Calculate Area"),
//               onPressed: () => {
//                     setState(() {
//                       area =
//                           double.parse(hight.text) * double.parse(wedth.text);
//                     })
//                   }),
//           Padding(
//             padding: EdgeInsets.all(30),
//             child: Text("The area is ${area.toStringAsFixed(1)}",
//                 style: TextStyle(
//                   fontSize: 30,
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
      ),
      title: "Home Page",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name = "", description = "";
  double? price = 0;
  getname(name) {
    this.name = name;
  }

  getdescription(description) {
    this.description = description;
  }

  getprice(price) {
    this.price = double.parse(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          // 1- Name Input
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Name"),
              hintText: "Name",
            ),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          // 2- Description Input
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Description"),
                hintText: "Description",
              ),
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              }),
          // 3- Price Input
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Price"),
                hintText: "Price",
              ),
              onChanged: (value) {
                setState(() {
                  price = double.parse(value);
                });
              }),
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue[800]),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$name , $description , $price are sent'),
                    ),
                  );
                },
                child: Text("Send")),
          ),

          Text("$name , $description , $price")
        ]),
      ),
    );
  }
}
