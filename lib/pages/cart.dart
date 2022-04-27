import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.teal[300],
        title:
        Text('JerseyShop-Cart'),
        actions: <Widget>[
          new IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),

        ],
      ),



      bottomNavigationBar: new Container(
        color:Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$00"),
            ),),

            Expanded(
              child: new MaterialButton(onPressed:(){},
              child:new Text("Check Out", style: TextStyle(color: Colors.black)),
              color: Colors.greenAccent),

            ),
          ],
        )
      )
    );
  }
}
