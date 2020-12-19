import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:travel_in/client.dart';

class ARPage extends StatefulWidget {
  @override
  _ARPageState createState() => _ARPageState();
}

class _ARPageState extends State<ARPage> {
  ArCoreController arCoreController;
  FlutterTts flutterTts = FlutterTts();

  Map<String, String> getQuestions() => client.getAttractions().first.questions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ArCoreView(
            onArCoreViewCreated: _onArCoreViewCreated,
            enableTapRecognizer: true,
          ),
          // Container(
          //   color: Colors.green,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              for (String question in getQuestions().keys)
                Card(
                  color: Colors.black,
                  child: MaterialButton(
                    onPressed: () {
                      say(getQuestions()[question]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            question,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }

  void say(String s) async {
    await flutterTts.setPitch(0.5);
    await flutterTts.setLanguage("ru-RU");
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.speak(s);
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
