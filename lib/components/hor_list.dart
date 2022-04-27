import 'package:flutter/material.dart';

class HorList extends StatelessWidget {
  const HorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(imagePath: 'images/germany-flag.jpg', imageLoc: 'Germany'),
          Category(imagePath: 'images/spain.jpg', imageLoc: 'Spain'),
          Category(imagePath: 'images/italy.png', imageLoc: 'Italy'),
          Category(imagePath: 'images/france.png', imageLoc: 'France'),
          Category(imagePath: 'images/england.jpg', imageLoc: 'England')
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String imagePath;
  final String imageLoc;

  Category({
    required this.imagePath,
    required this.imageLoc
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(3.0),
      child: InkWell(onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
                imagePath,
                width: 80.0,
                height: 50.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child:Text(imageLoc),
            )
          ),

        )


      ),);
  }
}
