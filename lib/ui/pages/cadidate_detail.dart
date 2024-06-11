import 'package:evoting/shared/theme.dart';
import 'package:evoting/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class CandidateDetail extends StatelessWidget {
  const CandidateDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: slateBlue,
      appBar: AppBar(
        backgroundColor: darkBLue,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Detail Kandidat", style: whiteSemibold.copyWith(
          fontSize: 18
        ),),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 120),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              children: [
                Transform.translate(
                  offset: Offset(0, -100),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage("https://source.unsplash.com/random/?person"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -50),
                  child: Column(
                    children: [
                      Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Text("Nama", style: darkBlueSemibold.copyWith(
                        fontSize: 13
                      )),
                      SizedBox(width: 20,),
                      Text("Nudriansyah ali firman utina", style: darkBlueRegular.copyWith(
                        fontSize: 13
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Text("Umur", style: darkBlueSemibold.copyWith(
                        fontSize: 13
                      )),
                      SizedBox(width: 20,),
                      Text("24 Tahun", style: darkBlueRegular.copyWith(
                        fontSize: 13
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Visi", style: darkBlueSemibold.copyWith(
                        fontSize: 13
                      )),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum", style: darkBlueRegular.copyWith(
                          fontSize: 13
                        ),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.visible,
                                        ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Misi", style: darkBlueSemibold.copyWith(
                              fontSize: 13
                            )),
                            SizedBox(width: 20,),
                            Expanded(
                              child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum", style: darkBlueRegular.copyWith(
                                fontSize: 13
                              ),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.visible,
                                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      CustomFilledButton(
                        title: "Kembali ke pemilihan",
                        ontap: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                )
              ]
            ),
          ),
        ],
      )
    );
  }
}