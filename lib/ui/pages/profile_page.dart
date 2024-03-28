import 'package:fake_eccom/ui/widgets/app_name_text.dart';
import 'package:fake_eccom/ui/widgets/subtitle_text.dart';
import 'package:fake_eccom/ui/widgets/titles_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../manager/theme/theme_provider.dart';
import '../widgets/custom_list_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const AppNameText(),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
              radius: 20,
              child: Image.asset('assets/shop_ic.png', width: 40, height: 40)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false,
              child: TitlesText(
                label: 'Войдите в систему для полного доступа к настройкам.',
                maxLines: 2,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                        color: Theme.of(context).backgroundColor, width: 3),
                    image: const DecorationImage(
                      image: AssetImage('assets/user_ic.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitlesText(
                      label: 'Имя пользователя',
                    ),
                    SizedBox(height: 4),
                    SubtitleText(
                      label: 'Email@mail.ru',
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            const Divider(thickness: 2),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitlesText(
                  label: 'Общие',
                ),
                const SizedBox(height: 5),
                CustomListTile(
                  txt: 'Все заказы',
                  iconPath: Icons.card_travel_outlined,
                  func: () {},
                ),
                const SizedBox(height: 5),
                CustomListTile(
                  txt: 'Список желаний',
                  iconPath: Icons.favorite_border,
                  func: () {},
                ),
                const SizedBox(height: 5),
                CustomListTile(
                  txt: 'Недавно просмотренные',
                  iconPath: Icons.remove_red_eye_sharp,
                  func: () {},
                ),
                const SizedBox(height: 5),
                CustomListTile(
                  txt: 'Адрес',
                  iconPath: Icons.location_on_rounded,
                  func: () {},
                ),
                const SizedBox(height: 15),
                const Divider(thickness: 2),
                const SizedBox(height: 15),
                const TitlesText(
                  label: 'Настройки',
                ),
                SwitchListTile(
                  secondary: themeProvider.getIsDarkTheme
                      ? const Icon(Icons.dark_mode)
                      : const Icon(Icons.light_mode),
                  title: Text(
                    themeProvider.getIsDarkTheme
                        ? 'Темный режим'
                        : 'Светлый режим',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themeValue: value);
                  },
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.exit_to_app_outlined),
                    label: const Text(
                      'Выход',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
