import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/models/productData.dart';
import 'package:login/models/productList.dart';
import 'package:login/screens/addingNewProduct.dart';
import 'package:login/screens/productDetails.dart';

class AddedProducts extends StatefulWidget {
  @override
  _AddedProducts createState() => _AddedProducts();
}

class _AddedProducts extends State<AddedProducts> {
  List<ProductData> productList = ProductList.list;

  @override
  void initState() {
    super.initState();
    Fluttertoast.showToast(
        msg: "Items Added Successfully",
        toastLength: Toast.LENGTH_SHORT,
        //gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.greenAccent,
        textColor: Colors.white,
        fontSize: 16.0);
    setState(() {
      if (productList.length < 0) {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //ProductList.list.add(productData);
    // print(list.length);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Inventory App Stage 2 ",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  Navigator.pushNamed(context, '/addingNewProduct');
          Navigator.pop(context);
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color.fromRGBO(255, 0, 123, 1),
      ),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            //print(productList.length)
            return Card(
              child: Container(
                height: height * 0.11,
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Container(
                    height: height * 0.045,
                    child: Text(
                      (index + 1).toString() + ")" + productList[index].value1,
                      style: TextStyle(
                          color: Color.fromRGBO(68, 67, 187, 1), fontSize: 25),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: Text(
                      "Price: " + productList[index].value2 + " S.R ",
                    ),
                  ),
                  trailing: Container(
                    width: width * 0.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Qunatity: " + productList[index].value3,
                            style: TextStyle(
                                color: Color.fromRGBO(68, 67, 187, 1),
                                fontSize: 16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                width: 85,
                                color: Color.fromRGBO(255, 0, 123, 1),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.shopping_cart,
                                        color: Colors.white),
                                    Text(
                                      "Price",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )
                                  ],
                                )),
                            InkWell(
                              child: Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  width: 85,
                                  color: Color.fromRGBO(255, 0, 123, 1),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Icon(Icons.edit, color: Colors.white),
                                      Text(
                                        "Edit",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProductDetail(index: index)));
                  },
                ),
              ),
            );
          }),
    );
  }
}
