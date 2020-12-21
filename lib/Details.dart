import 'package:midterma201/book.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(DetailScreen());

class DetailScreen extends StatefulWidget {
  final BookDetail book;
  const DetailScreen({Key key, this.book}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double screenHeight, screenWidth;
  List book;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Book with Details'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 30),
            Container(
              height: screenHeight / 3,
              width: screenWidth / 1.1,
              child: CachedNetworkImage(
                fit: BoxFit.fitHeight,
                imageUrl:
                    "https://slumberjer.com/bookdepo/bookcover/${widget.book.cover}.jpg",
                placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    new Icon(Icons.broken_image),
              ),
            ),
            SizedBox(height: 3),
            Container(
              width: screenWidth / 1.1,
              height: screenHeight / 2,
              child: Card(
                elevation: 6,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(children: <Widget>[
                    Table(defaultColumnWidth: FlexColumnWidth(1.0), children: [
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.blue,
                              alignment: Alignment.centerLeft,
                              height: 65,
                              child: Text("Book ID: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          color: Colors.blue,
                          height: 65,
                          child: Container(
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.bookid,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.greenAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("Title: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          color: Colors.greenAccent,
                          height: 30,
                          child: Container(
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.booktitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.yellowAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("Author: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          height: 30,
                          child: Container(
                              color: Colors.yellowAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.author,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.pinkAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("Price(RM): ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          height: 30,
                          child: Container(
                              color: Colors.pinkAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.price,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.blueGrey,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("Description: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          height: 30,
                          child: Container(
                              color: Colors.blueGrey,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.description,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.purpleAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("Rating: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          height: 30,
                          child: Container(
                              color: Colors.purpleAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.rating,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.redAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("Publisher: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          height: 30,
                          child: Container(
                              color: Colors.redAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.publisher,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                              color: Colors.orangeAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text("ISBN: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ),
                        TableCell(
                            child: Container(
                          height: 30,
                          child: Container(
                              color: Colors.orangeAccent,
                              alignment: Alignment.centerLeft,
                              height: 30,
                              child: Text(
                                ":  " + widget.book.isbn,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        )),
                      ]),
                    ]),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
