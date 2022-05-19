import 'package:portfolio/constants/image_urls.dart';
import 'package:portfolio/shared/cached_image/cached_image.dart';
import 'package:flutter/material.dart';

class Four04Desktop extends StatelessWidget {
  const Four04Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .9,
      child: const CachedImage(
        hash: 'LXRyjWt6%cof%Ka#WCj[_IWCM~WC',
        url: ImageUrls.four04,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
