import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:jersey_shop/components/hor_list.dart';
import 'package:jersey_shop/components/products.dart';
import 'package:jersey_shop/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_car = new Container(
        height: 200.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/car1.png'),
            AssetImage('images/car2.png'),
          ],
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 2000),
          dotSize: 3.5,
          indicatorBgPadding: 6.0,
        ));
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.teal[300],
        title: Text('JerseyShop'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          new IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text('KV'),
            accountEmail: Text('reachkvaditya@gmail.com'),
            currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.black87,
                    ))),
            decoration: new BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.green,),

            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.deepOrange,),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
            child: ListTile(
              title: Text('Shopping cart'),
              leading: Icon(Icons.shopping_basket, color: Colors.brown[800]),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.cyan),
            ),
          ),
        ],
      )),
      body: new ListView(
        children: <Widget>[
          image_car,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
          HorList(),
          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Text('Product List'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
