import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Local Import
import 'package:hello_world/components/speaking_card.dart';

class SchoolActivitiesScreen extends StatefulWidget {
  const SchoolActivitiesScreen({Key? key}) : super(key: key);

  @override
  _SchoolActivitiesScreenState createState() => _SchoolActivitiesScreenState();
}

class _SchoolActivitiesScreenState extends State<SchoolActivitiesScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String _language = 'English';

  _loadLanguage() async {
    final SharedPreferences prefs = await _prefs;
    final String language = prefs.getString('language') ?? 'English';
    setState(() {
      _language = language;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadLanguage();
  }

  final Map<String, List<Map<String, dynamic>>> _data = {
    'English': [
      {
        'icon': 'assets/images/school-building.png',
        'title': 'School Time',
        'voice': 'schooltime_e.mp3',
      },
      {
        'icon': 'assets/images/homepage.png',
        'title': 'Go Home',
        'voice': 'home_e.mp3',
      },
      {
        'icon': 'assets/images/book.png',
        'title': 'Need Book',
        'voice': 'book_e.mp3',
      },
      {
        'icon': 'assets/images/pen.png',
        'title': 'Need Pen',
        'voice': 'pen_e.mp3',
      },
      {
        'icon': 'assets/images/pencil.png',
        'title': 'Need Pencil',
        'voice': 'pencil_e.mp3',
      },
    ],
    'Hindi': [
      {
        'icon': 'assets/images/school-building.png',
        'title': 'स्कूल समय',
        'voice': 'schooltime_h.mp3',
      },
      {
        'icon': 'assets/images/homepage.png',
        'title': 'घर जाना है',
        'voice': 'home_h.mp3',
      },
      {
        'icon': 'assets/images/book.png',
        'title': 'पुस्तक चाहिए',
        'voice': 'book_h.mp3',
      },
      {
        'icon': 'assets/images/pen.png',
        'title': 'पेन चाहिए',
        'voice': 'pen_h.mp3',
      },
      {
        'icon': 'assets/images/pencil.png',
        'title': 'पेंसिल चाहिए',
        'voice': 'pencil_h.mp3',
      },
    ],
    'Gujarati': [
      {
        'icon': 'assets/images/school-building.png',
        'title': 'શાળાનો સમય',
        'voice': 'schooltime_g.mp3',
      },
      {
        'icon': 'assets/images/homepage.png',
        'title': 'ઘરે જવું',
        'voice': 'home_g.mp3',
      },
      {
        'icon': 'assets/images/book.png',
        'title': 'પુસ્તક જોઈએ',
        'voice': 'book_g.mp3',
      },
      {
        'icon': 'assets/images/pen.png',
        'title': 'પેન જોઈએ',
        'voice': 'pen_g.mp3',
      },
      {
        'icon': 'assets/images/pencil.png',
        'title': 'પેંસિલ જોઈએ',
        'voice': 'pencil_g.mp3',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Activities'),
      ),
      body: Center(
          child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: _data[_language]!.map((Map<String, dynamic> data) {
                return SpeakingCard(
                  icon: data['icon'],
                  title: data['title'],
                  voice: data['voice'],
                );
              }).toList(),
            ),
          ),
        ],
      )),
    );
  }
}
