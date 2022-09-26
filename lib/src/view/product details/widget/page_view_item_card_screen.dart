import 'package:flutter/material.dart';

class PageviewGallery extends StatefulWidget {
  @override
  _PageviewGalleryState createState() => _PageviewGalleryState();
}

class _PageviewGalleryState extends State<PageviewGallery> {
  final PageController ctrl = PageController(
    viewportFraction: 0.75,
  );

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView.builder(
          controller: ctrl,
          itemCount: 8,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, int index) {
            // Active page
            bool active = index == currentPage;
            return _buildStoryPage(active);
          }),
    );
  }

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() {
      int pos = ctrl.page!.round();
      if (currentPage != pos) {
        {
          setState(() {
            currentPage = pos;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }
}

_buildStoryPage(bool active) {
  // Animated Properties
  final double blur = active ? 10 : 0;
  final double offset = active ? 20 : 0;
  final double top = active ? 0 : 40;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeOutQuint,
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: top, bottom: 50, right: 30),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.white10,
              blurRadius: blur,
              offset: Offset(offset, offset))
        ]),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Image.asset(
        'assets/images/pringles.png',
        fit: BoxFit.contain,
      ),
    ),
  );
}
