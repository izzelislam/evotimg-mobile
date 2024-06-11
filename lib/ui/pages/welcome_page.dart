import 'package:evoting/shared/theme.dart';
import 'package:evoting/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        padding: EdgeInsets.symmetric(horizontal: 37, vertical: 20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img_selamat_datang.png",
                ),
                const SizedBox(height: 16,),
                Text(
                  "Selamat Datang",
                  style : darkBlueSemibold.copyWith(
                    fontSize: 20
                  )
                ),
                SizedBox(height: 7,),
                Text(
                  "Solusi demokrasi modern",
                  style : lightBlueRegular.copyWith(
                    fontSize: 12
                  )
                ),
                const SizedBox(height: 45,),
                Text("Untuk mengikuti pemilihan silahkan \nmasukan kode pemilihan terlebih dahulu",
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
                  title: "Lanjutkan",
                  ontap: () {
                    Navigator.pushNamed(context, "/ticket");
                  },
                ),
              ],
              
            )
          ],
        ),
      )
    );
  }
}