// import 'package:portfolio/core/extensions/index.dart';
// import 'package:portfolio/gen/assets.gen.dart';
// import 'package:flutter/material.dart';

// class SearchBar extends StatelessWidget {
//   final double? width;
//   const SearchBar({
//     Key? key,
//     this.width,
//     required this.hintText,
//   }) : super(key: key);

//   final String hintText;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: 48,
//         width: width,
//         child: TextFormField(
//           onChanged: (text) {},
//           style: context.bodyText1?.copyWith(
//               fontWeight: FontWeight.w400, letterSpacing: .1, fontSize: 18),
//           decoration: InputDecoration(
//               hintText: hintText,
//               suffixIcon: SizedBox.square(
//                   dimension: 18,
//                   child: Center(child: Assets.svg.search.svg()))),
//         ));
//   }
// }
