import 'package:evoting/shared/theme.dart';
import 'package:evoting/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class VotePage extends StatelessWidget {
  const VotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBLue,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Silahkan Pilih", style: whiteSemibold.copyWith(
          fontSize: 18
        ),),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                    color: slateBlue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text("Pemilihan Ketua Osis Periode 2024/2025", style: darkBlueSemibold.copyWith(
                      fontSize: 12
                    ),),
                  ),
                ),
                const SizedBox(height: 11,),
                Container(
                  child: Center(
                    child: Text("Tentukan pilihan anda dengan bijaksana", style: darkBlueRegular.copyWith(
                    fontSize: 12
                  )),
                  ),
                ),
                SizedBox(height: 33,),
                Wrap(
                  children: List.generate(25, (index) => CandidatCard()),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        color: white,
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: CustomFilledButton(title: "Submit Pilihan", ontap: () {
            showModalBottomSheet(context: context, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24))
              ),
              builder: (context){
                return DialogModal();
              }
            );
          })
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}

class DialogModal extends StatelessWidget {
  const DialogModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 25,),
          Image.asset("assets/img_dialog.png", width: 250,),
          SizedBox(height: 25,),
          Text("Apakah sudah yakin \ndengan pilihan anda ?", style: darkBlueSemibold.copyWith(
              fontSize: 18
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomFilledButton(
              title: "lanjutkan",
              ontap: () {
                // Navigator.pushNamedAndRemoveUntil(context, "/vote", (route) => false);
                Navigator.pushNamed(context, "/vote-success");
              },
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomOutlineButton(
              title: "Kembali ke pemilihan",
              ontap: () {
                Navigator.pop(context);
              }
            ),
          ),
          SizedBox(height: 25,)
        ],
      ),
    );
  }
}

class CandidatCard extends StatelessWidget {
  const CandidatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1/3,
      child: GestureDetector(
        onTap:  (){
          Navigator.pushNamed(context, "/vote-detail");
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://source.unsplash.com/random/?person"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
              const SizedBox(height: 3),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: slateBlue,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Ahmad Nurdiansyah", style: darkBlueMedium.copyWith(
                          fontSize: 12
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}