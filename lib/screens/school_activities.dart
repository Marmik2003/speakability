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
      },
      {
        'icon': 'assets/images/homepage.png',
        'title': 'Go Home',
      },
      {
        'icon': 'assets/images/book.png',
        'title': 'Need Book',
      },
      {
        'icon': 'assets/images/pen.png',
        'title': 'Need Pen',
      },
      {
        'icon': 'assets/images/pencil.png',
        'title': 'Need Pencil',
      },
    ],
    'Hindi': [
      {
        'icon': 'assets/images/school-building.png',
        'title': 'स्कूल समय',
      },
      {
        'icon': 'assets/images/homepage.png',
        'title': 'घर जाना है',
      },
      {
        'icon': 'assets/images/book.png',
        'title': 'पुस्तक चाहिए',
      },
      {
        'icon': 'assets/images/pen.png',
        'title': 'पेन चाहिए',
      },
      {
        'icon': 'assets/images/pencil.png',
        'title': 'पेंसिल चाहिए',
      },
    ],
    'Gujarati': [
      {
        'icon': 'assets/images/school-building.png',
        'title': 'શાળાનો સમય',
      },
      {
        'icon': 'assets/images/homepage.png',
        'title': 'ઘરે જવું',
      },
      {
        'icon': 'assets/images/book.png',
        'title': 'પુસ્તક જોઈએ',
      },
      {
        'icon': 'assets/images/pen.png',
        'title': 'પેન જોઈએ',
      },
      {
        'icon': 'assets/images/pencil.png',
        'title': 'પેંસિલ જોઈએ',
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
                );
              }).toList(),
            ),
          ),
        ],
      )),
    );
  }
}
