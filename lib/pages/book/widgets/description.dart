import 'package:amazon/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildDescription() => [
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(Constants.kPadding),
          child: SingleChildScrollView(
            child: Text(
              'Few suits into might take scape childe steel. Oer but the given save adieu, his aye sacred of some, break other and land most hellas forgot pride, the love like breast yet given woe, losel mammon to from his full was riot loved that, been had so in moths delight. Now sins loathed mirthful name is dear and. Sadness mote might of losel, he of know bower bidding at, fondly sea misery been vaunted his visit other, more pomp pollution only loved fellow upon to in pollution, thence made minstrels breast would to soul him, he not alone thy bliss,.',
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(Constants.kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Share'),
            TextButton(
              onPressed: () {},
              child: Text(
                'One Click Purchase',
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: Constants.kPadding,
                ),
                backgroundColor: Colors.deepOrange,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
