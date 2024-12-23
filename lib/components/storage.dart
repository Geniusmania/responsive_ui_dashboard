import 'package:flutter/material.dart';
import 'package:index/components/charts.dart';

import '../constants.dart';
import 'docmunent.dart';

class Storage extends StatelessWidget {
  const Storage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
    
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Charts(),
          DocumentCard(
            title: 'Documnent Files',
            amountOfFiles: '1329',
            numOfFiles: 1.3,
            svSrc: 'assets/icons/Documents.svg',
          ),
           DocumentCard(
            title: 'Media Files',
            amountOfFiles: '1329',
            numOfFiles: 15.3,
            svSrc: 'assets/icons/media.svg',
          ), DocumentCard(
            title: 'Other Files',
            amountOfFiles: '1329',
            numOfFiles: 1.3,
            svSrc: 'assets/icons/folder.svg',
          ), DocumentCard(
            title: 'Unknown Files',
            amountOfFiles: '1329',
            numOfFiles: 1.3,
            svSrc: 'assets/icons/unknown.svg',
          )
        ],
      ),
    );
  }
}
