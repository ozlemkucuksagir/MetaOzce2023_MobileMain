import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meta_ozce_0/const/background.dart';

import 'components/etkinlikler_form.dart';

class EtkinliklerScreen extends StatelessWidget {
  const EtkinliklerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      title: "ETKİNLİKLER",
      child: const EtkinliklerForm(),
    );
  }
}
