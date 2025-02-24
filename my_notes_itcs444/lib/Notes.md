### one way of doing the appBar where the icon will be in the right
```dart
appBar: AppBar(
        //we have to put appBar: bc it is a parameter of Scaffold
        backgroundColor: Colors.green,
        title: //in the title we put every thing that will be in the appBar including text, icons and buttos
        Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text("Latops:"),
        ),
        actions: [
          //The actions property expects a list of widgets not only one. 
          //and we cant specify the padding widget unless it was inside the actions, we cant specify it in the appBar.
          Padding(
            //Padding is a widget and in it we put the amount of padding and we put the child that we want to make padding to
            padding: EdgeInsets.only(right: 50.0),
            child: Icon(Icons.home),
          ),
        ],
      ),
```
### Other way of defining the appBar by putting the icon to the left
```dart
appBar: AppBar(
        //we have to put appBar: bc it is a parameter of Scaffold
        backgroundColor: Colors.green,
        title: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 20.0),
                Text("Labtops"),
              ],
            )),
      ),
```
### Note: We dont put `child:` or `children:` unless it is inside xxx( here )

### Putting my name with color and spacing in the center and adding floatting button.
```dart
body: Center(
        child: Text("Alya",
            style: TextStyle(
              color: Colors.red,
              backgroundColor: Colors.amberAccent,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 100.0,
            )),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.home)),
```

### `Controller`: we use controller to save variable in them and then use the variable in many way, the varable that was initiated as controller is of type class.
- To use controllers first initiate the variables:
```dart
TextEditingController input = TextEditingController();
```
- then use it in the text field to declare that the inputted data in the text field is actually the data that will be saved inside the controller variable
```dart
TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter your name",
                  labelText: "Name"),
              controller: input,
            )
```
- Then if we want to use it we use it like this:
```dart
ElevatedButton(
              onPressed: () => {print(input.text)}, child: Text("Click"))
```

## Example about takikng the hight and width as inputs and calculate the area
```dart
return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter the Hight",
                  labelText: "Hight"),
              controller: hight,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the Width",
                  labelText: "Wedth"),
              controller: wedth,
            ),
          ),
          ElevatedButton(
              child: Text("Calculate Area"),
              onPressed: () => {
                    setState(() {
                      area =
                          double.parse(hight.text) * double.parse(wedth.text);
                    })
                  }),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text("The area is ${area.toStringAsFixed(1)}",
                style: TextStyle(
                  fontSize: 30,
                )),
          )
        ],
      ),
    );
```

## Example about taking information from user and when the user click the "send" button a snack bar appears to confirm the sending.
```dart
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
                // the value is the things that the user inputted in the text field
                this.name = value;
              }),
          // 2- Description Input
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Description"),
                hintText: "Description",
              ),
              onChanged: (value) {
                this.description = value;
              }),
          // 3- Price Input
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Price"),
                hintText: "Price",
              ),
              onChanged: (value) {
                this.price = double.parse(value);
              }),
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[800]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$name , $description , $price are sent'),
                    ),
                  );
                },
                child: Text("Send")),
          )
        ]),
      ),
    );
  }
}
```
## Why are we using the `onChange` in the text field?
```dart
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    label: Text("Name"),
    hintText: "Name",
  ),
  onChanged: (value) {
    this.name = value;  // Updates the variable with the new input
  }
),
```
- It captures the input as the user types.
- It updates the state of the variables without requiring a button press.
- It allows real-time validation, auto-suggestions, and dynamic updates.
- When the user types in the text field, the function inside `onChanged` runs.
- It takes the current text (`value`) that was written in the field and assigns it to the `name` variable.
- This ensures that `name` always has the latest input.
- We cant use onPress in the fields, we use them only on buttons.

## To make any text get shown in live when ever it is written in the text field, do this:
### Instead of this:
```dart
onChanged: (value) {
  name = value;
},
```
### Do this:
```dart
onChanged: (value) {
  setState(() {
    name = value;
  });
},
```
- `onChange` is a function that should be written insude the `Text Fueld`.
