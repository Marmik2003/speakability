import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Local Imports
import 'package:hello_world/components/speaking_card.dart';

class DailyActionScreen extends StatefulWidget {
  const DailyActionScreen({Key? key}) : super(key: key);

  @override
  _DailyActionScreenState createState() => _DailyActionScreenState();
}

class _DailyActionScreenState extends State<DailyActionScreen> {
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
        'icon': 'assets/images/medicine.png',
        'title': 'Medicine',
      },
      {
        'icon': 'assets/images/query.png',
        'title': 'Need Help',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': 'Drink Water',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': 'Eat Fruit',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': 'Eat something',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': 'Eat Breakfast',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': 'Turn on fan',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': 'Turn on light',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': 'Watch TV',
      },
    ],
    'Hindi': [
      {
        'icon': 'assets/images/medicine.png',
        'title': 'दवा',
      },
      {
        'icon': 'assets/images/query.png',
        'title': 'मदद चाहिए',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': 'पानी दीजिए',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': 'फल खाने है',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': 'भूख लगी है',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': 'नाश्ता करना है',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': 'फैन चालू करें',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': 'बत्ती चालू करें',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': 'टीवी चालू करें',
      },
    ],
    'Gujarati': [
      {
        'icon': 'assets/images/medicine.png',
        'title': 'દવા',
      },
      {
        'icon': 'assets/images/query.png',
        'title': 'મદદ કરો',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': 'પાણી પીવું છે',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': 'ફળ ખાવું છે',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': 'ભૂખ લાગી છે',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': 'નાસ્તો કરવો છે',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': 'પંખો ચાલુ કરો',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': 'લાઇટ કરો',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': 'ટીવી કરો',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Action'),
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
                children: _data[_language]!.map((data) {
                  return SpeakingCard(
                    title: data['title'],
                    icon: data['icon'],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
