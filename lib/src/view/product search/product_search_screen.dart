import 'package:flutter/material.dart';
import 'package:qtechtask/src/global_widgets/k_textfield.dart';
import 'package:qtechtask/src/style/k_color.dart';
import 'package:qtechtask/src/style/k_textStyle.dart';
import 'package:qtechtask/src/view/product%20details/product_details_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const KTextField(
              hintText: 'Search here..',
              size: 48,
              icon: Icons.search,
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    bottom: kBottomNavigationBarHeight,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.57,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 34),
                  itemCount: 8,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                         context.nextPage(ProductDetailsScreen());
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset(
                                          'assets/images/potato.png',
                                          fit: BoxFit.fill,
                                          height: 117,
                                        ),
                                        if (index == 0)
                                          Positioned(
                                            top: -10,
                                            right: -10,
                                            child: Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: KColor.pink
                                                      .withOpacity(0.3)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text(
                                                  'স্টকে নেই',
                                                  style: KTextStyle.button
                                                      .copyWith(
                                                          color: KColor.pink),
                                                ),
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                    const SizedBox(height: 19),
                                    FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Lays Classic Family Chips',
                                        style: KTextStyle.button,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          'ক্রয়',
                                          style: KTextStyle.overLine,
                                        ),
                                        const SizedBox(
                                          width: 9.01,
                                        ),
                                        Text(
                                          '৳ 20.00',
                                          style: KTextStyle.bodyText2,
                                        ),
                                        const Spacer(),
                                        Text(
                                          '৳ 20.00',
                                          style: KTextStyle.bodyText2.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'বিক্রয়',
                                          style: KTextStyle.overLine,
                                        ),
                                        const Spacer(),
                                        Text(
                                          '৳ 20.00',
                                          style: KTextStyle.caption1,
                                        ),
                                        const Spacer(),
                                        Text(
                                          'লাভ',
                                          style: KTextStyle.overLine,
                                        ),
                                        const Spacer(),
                                        Text('৳ 20.00',
                                            style: KTextStyle.caption1),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -10,
                              left: 62,
                              child: Image.asset(
                                'assets/images/add.png',
                                height: 36,
                              ),
                            )
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
