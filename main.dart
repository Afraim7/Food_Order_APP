import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(home: profile_page()));

class profile_page extends StatelessWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        bottomOpacity: 0.0,
        centerTitle: true,

        leading: IconButton(
          padding: EdgeInsets.only(left: 20, top: 9),
          iconSize: 25,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          splashColor: Colors.amber[700],
          onPressed: () {},
        ),

        title: Text('My Profile',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontFamily: 'Ubuntu',
              color: Colors.black,
            )),

        backgroundColor: Colors.transparent,
        elevation: 0.0,

      ),


      extendBodyBehindAppBar: true,

      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(color: Colors.grey.shade50),
          ),

          Container(
            margin: new EdgeInsets.only(top: 130, left: 20),
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://i.pinimg.com/originals/84/c7/c4/84c7c4f82bba2df18ef5a5708224d85d.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 120.0,
                  height: 120.0,
                ),
                Column(children: [
                  Container(
                    margin: EdgeInsets.only(left: 2, top: 30),
                    child: Text(
                      'Afraim Evra',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'afraimevra@gmail.com',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.orange,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'User ID: 156A860 ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.orange,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 320, left: 30),
            child: Text(
              'My Card',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 360, left: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.mbna.ca/content/dam/mbna/images/credit-cards/true-line-en.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 350,
            height: 225,
          ),

          Container(
            margin: EdgeInsets.only(top: 650, left: 120),
            height: 45,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: MaterialButton(
              child: Text(
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
              splashColor: Colors.amber[700],
            ),
          ),

        ],
      ),
    );
  }
}
