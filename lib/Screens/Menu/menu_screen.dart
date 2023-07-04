import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meta_ozce_0/Screens/Menu/components/menu_form.dart';
import 'package:meta_ozce_0/const/background.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      title: "MENU",
      child: const MenuForm(),
    );
  }
}
