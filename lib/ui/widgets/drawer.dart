import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/ui/components/list_tiles/primary_list_tile.dart';
import 'package:meal/ui/components/texts/title_text.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      backgroundColor: ThemePalette.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ThemePalette.backgroundColor,
            ), 
            child: const TitleText(text: 'Menu'),
          ),
          PrimaryListTile(
            title: 'Favourites', 
            onTap: (){},
            ),
        ],
      ),
    );
  }
}
