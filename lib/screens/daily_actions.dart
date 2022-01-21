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
        'icon': 'assets/images/morning.png',
        'title': 'Good Morning',
        'voice': 'morning_e.mp3',
      },
      {
        'icon': 'assets/images/good_night.png',
        'title': 'Good Night',
        'voice': 'night_e.mp3',
      },
      {
        'icon': 'assets/images/welcome.png',
        'title': 'Welcome',
        'voice': 'welcome_e.mp3',
      },
      {
        'icon': 'assets/images/hello.png',
        'title': 'Hello',
        'voice': 'hello_e.mp3',
      },
      {
        'icon': 'assets/images/thanks.png',
        'title': 'Thank you',
        'voice': 'thank_e.mp3',
      },
      {
        'icon': 'assets/images/bye-icon.png',
        'title': 'Bye',
        'voice': 'bye_e.mp3',
      },
      {
        'icon': 'assets/images/medicine.png',
        'title': 'Medicine',
        'voice': 'medicine_e.mp3',
      },
      {
        'icon': 'assets/images/query.png',
        'title': 'Need Help',
        'voice': 'help_e.mp3',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': 'Drink Water',
        'voice': 'water_e.mp3',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': 'Eat Fruit',
        'voice': 'fruit_e.mp3',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': 'Eat something',
        'voice': 'hungry_e.mp3',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': 'Eat Breakfast',
        'voice': 'breakfast_e.mp3',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': 'Turn on fan',
        'voice': 'fan_e.mp3',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': 'Turn on light',
        'voice': 'light_e.mp3',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': 'Watch TV',
        'voice': 'tv_e.mp3',
      },
    ],
    'Hindi': [
      {
        'icon': 'assets/images/morning.png',
        'title': 'सुप्रभात',
        'voice': 'morning_h.mp3',
      },
      {
        'icon': 'assets/images/good_night.png',
        'title': 'शुभ रात्रि',
        'voice': 'night_h.mp3',
      },
      {
        'icon': 'assets/images/welcome.png',
        'title': 'स्वागत',
        'voice': 'welcome_h.mp3',
      },
      {
        'icon': 'assets/images/hello.png',
        'title': 'नमस्ते',
        'voice': 'hello_h.mp3',
      },
      {
        'icon': 'assets/images/thanks.png',
        'title': 'आभार',
        'voice': 'thank_h.mp3',
      },
      {
        'icon': 'assets/images/bye-icon.png',
        'title': 'अलविदा',
        'voice': 'bye_h.mp3',
      },
      {
        'icon': 'assets/images/medicine.png',
        'title': 'दवा',
        'voice': 'medicine_h.mp3',
      },
      {
        'icon': 'assets/images/query.png',
        'title': 'मदद चाहिए',
        'voice': 'help_h.mp3',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': 'पानी दीजिए',
        'voice': 'water_h.mp3',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': 'फल खाने है',
        'voice': 'fruit_h.mp3',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': 'भूख लगी है',
        'voice': 'hungry_h.mp3',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': 'नाश्ता करना है',
        'voice': 'breakfast_h.mp3',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': 'फैन चालू करें',
        'voice': 'fan_h.mp3',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': 'बत्ती चालू करें',
        'voice': 'light_h.mp3',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': 'टीवी चालू करें',
        'voice': 'tv_h.mp3',
      },
    ],
    'Gujarati': [
      {
        'icon': 'assets/images/morning.png',
        'title': 'સુપ્રભાત',
        'voice': 'morning_g.mp3',
      },
      {
        'icon': 'assets/images/good_night.png',
        'title': 'શુભ રાત્રિ',
        'voice': 'night_g.mp3',
      },
      {
        'icon': 'assets/images/welcome.png',
        'title': 'આવકાર',
        'voice': 'welcome_g.mp3',
      },
      {
        'icon': 'assets/images/hello.png',
        'title': 'નમસ્તે',
        'voice': 'hello_g.mp3',
      },
      {
        'icon': 'assets/images/thanks.png',
        'title': 'આભાર',
        'voice': 'thank_g.mp3',
      },
      {
        'icon': 'assets/images/bye-icon.png',
        'title': 'આવજો',
        'voice': 'bye_g.mp3',
      },
      {
        'icon': 'assets/images/medicine.png',
        'title': 'દવા',
        'voice': 'medicine_g.mp3',
      },
      {
        'icon': 'assets/images/query.png',
        'title': 'મદદ કરો',
        'voice': 'help_g.mp3',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': 'પાણી પીવું છે',
        'voice': 'water_g.mp3',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': 'ફળ ખાવું છે',
        'voice': 'fruit_g.mp3',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': 'ભૂખ લાગી છે',
        'voice': 'hungry_g.mp3',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': 'નાસ્તો કરવો છે',
        'voice': 'breakfast_g.mp3',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': 'પંખો ચાલુ કરો',
        'voice': 'fan_g.mp3',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': 'લાઇટ કરો',
        'voice': 'light_g.mp3',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': 'ટીવી કરો',
        'voice': 'tv_g.mp3',
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
                    voice: data['voice'],
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
