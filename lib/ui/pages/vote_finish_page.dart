import 'package:evoting/shared/theme.dart';
import 'package:evoting/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class VoteFinishPage extends StatelessWidget {
  const VoteFinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 37, vertical: 20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img_token_page.png",
                  width: 230,
                ),
                const SizedBox(height: 10,),
                Text(
                  "Pemilihan Ketua Osis\nPeriode 2024/2025",
                  style : darkBlueSemibold.copyWith(
                    fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 7,),
                Text(
                  "pemilihan ketua osis periode 2024/2025\nsekolah aman jaya makmur",
                  style : lightBlueRegular.copyWith(
                    fontSize: 12
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 45,),
                Text("Pemilihan telah selesai",
                  textAlign: TextAlign.center,
                  style: darkBlueMedium.copyWith(
                    fontSize: 12
                  ),
                ),
                const SizedBox(height: 25,),
                CustomFilledButton(
                  title: "lanjut",
                  ontap: () {
                    Navigator.pushNamed(context, "/ticket");
                  },
                ),
              ],
              
            )
          ],
        ),
      ),
    );
  }
}