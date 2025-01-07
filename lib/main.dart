
import 'package:flutter/material.dart';
import 'package:restaurant_app/model/Item.dart';

import 'Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Item> items=[
    Item.all("assets/images/pasta.jpg","Pasta","1200","4"),
    Item.all("assets/images/bbq.jpg","BBQ","800","5"),
    Item.all("assets/images/burger.jpg","Burger","600","4.5"),
    Item.all("assets/images/pizza.jpg","Pizza","2600","5"),
    Item.all("assets/images/fried chicken.jpg","Fried Chicken","1100","4"),
    Item.all("assets/images/fries.jpg","Fries","400","4"),
    Item.all("assets/images/biriyani.jpg","Biriyani","900","3.5"),
    Item.all("assets/images/friedRice.jpg","Fried Rice","700","5"),
    Item.all("assets/images/kottu.jpg","Kottu","800","5"),
    Item.all("assets/images/riceAndCurry.jpg","Rice & Curry","300","5"),
    Item.all("assets/images/noodles.jpg","Noddles","650","3.5"),
    Item.all("assets/images/taco.jpg","Taco","450","5"),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.deepOrange,
            width: double.infinity,
            height: 100,
            child: Row(
              children: [
                SizedBox(width: 40),
                Icon(
                  Icons.restaurant,
                  color: Colors.white,
                  size: 50,
                ),
                SizedBox(width: 100),
                Text(
                  "SHOWDANE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(width: 400),
                Text(
                  "HOME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "CART",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "ORDER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "ABOUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "CONTACT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Grid Section
          Expanded(
            child: GridView.count(
              crossAxisCount: 4, // Number of columns in the grid
              crossAxisSpacing: 20, // Horizontal spacing
              mainAxisSpacing: 20, // Vertical spacing
              padding: EdgeInsets.all(60),
              children: List.generate(items.length, (index) {
                print(index);
                return Card(
                  color: Colors.teal[100],
                  elevation: 50,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [

                      Image.asset(
                        items.elementAt(index).image,
                        width: double.infinity,  // Specify the width
                        height: 200, // Specify the height
                        fit: BoxFit.cover,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          items.elementAt(index).name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                          SizedBox(width: 30),
                          Text(
                              "Rate  "+items.elementAt(index).rate,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                              Icons.star,
                            color: Colors.orange,
                            size: 30,
                          )
                          ]
                      ),

                      Row(
                        children: [
                          SizedBox(width: 30,),
                        Text(
                          "Price  R.S. "+items.elementAt(index).price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                          SizedBox(width: 30,),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                  MaterialPageRoute(builder:(_)=>ItemPage(items.elementAt(index))),
                              );
                            },
                            child: Text("GET",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            ))

                      ],),

                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
