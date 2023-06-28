import 'package:colb_progect/blocs/bloc_exports.dart';
import 'package:colb_progect/models/plans.dart';
import 'package:colb_progect/screens/meetings_screen.dart';
import 'package:colb_progect/screens/plans_screen.dart';
import 'package:colb_progect/services/app_text_style.dart';
import 'package:colb_progect/widgets/custom_button.dart';
import 'package:colb_progect/widgets/custom_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/custom_horizontal_calendar/src/calendar.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: (MediaQuery.of(context).size.height/2.27)/7.952),
              BlocBuilder<ChangeCardOnTopMenuBloc, ChangeCardOnTopMenuState>(builder: (context, state) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: GestureDetector(
                            child: const Icon(Icons.arrow_back_ios, size: 15,),
                            onTap: () => context.read<ChangeCardOnTopMenuBloc>().add(ChangeCardOnTopMenuLeftEvent()),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/1.6 : (MediaQuery.of(context).size.width/2.1)/1.6,
                          width: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? MediaQuery.of(context).size.height/2.27 : (MediaQuery.of(context).size.width/2.1),
                          child: GestureDetector(

                            onPanUpdate: (details) {

                            },

                            //child: Text('${MediaQuery.of(context).size.height/2.27} ====> ${MediaQuery.of(context).size.width-100}'),
                            child: SvgPicture.asset(state.listData[4]['CardSvg']!),
                          ),
                        ),

                        SizedBox(
                          width: 20,
                          height: 20,
                          child: GestureDetector(
                            child: const Icon(Icons.arrow_forward_ios, size: 15,),
                            onTap: () => context.read<ChangeCardOnTopMenuBloc>().add(ChangeCardOnTopMenuRightEvent()),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: (MediaQuery.of(context).size.height/2.27)/7.952),

                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height > MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/4.97+21 : (MediaQuery.of(context).size.width/2.27)/4.97+21,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            margin: EdgeInsets.only(left: index != 0 ? ((MediaQuery.of(context).size.height/2.27)-(MediaQuery.of(context).size.height/2.27)/4.97*3)/4 : 0),
                            child: Column(
                              children: [
                                CustomContainer(
                                  width: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/4.97 : (MediaQuery.of(context).size.width/2.27)/4.97,
                                  height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/4.97 : (MediaQuery.of(context).size.width/2.27)/4.97,
                                  borderRadius: 10,
                                  child: GestureDetector(
                                    onTap: (){
                                      print('Theme.of(context)');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: SvgPicture.asset(state.listData[index]['IconSvg']!),
                                      // , width: (MediaQuery.of(context).size.width-100)/4.97-5,height: (MediaQuery.of(context).size.width-100)/4.97-5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(state.listData[index]['title']!, style: Theme.of(context).textTheme.bodySmall,),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              } ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                margin: const EdgeInsets.only(bottom: 5),
                color: const Color(0xff2C3A42),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? MediaQuery.of(context).size.height / 8 : MediaQuery.of(context).size.height / 5,
                child: CustomHorizontalCalendar(
                  date: DateTime.now().add(const Duration(days: 0)),
                  initialDate: DateTime.now().subtract(const Duration(days: 1)),
                  textColor: const Color(0xff2C3A42),
                  backgroundColor: Colors.white,
                  selectedColor: const Color(0xff2C3A42),
                  showMonth: true,
                  onDateSelected: (date) {
                    if (kDebugMode) {
                      print(date.toString());
                    }
                  },
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                margin: const EdgeInsets.only(top: 5),
                color: const Color(0xff2C3A42),
              ),

              const SizedBox(height: 20),
              Text('Загруженность на сегодня', style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/4.97 : (MediaQuery.of(context).size.width/2.27)/4.97,
                child: BlocBuilder<ContentDayBloc, ContentDayState>(builder: (context, state) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index){
                    return Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height > MediaQuery.of(context).size.width ?
                        (MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height/2.27)/5.97*6)/3
                            : (MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width/2.27)/5.97*6)/3,
                      ),
                      child: Stack(
                        children: [
                          CustomContainer(
                            width: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97*3 : (MediaQuery.of(context).size.width/2.27)/5.97*3,
                            height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97,
                            borderRadius: 10,
                            child: Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97),
                              child: Center(child: Text('20', style: CustomTextStyle.bodyStyle,)),
                            ),
                          ),
                          CustomContainer(
                            width: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97,
                            height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97,
                            borderRadius: 10,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context)?.pushReplacementNamed(PlansScreen.id);
                                print('Theme.of(context)');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: index == 0 ? SvgPicture.asset('images/schedule-introduction.svg') : SvgPicture.asset('images/plans-icon.svg'),
                                // , width: (MediaQuery.of(context).size.width-100)/4.97-5,height: (MediaQuery.of(context).size.width-100)/4.97-5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );},
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                //height: 400,
                height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/4.97 : (MediaQuery.of(context).size.width/2.27)/4.97,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height > MediaQuery.of(context).size.width ?
                  (MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height/2.27)/5.97*6)/3
                      : (MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width/2.27)/5.97*6)/3,
                ),
                child: BlocBuilder<ContentDayBloc,ContentDayState>(builder: (context, state){
                  //Map<String, List<Plans>> listOfPlans = state.listOfPlans;
                  return Stack(
                    children: [
                      CustomContainer(
                        width: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97*3 : (MediaQuery.of(context).size.width/2.27)/5.97*3,
                        height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97,
                        borderRadius: 10,
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97),
                          //child: Center(child: TextButton(child: Text('tsdf'), onPressed: (){print('${state.listOfPlans}');},)),
                          child: Center(
                              child: Text(
                                // '${state.listOfPlans['2023-03-25']!.length}',
                                state.listOfPlans[state.selectedDay] == null ?
                                '0' : '${state.listOfPlans[state.selectedDay]!.length}' ,
                                style: CustomTextStyle.bodyStyle,)
                          ),
                        ),
                      ),
                      CustomContainer(
                        width: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97,
                        height: MediaQuery.of(context).size.height >MediaQuery.of(context).size.width ? (MediaQuery.of(context).size.height/2.27)/5.97 : (MediaQuery.of(context).size.width/2.27)/5.97,
                        borderRadius: 10,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context)?.pushReplacementNamed(MeetingsScreen.id);
                            //print('object');
                            //context.read<ContentDayBloc>().add(AddPlans(title: '1stovs', dateControl: '2023-03-29'));

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset('images/meetings-introduction.svg'),
                            // , width: (MediaQuery.of(context).size.width-100)/4.97-5,height: (MediaQuery.of(context).size.width-100)/4.97-5,
                          ),
                        ),
                      ),
                    ],
                  );
                })
              ),

              //pageIntroduction[state.stepIntroduction],
              //Text('${state.switchValue2}'),
              //Text('${state.listData}'),


            ],
          ),
        ),
      ),
    );

  }

}



