import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meta_ozce_0/const/background.dart';

import 'components/ana_ekran_form.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      title: "MetaOzce",
      child: const AnaEkranForm(),
    );
  }
}
