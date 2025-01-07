import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  var item;
  @override
  State<StatefulWidget> createState() {
    return _PageState(item);
  }
  ItemPage(this.item);
}

  class _PageState extends State<ItemPage>{
  var item;
  _PageState(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body:
          Column(
    children: [
      Row(
          children: [
          Image.asset(
            item.image,
            width: 1000,
            height: 400,
            fit: BoxFit.cover,
          ),
      Column(
        children: [
      Container(
        margin: EdgeInsets.only(bottom: 30,left: 40),
        child: Text(
          item.name,
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 60,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
          Row(
            children: [
          Container(
            margin: EdgeInsets.only( left: 10),
            child: Text(
              "Rate "+item.rate,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
              Icon(
                  Icons.star,
                color: Colors.orange,
                size: 50,
              )
          ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 60,top: 30,left: 40),
            child: Text(
              "Price  R.S. "+item.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),

          Row(

            children: [
              SizedBox(width: 60,),
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.amber,
                  padding: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10)
                ),
                  onPressed: (){
                    print("HI");
                  },
                  child: Text(
                    "ORDER",
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
              ),
              SizedBox(width: 40,),
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.green,
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10)
                ),
                onPressed: (){
                  print("HI");
                },
                child: Text(
                  "CART",
                  style: TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          ],
        
      ),

        ],
      ),

      Container(
        margin: EdgeInsets.only(top: 20,bottom: 20),
        child: Text(
          "Description",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline
          ),
        ),
      ),
      Container(
      margin: EdgeInsets.only(left: 50,right: 50),
        child: Text(
          "SHOWDANE Restaurant is a modern culinary destination that combines innovative flavors with a warm, inviting atmosphere. Known for its creative menu featuring fresh, locally sourced ingredients, SHOWDANE offers a dining experience that delights the senses. Whether you’re enjoying signature dishes like Truffle Risotto or Wagyu Steak, or sipping on expertly crafted cocktails, every visit promises exceptional quality and service. Perfect for any occasion, SHOWDANE makes every meal a memorable experience.",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
        ),
      ),

    ],
          )
    );
  }

  }
