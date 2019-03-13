import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom nav bar'),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => debugPrint("menu clicked"),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('search pressed'),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'bottom navigation',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic),
            ),
            InkWell(
              child: Text('Denhtlai'),
              onTap: () => debugPrint('go to denhtlai website'),
            ),
            CustomButton()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>debugPrint('floating button pressed'),
        backgroundColor: Colors.green.shade300,
        tooltip: 'add item',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green.shade200,), title: Text('Home',style: TextStyle(color: Colors.green.shade200),),),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,color: Colors.green.shade200), title: Text('Favorite',style: TextStyle(color: Colors.green.shade200),)),
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.green.shade200), title: Text('Post',style: TextStyle(color: Colors.green.shade200),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.green.shade200), title: Text('search',style: TextStyle(color: Colors.green.shade200),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.green.shade200), title: Text('profile',style: TextStyle(color: Colors.green.shade200),)),
        ],
        onTap: (int i) => debugPrint('Hey touch the $i'),
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar=SnackBar(content: Text("Hello! Guesture"),);
        Scaffold.of(context).showSnackBar(snackBar);

      },
      child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(5.5)
          ),
        child: Text('First Button!',style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}