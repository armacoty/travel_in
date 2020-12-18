import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:flutter_tts/flutter_tts.dart';

class ARPage extends StatefulWidget {
  @override
  _ARPageState createState() => _ARPageState();
}

class _ARPageState extends State<ARPage> {
  ArCoreController arCoreController;
  FlutterTts flutterTts = FlutterTts();

  void say(String s) async {
    var voices = flutterTts.getVoices;
    print(voices);
    // await flutterTts.setVoice({"name": "Name", "locale": "ru-RU"});
    await flutterTts.setLanguage("ru-RU");
    await flutterTts.speak(s);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;

    arCoreController.onNodeTap = (name) => onTapHandler(name);
    arCoreController.onPlaneTap = _handleOnPlaneTap;
  }

  void onTapHandler(String name) => print("ГИД: КАСАНИЕ");

  void _handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;
    _addGuide(hit);
  }

  void _addGuide(ArCoreHitTestResult plane) {
    print("HIT");
    var foxNode = ArCoreReferenceNode(
      name: "untitled.sfb",
      object3DFileName: "untitled.sfb",
      position: plane.pose.translation,
      rotation: plane.pose.rotation,
    );
    arCoreController.addArCoreNodeWithAnchor(foxNode);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
