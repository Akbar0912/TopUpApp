import 'package:ecommerce/shared/theme.dart';
import 'package:ecommerce/ui/widgets/custombutton.dart';
import 'package:ecommerce/ui/widgets/forms.dart';
import 'package:ecommerce/ui/widgets/topup_item.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beli Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Pilih Layanan',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TopUpItem(
            title: 'Telkomsel',
            imgUrl: 'assets/img_telkom.png',
            isSelected: true,
          ),
          TopUpItem(
            title: 'Indosat',
            imgUrl: 'assets/img_indosat.png',
          ),
          TopUpItem(
            title: 'Singtel',
            imgUrl: 'assets/img_singtel.png',
          ),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, ('/data-total'));
            },
            text: 'Selanjutnya',
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
