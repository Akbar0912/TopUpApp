import 'package:ecommerce/shared/theme.dart';
import 'package:ecommerce/ui/widgets/custombutton.dart';
import 'package:ecommerce/ui/widgets/forms.dart';
import 'package:ecommerce/ui/widgets/paket_result_item.dart';
import 'package:flutter/material.dart';

class TopUpTotal extends StatelessWidget {
  const TopUpTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomFromField(
            title: 'Nomer Hp',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Pilih Paket',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            child: Wrap(
              spacing: 17,
              runSpacing: 17,
              children: const [
                PaketResultItem(
                  amount: 10,
                  price: 100000,
                  isSelected: true,
                ),
                PaketResultItem(
                  amount: 50,
                  price: 150000,
                ),
                PaketResultItem(
                  amount: 15,
                  price: 25000,
                ),
                PaketResultItem(
                  amount: 5,
                  price: 20000,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, ('/data-success'));
            },
            text: 'Pesan',
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
