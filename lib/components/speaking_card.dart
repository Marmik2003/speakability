import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class SpeakingCard extends StatelessWidget {
  String icon;
  String title;
  String voice;

  SpeakingCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.voice,
  }) : super(key: key);

  final Soundpool _soundpool = Soundpool(streamType: StreamType.music);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        int soundId = await rootBundle
            .load('assets/voices/$voice')
            .then((ByteData soundData) {
          return _soundpool.load(soundData);
        });
        _soundpool.play(soundId);
        print('here');
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.20,
        height: MediaQuery.of(context).size.width * 0.20,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(icon),
                width: MediaQuery.of(context).size.width * 0.10,
                height: MediaQuery.of(context).size.width * 0.10,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
