
import 'package:flutter/material.dart';

import '../services/app_text_style.dart';
import '../widgets/custom_container.dart';
import 'home_screen.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({Key? key}) : super(key: key);
  static const id = 'plans_screen';


  @override
  Widget build(BuildContext context) {

    List<bool> finish = [true,false,false,false,false, false];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.of(context)?.pushReplacementNamed(HomeScreen.id);
          },
        ),
        centerTitle: true,
        title: const Text('Планы', style: CustomTextStyle.titleW900Style,),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      borderRadius: 10,
                      child: GestureDetector(
                        onTap: (){
                          print('tap');
                        },
                        onLongPress: (){
                          print('delete $index');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('gggdssssssssssssssssssssssssssssssssssssf $index', style: finish[index] ? CustomTextStyle.crossedOutStyle : CustomTextStyle.bodyStyle,),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomContainer(width: 40,height: 40,borderRadius: 90, child: GestureDetector(
        onTap: (){
          showModalBottomSheet(context: context,isScrollControlled: true, builder: (context){
            return Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              color: Color(0xFF737373),
              height: 185,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: const Text('Введите заголовок плана', style: CustomTextStyle.bodyStyle,)
                    ),
                    const TextField(
                      cursorColor: Color(0xff2C3A42),
                      style: CustomTextStyle.bodyItalicStyle,
                      decoration: InputDecoration(
                        hintText: 'Введите здесь',
                        hintStyle: CustomTextStyle.hintStyle,
                        contentPadding: EdgeInsets.only(left: 20),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2C3A42),),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2C3A42),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CustomContainer(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: 40,
                          borderRadius: 10,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Center(
                              child: Text('Добавить', style: CustomTextStyle.bodyStyle,),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        },
        child: Center(child: Text('+', style: CustomTextStyle.floatingActionButtonStyle,)),
      ),),
    );
  }
}
