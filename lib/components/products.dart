import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jersey_shop/pages/product_det.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productlist = [
    {
      "name": "Madrid AWAY",
      "picture": "images/madrid2.jpg",
      "price": 1500,
    },
    {
      "name": "Real Madrid",
      "picture": "images/madrid.jpg",
      "price": 1500,
    },
    {
      "name": "Barcelona",
      "picture": "images/Barcelona.png",
      "price": 200,
    },
    {
      "name": "Arsenal",
      "picture": "images/Arsenal.png",
      "price": 1100,
    },
    {
      "name": "Bayern",
      "picture": "images/Bayern.png",
      "price": 1200,
    },
    {
      "name": "Chelsea",
      "picture": "images/Chelsea.jpg",
      "price": 1200,
    },
    {
      "name": "ManCity",
      "picture": "images/City.png",
      "price": 800,
    },
    {
      "name": "Juventus",
      "picture": "images/Juventus.jpg",
      "price": 1000,
    },
    {
      "name": "Liverpool",
      "picture": "images/Liverpool.jpg",
      "price": 1400,
    },
    {
      "name": "Spurs",
      "picture": "images/Spurs.png",
      "price": 300,
    },
    {
      "name": "PSG",
      "picture": "images/PSG.jpg",
      "price": 120,
    },
    {
      "name": "ManUtd",
      "picture": "images/Utd.jpg",
      "price": 120,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productlist.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Single_prod(
                productname: productlist[index]['name'],
                prodpic: productlist[index]['picture'],
                prodprice: productlist[index]['price'],
              ),


          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final productname;
  final prodpic;
  final prodprice;

  Single_prod({
    this.productname,
    this.prodpic,
    this.prodprice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productname,
          child: Material(
            child: InkWell(
              onTap: () =>
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                          builder: (context) =>
                          new ProductDetails(
                            product_det_name: productname,
                            product_det_pic: prodpic,
                            product_det_price: prodprice,
                          ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  padding: EdgeInsets.all(15),
                  child: new Row(children: [
                    Expanded(
                      child: Text(
                        productname, style: TextStyle(fontWeight: FontWeight
                          .bold, fontSize: 18.0),),
                    ),

                    new Text("\$${prodprice}", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),)
                  ],),
                ),
                child: Image.asset(prodpic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
