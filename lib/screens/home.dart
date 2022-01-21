import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hello_world/components/home_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        'title': 'Daily Actions',
        'path': '/daily_actions',
        'color': Colors.blue,
        'icon': Icons.calendar_today,
      },
      {
        'title': 'School Activities',
        'path': '/school_activities',
        'color': Colors.green,
        'icon': Icons.school,
      }
    ],
    'Hindi': [
      {
        'title': 'दैनिक कार्यक्रम',
        'path': '/daily_actions',
        'color': Colors.blue,
        'icon': Icons.calendar_today,
      },
      {
        'title': 'शैक्षणिक कार्यक्रम',
        'path': '/school_activities',
        'color': Colors.green,
        'icon': Icons.school,
      }
    ],
    'Gujarati': [
      {
        'title': 'દૈનિક પ્રવૃતિઓ',
        'path': '/daily_actions',
        'color': Colors.blue,
        'icon': Icons.calendar_today,
      },
      {
        'title': 'શાળાકીય પ્રવૃત્તિઓ',
        'path': '/school_activities',
        'color': Colors.green,
        'icon': Icons.school,
      }
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _data[_language.toString()]!.map((item) {
              return MyCardWidget(
                title: item['title'],
                path: item['path'],
                color: item['color'],
                icon: item['icon'],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
