import 'package:flutter/material.dart';

//screens builders
Widget missionScreen() => SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            dailyMissions(),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => fatorraBuilder(),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                itemCount: 10)
          ],
        ),
      ),
    );
Widget profileScreen() => SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg')),
                  const Spacer(),
                  Container(
                    width: 140,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.green[800],
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          children: const [
                            Text(
                              'تسجيل الحضور',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text('17.08:23',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            activeprofileCard(),
            const SizedBox(
              height: 20,
            ),
            profileCard(),
            const SizedBox(
              height: 20,
            ),
            profileCard()
          ],
        ),
      ),
    );

//daily missions card
Widget dailyMissions() => Container(
      width: double.infinity,
      height: 125,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'مهام اليوم',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '7',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: const [
                      Text(
                        'معدل انجاز مهام اليوم',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'PTP',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '6',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 111, 183, 241),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.only(left: 7, right: 7, top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'جاري التحصيل',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'تم التحصيل بنجاح',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '145',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'المبلغ المحول',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
Widget fatorraBuilder() => Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8),
            child: Row(
              children: const [
                Text(
                  'عبد المنعم عبد القادر عبد الشافي علي',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              children: [
                Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Text(
                        'T-1',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )),
                const SizedBox(
                  width: 7,
                ),
                Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Text(
                        'ايام 7',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )),
                const SizedBox(
                  width: 7,
                ),
                Container(
                    width: 80,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Text(
                        '13-09-2022',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3, left: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'ID',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '181433',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'المبلغ الواجب سداده',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('2000', style: TextStyle(fontSize: 12))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'عدد الايام المتأخرة',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('1-', style: TextStyle(fontSize: 12))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'الوقت المتبقي',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text('13.09.2022 13:20', style: TextStyle(fontSize: 9)),
                    Text('13.09.2022 13:20',
                        style: TextStyle(fontSize: 9, color: Colors.red))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 1,
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(children: const [
                Icon(Icons.wallet),
                SizedBox(
                  width: 7,
                ),
                Text('محفظة اورانج')
              ])),
        ],
      ),
    );
Widget activeprofileCard() => Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 23, 79, 200),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8, left: 8),
            child: Row(
              children: [
                const Text(
                  '2022-09-13',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Spacer(),
                Container(
                  height: 33,
                  width: 62,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 23, 79, 200),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(70)),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'التفاصيل  >',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'مستوى التحصيل',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 23, 79, 200),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'T-1',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        )),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'مرات الاتصال',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('8',
                        style: TextStyle(color: Colors.white, fontSize: 12))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'مكالمات',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('11',
                        style: TextStyle(color: Colors.white, fontSize: 12))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'معدل الانجاز',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('12.5%',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
Widget profileCard() => Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: Colors.green[800], borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8, left: 8),
            child: Row(
              children: [
                const Text(
                  '2022-09-13',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Spacer(),
                Container(
                  height: 33,
                  width: 62,
                  decoration: BoxDecoration(
                      color: Colors.green[800],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(70)),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'التفاصيل  >',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'مستوى التحصيل',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.green[800],
                            borderRadius: BorderRadius.circular(25)),
                        child: const Center(
                          child: Text(
                            'T-1',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        )),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'مرات الاتصال',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('8',
                        style: TextStyle(color: Colors.white, fontSize: 12))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'مكالمات',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('11',
                        style: TextStyle(color: Colors.white, fontSize: 12))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'معدل الانجاز',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('12.5%',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
