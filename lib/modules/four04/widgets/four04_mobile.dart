import 'package:portfolio/constants/image_urls.dart';
import 'package:portfolio/shared/cached_image/cached_image.dart';
import 'package:flutter/material.dart';

class Four04Mobile extends StatelessWidget {
  const Four04Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: CachedImage(
              hash: 'LXRyjWt6%cof%Ka#WCj[_IWCM~WC',
              url: ImageUrls.four04Mobile,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
