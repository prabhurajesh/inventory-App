import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:login/models/productData.dart';
import 'package:login/models/productList.dart';

class ProductDetail extends StatefulWidget {
  int index;
  ProductDetail({this.index});
  @override
  _ProductDetail createState() => _ProductDetail();
}

class _ProductDetail extends State<ProductDetail> {
  ProductData data;

  @override
  void initState() {
    super.initState();
    data = ProductList.list[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Product View"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Product View",
              style: TextStyle(
                  color: Color.fromRGBO(68, 67, 187, 1), fontSize: 18),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      "Product Name",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 123, 1), fontSize: 19),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      data.value1,
                      style: TextStyle(color: Colors.grey[700], fontSize: 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      "Price",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 123, 1), fontSize: 19),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      data.value2,
                      style: TextStyle(color: Colors.grey[700], fontSize: 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 123, 1), fontSize: 19),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.15,
                    child: Text(
                      data.value3,
                      style: TextStyle(color: Colors.grey[700], fontSize: 19),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(255, 0, 123, 1),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Color.fromRGBO(255, 0, 123, 1),
                    //padding: EdgeInsets.all(9),
                    child: Center(
                        child: Text("-",
                            style:
                                TextStyle(color: Colors.white, fontSize: 35))),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      "Supplier Name",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 123, 1), fontSize: 19),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      data.value4,
                      style: TextStyle(color: Colors.grey[700], fontSize: 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.4,
                    child: Text(
                      "Supplier Number",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 123, 1), fontSize: 19),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: width * 0.285,
                    child: Text(
                      data.value5,
                      style: TextStyle(color: Colors.grey[700], fontSize: 19),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(255, 0, 123, 1),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: InkWell(
                    child: Container(
                      color: Color.fromRGBO(255, 0, 123, 1),
                      padding: EdgeInsets.all(8),
                      width: width * 0.3,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Container(
                            child: Text("Delete",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25)),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      _showDialog(context);
                    },
                  ),
                ),
              ]))
        ]));
  }

  void _showDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Delete this Product",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                  //Navigator.pushNamed(context, "/phone");
                },
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                  ProductList.list.removeAt(widget.index);
                  Navigator.pop(context);
                  Fluttertoast.showToast(
                      msg: "Deleted item succesfully",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIos: 2,
                      backgroundColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
              ),
            ],
          );
        });
  }
}
