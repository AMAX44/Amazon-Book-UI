import 'package:amazon/constants.dart';
import 'package:flutter/material.dart';

class BuildFab extends StatefulWidget {
  @override
  _BuildFabState createState() => _BuildFabState();
}

class _BuildFabState extends State<BuildFab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
          ),
          context: context,
          builder: (context) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Shop By',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Constants.kPadding,
                  ),
                  _buildCategory(
                    category: 'Books',
                    iconData: Icons.book,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: 'Video Games',
                    iconData: Icons.sports_esports,
                    color: Colors.deepOrange,
                  ),
                  _buildCategory(
                    category: 'Movie',
                    iconData: Icons.movie,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: 'Grocery',
                    iconData: Icons.local_grocery_store,
                    color: Colors.cyan,
                  ),
                  _buildCategory(
                    category: 'Health & Beauty',
                    iconData: Icons.home,
                    color: Colors.yellow.shade700,
                  ),
                  _buildCategory(
                    category: 'Sports',
                    iconData: Icons.sports_football,
                    color: Colors.red,
                  ),
                  _buildCategory(
                    category: 'Accessories',
                    iconData: Icons.watch,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(
          vertical: Constants.kPadding,
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 2 * Constants.kPadding,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
                Text(
                  category,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
