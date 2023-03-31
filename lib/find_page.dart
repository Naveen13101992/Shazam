
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_design/history.dart';
import 'package:share_plus/share_plus.dart';
class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  children: [
                    Text("title",style: GoogleFonts.acme(fontSize: 20),),
                    Text("artist name",style:GoogleFonts.acme(fontSize: 20),),
                  ],
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.grey,
                  child: InkWell(
                      onTap: (){
                        Share.share("hello everyone");
                      },
                      child: Icon(Icons.share)),
                )
              ],),
              SizedBox(height: 40,),
              Image.asset("assets/images/song_img.jpg"),
              SizedBox(height: 50,),
              SizedBox(
                height: 40,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.red
                    ),
                    onPressed: (){}, child: Text("youtube",style: GoogleFonts.acme(fontSize: 20),),)),
              SizedBox(height: 20,),
              SizedBox(
                height: 40,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryScreen()));
                    }, child: Text("softify",style: GoogleFonts.acme(fontSize: 20),),)),
            ],
          ),
        ),
      ),
    );
  }

  getTemporaryDirectory() {}
}
