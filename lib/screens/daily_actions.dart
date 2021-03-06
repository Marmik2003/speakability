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
        'title': '????????????????????????',
        'voice': 'morning_h.mp3',
      },
      {
        'icon': 'assets/images/good_night.png',
        'title': '????????? ??????????????????',
        'voice': 'night_h.mp3',
      },
      {
        'icon': 'assets/images/welcome.png',
        'title': '??????????????????',
        'voice': 'welcome_h.mp3',
      },
      {
        'icon': 'assets/images/hello.png',
        'title': '??????????????????',
        'voice': 'hello_h.mp3',
      },
      {
        'icon': 'assets/images/thanks.png',
        'title': '????????????',
        'voice': 'thank_h.mp3',
      },
      {
        'icon': 'assets/images/bye-icon.png',
        'title': '??????????????????',
        'voice': 'bye_h.mp3',
      },
      {
        'icon': 'assets/images/medicine.png',
        'title': '?????????',
        'voice': 'medicine_h.mp3',
      },
      {
        'icon': 'assets/images/query.png',
        'title': '????????? ???????????????',
        'voice': 'help_h.mp3',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': '???????????? ???????????????',
        'voice': 'water_h.mp3',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': '?????? ???????????? ??????',
        'voice': 'fruit_h.mp3',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': '????????? ????????? ??????',
        'voice': 'hungry_h.mp3',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': '?????????????????? ???????????? ??????',
        'voice': 'breakfast_h.mp3',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': '????????? ???????????? ????????????',
        'voice': 'fan_h.mp3',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': '??????????????? ???????????? ????????????',
        'voice': 'light_h.mp3',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': '???????????? ???????????? ????????????',
        'voice': 'tv_h.mp3',
      },
    ],
    'Gujarati': [
      {
        'icon': 'assets/images/morning.png',
        'title': '????????????????????????',
        'voice': 'morning_g.mp3',
      },
      {
        'icon': 'assets/images/good_night.png',
        'title': '????????? ??????????????????',
        'voice': 'night_g.mp3',
      },
      {
        'icon': 'assets/images/welcome.png',
        'title': '???????????????',
        'voice': 'welcome_g.mp3',
      },
      {
        'icon': 'assets/images/hello.png',
        'title': '??????????????????',
        'voice': 'hello_g.mp3',
      },
      {
        'icon': 'assets/images/thanks.png',
        'title': '????????????',
        'voice': 'thank_g.mp3',
      },
      {
        'icon': 'assets/images/bye-icon.png',
        'title': '????????????',
        'voice': 'bye_g.mp3',
      },
      {
        'icon': 'assets/images/medicine.png',
        'title': '?????????',
        'voice': 'medicine_g.mp3',
      },
      {
        'icon': 'assets/images/query.png',
        'title': '????????? ?????????',
        'voice': 'help_g.mp3',
      },
      {
        'icon': 'assets/images/bottled-water.png',
        'title': '???????????? ??????????????? ??????',
        'voice': 'water_g.mp3',
      },
      {
        'icon': 'assets/images/fruit-basket.png',
        'title': '?????? ??????????????? ??????',
        'voice': 'fruit_g.mp3',
      },
      {
        'icon': 'assets/images/eating.png',
        'title': '????????? ???????????? ??????',
        'voice': 'hungry_g.mp3',
      },
      {
        'icon': 'assets/images/breakfast.png',
        'title': '?????????????????? ???????????? ??????',
        'voice': 'breakfast_g.mp3',
      },
      {
        'icon': 'assets/images/fan.png',
        'title': '???????????? ???????????? ?????????',
        'voice': 'fan_g.mp3',
      },
      {
        'icon': 'assets/images/lightbulb.png',
        'title': '???????????? ?????????',
        'voice': 'light_g.mp3',
      },
      {
        'icon': 'assets/images/screen.png',
        'title': '???????????? ?????????',
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
