import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spesotaskapp/const.dart';
import 'package:spesotaskapp/extension/asset_path.dart';

import '../components/bottom_nav.dart';
import '../resources/assets_name.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4e5e7),

      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation:0,
  title: const Text('Services',style: TextStyle(color: Colors.black),)

,        actions:const  [Icon(Icons.settings,color: Colors.black,),SizedBox(width:30)]

        ,),


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

 const SizedBox(height: 80,),
            Stack(clipBehavior: Clip.none,alignment: Alignment.center,
              children: [

                Container(height: 170,
                  width:screenSize(context).width ,
                  margin:const  EdgeInsets.only(left:20,right:20,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),

color: Colors.blueGrey.withOpacity(0.3)
                   ),),
                Positioned(
                  bottom: -10,
                  child: Container(height: 170,width: screenSize(context).width*0.9,margin: EdgeInsets.symmetric(horizontal: 20),

                   padding:const  EdgeInsets.symmetric(horizontal:20,vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(image: AssetImage(R.I.walletBanner.png),fit: BoxFit.cover),
                      gradient: LinearGradient(
                      begin: Alignment.bottomLeft,end:Alignment.topRight,
                      colors: [Colors.blue,Colors.purple.withAlpha(400),Colors.blue],
                    ),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Text('Wallete \n Balance',style: TextStyle(color: Colors.white,fontSize: 17)),

                      SizedBox(height: 20,),
                      Text('#40,000000',style: TextStyle(color: Colors.white,fontSize: 25),)
                    ],),
                  
                  ),
                )
              ],
            ),const
SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  servicesHolder(R.svg.wallet.svg,'Top Up'),
                  servicesHolder(R.svg.withdraw.svg,'Withdraw',color: Colors.deepOrange),
                  servicesHolder(R.svg.moreMenu.svg,'receive',color: Colors.cyan),
                  servicesHolder(R.svg.clock.svg,'Transactions',color: Colors.deepPurple),
                ],
              ),const
SizedBox(height: 25,)
,
             const  Text('Quick Service',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
             const  SizedBox(height: 25,),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  quickServiceHolder(R.svg
.airtime.svg,'Airtime'),

  quickServiceHolder(R.svg
      .dollar.svg,'Pay'), quickServiceHolder(R.svg
      .convertCard.svg,'Split Pay')
],),
             const  SizedBox(height: 25,)
              ,
              const  Text('Refer and Earn',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
              const  SizedBox(height: 25,),


              Container(height: 130,
                width:screenSize(context).width ,
                // margin: EdgeInsets.EdgeInsetsonly(left:30,right:30,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
gradient: LinearGradient(colors: [Colors.deepPurple,Colors.blue.shade900,Colors.deepPurple.shade900])
                    // color: Colors.blueGrey.withOpacity(0.3

                ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                Column(

                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: const TextSpan(text: 'Refer a ',children: [TextSpan(text: 'Friend',style: TextStyle(color: Colors.yellowAccent)),])),
             const  Text('Earn Extra Cash',style: TextStyle(color:Colors.white),),
                    const  SizedBox(height: 15,)


                    , Container(height: 37,width:120,
                  decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(5)
                ),
                  child: const Center(child: Text('Get Started'),),)

              ],),
              SvgPicture.asset(R.svg.referEarn.svg)

              ],),
              ),
          ],),
        ),
      ),

    );
  }


  //creating a widget method for the quick access service button
  Column servicesHolder(String iconUrl,String title,{Color color=Colors.blue}) {
    return Column(children: [
              CircleAvatar(
                backgroundColor: color,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(iconUrl)),),
              const SizedBox(height: 10,),
Text(title,style: const  TextStyle(fontSize: 15),),

            ],);
  }
  Container quickServiceHolder(String iconUrl,String title,{Color color=Colors.blue}) {
    return Container(height: 90,width: 100,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
      child: Column(children: [
                SizedBox(height:40,width: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: SvgPicture.asset(iconUrl)),),
                const SizedBox(height: 5,),
Text(title,style: const  TextStyle(fontSize: 15),),

              ],),
    );
  }
}


