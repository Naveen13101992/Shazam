import 'package:flutter/material.dart';
import 'package:new_design/find_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(children: [
              Text("Text",style: GoogleFonts.acme(fontSize: 20),),
              Spacer(),
              Text("history",style: GoogleFonts.acme(fontSize: 20),),
              SizedBox(width: 30,),
              Text("setting page",style: GoogleFonts.acme(fontSize: 20),),
            ],),
            SizedBox(height: 50,),
            InkWell(onTap: (){},
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(70))
              ),child: Text("Start",style: GoogleFonts.acme(fontSize: 20),),),
            ),
            SizedBox(height: 50,),
            Expanded(
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FindPage()));
              },
                child: ListView.builder(
                //  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey.shade300,
                      ),
                      height: 70,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset("assets/images/song_img.jpg",height: 40,)),
                            SizedBox(width: 10,),
                            Text("title\nartist name",style: GoogleFonts.acme(fontSize: 20),)
                          ],),
                      ),
                    ),
                  );
                })
              ),
            )
          ],),
        ),
      ),
    );
  }
}
