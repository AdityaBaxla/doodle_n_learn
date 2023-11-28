import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final SignatureController _controller = SignatureController(
    penColor: Colors.black,
    penStrokeWidth: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Signature(
              controller: _controller,
              height: 200,
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //clear drawing
                _controller.clear();
              },
              child: Text('clear'))
        ],
      )),
    );
  }
}
