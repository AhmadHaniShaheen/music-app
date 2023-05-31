import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void paly(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$number.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            containerVoice(voiceNumber: 1, color: const Color(0xff81D4FA)),
            containerVoice(voiceNumber: 2, color: const Color(0xff64B5F6)),
            containerVoice(voiceNumber: 3, color: const Color(0xff29B6F6)),
            containerVoice(voiceNumber: 4, color: const Color(0xff03A9F4)),
            containerVoice(voiceNumber: 5, color: const Color(0xff039BE5)),
            containerVoice(voiceNumber: 6, color: const Color(0xff0277BD)),
            containerVoice(voiceNumber: 7, color: const Color(0xff01579B)),
          ],
        ),
      ),
    );
  }

  Expanded containerVoice({required int voiceNumber, required Color color}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          paly(voiceNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
