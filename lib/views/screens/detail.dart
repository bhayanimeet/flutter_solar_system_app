import 'package:flutter/material.dart';
import '../res/global.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Global.animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      upperBound: Global.end,
      lowerBound: Global.begin,
    );

    Global.animationController.forward();

    Global.animationController.addStatusListener((status) {
      if (AnimationStatus.completed == status) {
        Global.animationController.reverse();
      } else if (AnimationStatus.dismissed == status) {
        Global.animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    Global.animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${data['name']}",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 15),
            TweenAnimationBuilder(
                duration: const Duration(seconds: 2),
                tween: Tween<double>(begin: -200, end: 0),
                curve: Curves.easeInOut,
                builder: (context, val, child) {
                  return Transform.translate(
                    offset: Offset(0, val),
                    child: AnimatedBuilder(
                      animation: Global.animationController,
                      builder: (context, widget) => Transform.rotate(
                        angle: Global.animationController.value,
                        child: Image.asset(
                          data['image'],
                          height: 300,
                        ),
                      ),
                    ),
                  );
                }),
            TweenAnimationBuilder(
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                tween: Tween<double>(begin: 200, end: 0),
                builder: (context, val, child) {
                  return Transform.translate(
                    offset: Offset(val, 0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        data['name'],
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(7),
              child: SizedBox(
                height: 550,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 200, end: 0),
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    builder: (context, val, widget) {
                      return Transform.translate(
                        offset: Offset(0, val),
                        child: Text(
                          data['detail'],
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
