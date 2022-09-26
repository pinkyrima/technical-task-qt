import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:qtechtask/src/global_widgets/k_textfield.dart';
import 'package:qtechtask/src/style/k_color.dart';
import 'package:qtechtask/src/style/k_textStyle.dart';
import 'package:qtechtask/src/view/product%20details/widget/page_view_item_card_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const KTextField(
              hintText: 'কাঙ্ক্ষিত পণ্যটি কিনুন',
              size: 48,
              icon: Icons.search,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(
                    height: 32,
                  ),

                  /// Pingles
                  SizedBox(height: 308, child: PageviewGallery()),
                  // const SizedBox(
                  //   height: 32,
                  // ),
                  Text(
                    'প্রিংজেলস অনিয়ন চিপস',
                    style: KTextStyle.headline5,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'ব্র্যান্ড:',
                        style:
                            KTextStyle.button.copyWith(color: KColor.darkGray),
                      ),
                      Text(
                        'প্রিংজেলস',
                        style: KTextStyle.button,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      //Spacer(),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: KColor.pink),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'ডিসট্রিবিউটরঃ ',
                        style:
                            KTextStyle.button.copyWith(color: KColor.darkGray),
                      ),
                      Flexible(
                        //fit: BoxFit.fitWidth,
                        child: Text(
                          'মোঃ মবারাক হোসেন',
                          style: KTextStyle.button,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            ListTile(
                              leading: Text('ক্রয়মূল্য',
                                  style: KTextStyle.headline7),
                              trailing:
                                  Text('৳220', style: KTextStyle.headline7),
                            ),
                            ListTile(
                              leading: Text('বিক্রয়মূল্য',
                                  style: KTextStyle.bodyText),
                              trailing:
                                  Text('৳220', style: KTextStyle.bodyText),
                            ),
                            const DottedLine(),
                            ListTile(
                              leading: Text('লাভ', style: KTextStyle.bodyText),
                              trailing: Text('৳30', style: KTextStyle.bodyText),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -55,
                        left: 110,
                        child: Image.asset(
                          'assets/images/polygongrp.png',
                          height: 90,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'বিস্তারিত',
                    style: KTextStyle.headline7
                        .copyWith(color: KColor.neutralBlack),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                      'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে জন্মগ্রহন করে। বাঘ ভাল্লুক তার জীবন যাত্রার পনেরো আনা মুল্ধন নিয়ে আসে প্রকিতির থেকে ',
                      style: KTextStyle.subTitle1),
                  const SizedBox(
                    height: kBottomNavigationBarHeight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
