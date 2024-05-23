import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController=TextEditingController();
  var tfController2=TextEditingController();
  var sayi1=0;
  var sayi2=0;
  var sonuc=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 350,height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                  child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(hintText: "1.SAYI",border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(width: 350,height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                  child: TextField(
                    controller: tfController2,
                    decoration: InputDecoration(hintText: "2.SAYI",border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi1=int.parse(tfController.text);
                      sayi2=int.parse(tfController2.text);
                      sonuc=sayi1+sayi2;
                      tfController.text="";
                      tfController2.text="";
                      
                    });
                  }, child: Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi1=int.parse(tfController.text);
                      sayi2=int.parse(tfController2.text);
                      sonuc=sayi1-sayi2;
                      tfController.text="";
                      tfController2.text="";
                    });
                  }, child: Text("-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      double sayi1=double.parse(tfController.text) ;
                      double sayi2=double.parse(tfController2.text) ;
                      sonuc=sayi1~/sayi2;
                      tfController.text="";
                      tfController2.text="";
                    });
                  }, child: Text("/",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi1=int.parse(tfController.text);
                      sayi2=int.parse(tfController2.text);
                      sonuc=sayi1*sayi2;
                      tfController.text="";
                      tfController2.text="";
                    });
                  }, child: Text("*",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(sonuc != null ? "Sonuc: $sonuc" : "",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red,),),                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
