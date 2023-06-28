import 'package:colb_progect/screens/home_screen.dart';
import 'package:colb_progect/services/app_text_style.dart';
import 'package:colb_progect/widgets/custom_container.dart';
import 'package:flutter/material.dart';


class MeetingsScreen extends StatelessWidget {
  const MeetingsScreen({Key? key}) : super(key: key);
  static const id = 'meetings_screen';



  @override
  Widget build(BuildContext context) {

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
        title: const Text('Встречи', style: CustomTextStyle.titleW900Style,),
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
                      height: 136,
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
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                child: Text('gggdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssf $index', style: CustomTextStyle.bodyStyle,),
                              ),
                              const SizedBox(height: 6,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.place_outlined, size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Парк Отрадье'),
                                  ),
                                ],),
                              const SizedBox(height: 6,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.timer_outlined, size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('20-00 : 21-00'),
                                  ),
                              ],)
                            ],
                          ),
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
          int stepAdd = 0;
          FocusNode fNode1 = FocusNode();
          FocusNode fNode2 = FocusNode();
          FocusNode fNode3 = FocusNode();
          showModalBottomSheet(context: context,isScrollControlled: true, builder: (context){
            return StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
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
                              child: stepAdd == 0 ? const Text('Введите название встречи', style: CustomTextStyle.bodyStyle,) : stepAdd == 1 ? const Text('Введите место встречи', style: CustomTextStyle.bodyStyle,) : const Text('Введите время встречи', style: CustomTextStyle.bodyStyle,)
                          ),
                          stepAdd == 0 ? const TextField(
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
                          ) : stepAdd == 1 ? const TextField(
                            cursorColor: Color(0xff2C3A42),
                            style: CustomTextStyle.bodyItalicStyle,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.place_outlined, color: Color(0xff2C3A42),),
                              hintText: 'Введите здесь',
                              hintStyle: CustomTextStyle.hintStyle,
                              contentPadding: EdgeInsets.only(left: 20, top: 15),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff2C3A42),),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff2C3A42),),
                              ),
                            ),
                          ) : Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                    child: TextField(
                                      cursorColor: const Color(0xff2C3A42),
                                      textInputAction: TextInputAction.next,
                                      style: CustomTextStyle.bodyItalicStyle,
                                      decoration: const InputDecoration(
                                        hintText: ' ч ',
                                        hintStyle: CustomTextStyle.hintStyle,
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value){
                                        if(value.length == 2) {
                                          FocusScope.of(context).requestFocus(fNode1);
                                        }
                                      },
                                    ),
                                  ),
                                  const Text('-'),
                                  SizedBox(
                                    width: 20,
                                    child: TextField(
                                      focusNode: fNode1,
                                      cursorColor: const Color(0xff2C3A42),
                                      textInputAction: TextInputAction.next,
                                      style: CustomTextStyle.bodyItalicStyle,
                                      decoration: const InputDecoration(
                                        hintText: ' м ',
                                        hintStyle: CustomTextStyle.hintStyle,
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value){
                                        if(value.length == 2) {
                                          FocusScope.of(context).requestFocus(fNode2);
                                        }
                                      },
                                    ),
                                  ),
                                  const Text(' : '),
                                  SizedBox(
                                    width: 20,
                                    child: TextField(
                                      focusNode: fNode2,
                                      cursorColor: const Color(0xff2C3A42),
                                      textInputAction: TextInputAction.next,
                                      style: CustomTextStyle.bodyItalicStyle,
                                      decoration: const InputDecoration(
                                        hintText: ' ч ',
                                        hintStyle: CustomTextStyle.hintStyle,
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value){
                                        if(value.length == 2) {
                                          FocusScope.of(context).requestFocus(fNode3);
                                        }
                                      },
                                    ),
                                  ),
                                  const Text('-'),
                                  SizedBox(
                                    width: 20,
                                    child: TextField(
                                      focusNode: fNode3,
                                      cursorColor: const Color(0xff2C3A42),
                                      textInputAction: TextInputAction.done,
                                      style: CustomTextStyle.bodyItalicStyle,
                                      decoration: const InputDecoration(
                                        hintText: ' м ',
                                        hintStyle: CustomTextStyle.hintStyle,
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value){
                                        if(value.length == 2) {
                                          FocusScope.of(context).unfocus();
                                          //FocusScope.of(context).;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                color: const Color(0xff2C3A42),
                              ),
                            ],
                          ),
                          stepAdd !=2 ? Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CustomContainer(
                                width: MediaQuery.of(context).size.width*0.8,
                                height: 40,
                                borderRadius: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState((){stepAdd++;});
                                  },
                                  child: const Center(
                                    child: Text('Продолжить', style: CustomTextStyle.bodyStyle,),
                                  ),
                                )
                            ),
                          ) : Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CustomContainer(
                                width: MediaQuery.of(context).size.width*0.8,
                                height: 40,
                                borderRadius: 10,
                                child: GestureDetector(
                                  onTap: () {Navigator.pop(context);},
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
                }
            );
          });
        },
        child: Center(child: Text('+', style: CustomTextStyle.floatingActionButtonStyle,)),
      ),),
    );
  }


}
