import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'user.dart';

class Foodvlog1 extends StatelessWidget {
  final User users;
  Foodvlog1({this.users});

  @override
  Widget build(BuildContext context) {
    return (
      Card(
        margin: EdgeInsets.all(16),
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Top side Image
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                 image:DecorationImage(
                  image:AssetImage( users.image),
                   fit:BoxFit.cover,
                 ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
            ),
            //Descreption box
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    users.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    users.des,
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmoothStarRating(
                        starCount: 5,
                       rating:users.rating,
                        size: 18,
                        color: Colors.orange,
                        borderColor: Colors.orange,
                      ),
                      Text(
                       users.price,
                        
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
