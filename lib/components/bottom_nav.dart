import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spesotaskapp/extension/asset_path.dart';


import '../resources/assets_name.dart';



class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const CircularNotchedRectangle(),notchMargin: 4.0,elevation: 2,child: Container(
      height: 65,
      padding:const EdgeInsets.symmetric(vertical: 3),
      decoration:const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            SizedBox(height: 30,width: 30,child: SvgPicture.asset(R.svg.messages.svg,color: Colors.grey,),),
            const SizedBox(height: 10,),
            const Text('Chat'),
          ],
          ),
          Column(children: [
            SizedBox(height: 30,width: 30,child: SvgPicture.asset(R.svg.scan.svg),),
            const SizedBox(height: 10,),
            const Text('Scan'),
          ],
          ),

          Column(children: [
            SizedBox(height: 30,width: 30,child: SvgPicture.asset(R.svg.services.svg,color: Colors.deepPurple,),),
            const SizedBox(height: 10,),
            const Text('Service',style: TextStyle(color: Colors.deepPurple),),
          ],
          ),

          Column(children: [
            SizedBox(height: 30,width: 30,child: SvgPicture.asset(R.svg.frame.svg),),
            const SizedBox(height: 10,),
            const Text('Me'),
          ],
          ),

        ],),
    )
      ,);
  }
}