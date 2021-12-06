import 'package:flutter/material.dart';

import 'components/circle_shadow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF303030),
        body: Container(
          alignment: Alignment.center, //for cross axis alignment
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.start,//doesn't work cause width of col = width of child
            children: [
              const CircleShadow(
                circleSize: 145,
                icon: Icon(
                  Icons.multitrack_audio_sharp,
                  color: Color(0xFF28D3ED),
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              // Row(
              //   children:const [
              //   //  Text('8.9'),
              //      LinearProgressIndicator(
              //        minHeight: 2,
              //        color:  Color(0xFF28D3ED),
              //        backgroundColor:Colors.black26,
              //       // valueColor: Colors.red,
              //        value: 0.5,
              //      ),
              //   //  Text('8.9'),
              //   ],
              // ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('23.00'),
                  ),
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    minHeight: 2,
                    color: Color(0xFF28D3ED),
                    backgroundColor: Colors.black26,
                    // valueColor: Colors.red,
                    value: 0.5,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('00.00'),
                  ),
                )
              ]),
              buildLastRow(),
            ],
          ),
        ));
  }

  Widget buildLastRow() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircleShadow(
              circleSize: 60,
              icon: Icon(
                Icons.fast_rewind,
                color: Color(0xFF28D3ED),
                size: 20,
              ),
            ),
            CircleShadow(
              circleSize: 80,
              icon: Icon(
                Icons.play_arrow,
                color: Color(0xFF28D3ED),
                size: 20,
              ),
            ),
            CircleShadow(
              circleSize: 60,
              icon: Icon(
                Icons.fast_forward,
                color: Color(0xFF28D3ED),
                size: 20,
              ),
            ),
          ]),
    );
  }
}
