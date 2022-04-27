import 'package:flutter/material.dart';
import 'package:jersey_shop/main.dart';
class ProductDetails extends StatefulWidget {
  final product_det_name;
  final product_det_price;
  final product_det_pic;

  ProductDetails({
    this.product_det_name,
    this.product_det_pic,
    this.product_det_price,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.teal[300],
        title: Text('JerseyShop'),


      ),
      body: new ListView(
        children: [
          new Container(
            height: 300,
            child: GridTile(
                child: Container(
                    color: Colors.white,
                    child: Image.asset(widget.product_det_pic)),
                footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: new Text(widget.product_det_name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text("\$${widget.product_det_price}",
                                  style: TextStyle(color: Colors.black87),
                                  textAlign: TextAlign.right)),
                        ],
                      ),
                    ))),
          ),
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        showDialog(context: context,
                        builder:(context){
                          return new AlertDialog(
                            title:new Text("Size"),
                            content: new Text("Choose size"),
                            actions:<Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text ("Close"),)
                            ],

                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Row(children: [
                        Expanded(child: new Text("Size")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ]))),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder:(context){
                          return new AlertDialog(
                            title:new Text("Qty"),
                            content: new Text("Choose quantity"),
                            actions:<Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text ("Close"),)
                            ],

                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation:0.2,
                  child: new Text("BUY NOW")
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red,  onPressed: () {  },),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed:(){})

            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Flaunt our custom-made, high quality fabric jerseys as you support your team to reach the pinnacle of football(Not applicable to Spurs). Let your rivals know what flows through your veins, Let the passion in you takeover. ")
          )
        ],
      ),
    );
  }
}
