import 'package:amazon/constants.dart';
import 'package:amazon/models/book_model.dart';
import 'package:amazon/pages/book/book_page.dart';
import 'package:flutter/material.dart';

final List<BookModel> books = BookModel.books;

class BuildBookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Constants.kPadding,
                horizontal: Constants.kPadding * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Sellers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('see all'),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: Constants.kPadding,
                    ),
                    backgroundColor: Colors.deepOrange,
                    primary: Colors.white,
                    minimumSize: Size(5, 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: Constants.kPadding * 2,
                    right: Constants.kPadding,
                    left: index == 0 ? Constants.kPadding : 0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookPage(
                            book : books[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              books[index].image,
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].title,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].subtitle,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.blueGrey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}