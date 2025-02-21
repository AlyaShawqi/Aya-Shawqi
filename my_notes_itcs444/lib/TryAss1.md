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
          //The actions property expects a list of widgets not only one. and we cant specify the padding widget unless it was inside the actions, we cant specify it in the appBar.
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
### Putting my name with color and spacing in the center and adding floatting button.