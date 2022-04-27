import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:particles_flutter/particles_flutter.dart';

void main() {
  runApp(const BetterBackground());
}

class BetterBackground extends StatelessWidget {
  const BetterBackground({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aquarium login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/aquarium.jpeg'),
                  fit: BoxFit.cover)),
          child: ClipRect(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Stack(
              children: [
                CircularParticle(
                  awayRadius: 100,
                  numberOfParticles: 1000,
                  speedOfParticles: 0.4,
                  height: 1000,
                  width: 600,
                  awayAnimationDuration: const Duration(milliseconds: 100),
                  maxParticleSize: 4,
                  isRandSize: true,
                  isRandomColor: true,
                  randColorList: [
                    Colors.amber.withAlpha(100),
                    Colors.redAccent.withAlpha(100),
                    Colors.black.withAlpha(100),
                    Colors.white.withAlpha(100),
                    Colors.lightGreenAccent.withAlpha(100),
                    Colors.red.withAlpha(100),
                    Colors.deepPurple.withAlpha(100),
                    Colors.black26.withAlpha(100),
                    Colors.tealAccent.withAlpha(100),
                  ],
                  awayAnimationCurve: Curves.easeInCubic,
                  connectDots: false,
                ),
                Container(
                  color: Colors.blue.withAlpha(60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: JelloIn(
                          child: SizedBox(
                            child: Image.asset(
                              'assets/logo.png',
                            ),
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                hintText: "用戶名",
                                filled: true,
                                fillColor: Colors.black12,
                                prefixIcon: Icon(
                                  Entypo.user,
                                  color: Colors.lightGreenAccent,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lime, width: 0.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10))))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                hintText: "密碼",
                                filled: true,
                                fillColor: Colors.black12,
                                prefixIcon: Icon(
                                  Elusive.eye_off,
                                  color: Colors.lightGreenAccent,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lime, width: 0.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(5, 5))))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Entypo.play),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 5, bottom: 5),
                                    child: Text('登錄')),
                              ]),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.lime, width: 0.5)),
                            foregroundColor: MaterialStateProperty.all(
                                Colors.lightGreenAccent),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black12),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(10)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
