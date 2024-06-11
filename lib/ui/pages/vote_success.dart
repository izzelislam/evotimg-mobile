import 'package:evoting/shared/theme.dart';
import 'package:flutter/material.dart';

class VoteSuccessPage extends StatelessWidget {
  const VoteSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 37, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img_vote_success.png",
                ),
                Text(
                  "Pilihan berhasil di submit",
                  style : darkBlueSemibold.copyWith(
                    fontSize: 20
                  )
                ),
                const SizedBox(height: 100,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: darkBLue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, "/ticket", (route) => false);
                    },
                    child: Text("Kembali ke halaman utama", style: whiteMedium.copyWith(
                      fontSize: 12
                    ),)
                  ),
                ),
    
              ],
            ),
          )
        ),
    );
  }
}