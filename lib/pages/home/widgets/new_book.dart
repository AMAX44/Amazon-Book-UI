import 'package:amazon/constants.dart';
import 'package:amazon/models/book_model.dart';
import 'package:amazon/pages/book/book_page.dart';
import 'package:flutter/material.dart';

class BuildNewBook extends StatelessWidget {
  final newBook = BookModel.newBook;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: Constants.kPadding,
            horizontal: Constants.kPadding * 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot New Releases',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookPage(
                  book: newBook,
                ),
              ),
            );
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constants.kPadding,
                ),
                child: Card(
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      newBook.image,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Constants.kPadding * 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          newBook.subtitle,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueGrey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('4.8'),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: Constants.kPadding,
                          ),
                          backgroundColor: Colors.deepOrange,
                          primary: Colors.white,
                          minimumSize: Size(5, 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom,
        ),
      ],
    );
  }
}
