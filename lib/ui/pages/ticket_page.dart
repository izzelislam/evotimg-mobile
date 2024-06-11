import 'package:evoting/shared/theme.dart';
import 'package:evoting/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

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
                Text("Silahkan masukkan tiket pemilihan",
                  textAlign: TextAlign.center,
                  style: darkBlueMedium.copyWith(
                    fontSize: 12
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 45,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: gray)
                  ),
                  child: TextFormField(
                    style: TextStyle(color: darkBLue),
                    decoration: InputDecoration(
                      border: InputBorder.none
                    )
                  ),
                ),
                const SizedBox(height: 25,),
                CustomFilledButton(
                  title: "lanjut",
                  ontap: () {
                    // Navigator.pushNamedAndRemoveUntil(context, "/vote", (route) => false);
                    Navigator.pushNamed(context, "/vote");
                  },
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Text("atau", style: darkBlueMedium.copyWith(fontSize: 12),),
                ),
                CustomOutlineButton(
                  title: "Scan Qr Code",
                  ontap: () {
                    Navigator.pushNamed(context, "/vote404");
                  }
                )
              ],
              
            )
          ],
        ),
      ),
    );
  }
}