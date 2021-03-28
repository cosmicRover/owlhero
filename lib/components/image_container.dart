import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owlhero/components/text_component.dart';

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final String bio;
  final String name;

  ImageContainer(this.imageUrl, this.bio, this.name);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              child: Image.asset('$imageUrl', fit: BoxFit.cover,),
            ),
//            Positioned(
//                top: 250,
//                left: 12,
//                child: Container(
//                  color: Colors.black,
//                  child: Text(
//                    name,
//                    style: GoogleFonts.workSans(
//                      color: Colors.white,
//                      fontSize: 22.0,
//                      fontWeight: FontWeight.w600,
//                    ),
//                  ),
//                )),
//            Positioned(
//                top: 280,
//                left: 12,
//                right: 12,
//                child: Container(
//                  color: Colors.black,
//                  width: width,
//                  child: Column(
//                    children: [
//                      Text(
//                        bio,
//                        style: GoogleFonts.workSans(
//                          color: Colors.white,
//                          fontSize: 16.0,
//                          fontWeight: FontWeight.w400,
//                        ),
//                      )
//                    ],
//                  ),
//                )),
          ],
        ));
  }
}
