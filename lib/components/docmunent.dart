
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class DocumentCard extends StatelessWidget {
  final String title, svSrc, amountOfFiles;
  final double numOfFiles;
  const DocumentCard({
    super.key,
    required this.title,
    required this.svSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(0.15),
          ),
          borderRadius: BorderRadius.circular(defaultPadding)),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svSrc),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '$amountOfFiles Files',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white70, fontSize: 10),
                )
              ],
            ),
          )),
          Text('${numOfFiles}GB')
        ],
      ),
    );
  }
}
