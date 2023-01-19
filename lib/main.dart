import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var card1 = SizedBox(
      height: 350.0,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.deepPurple.shade900,
              title: const Text(
                  "Select Movement Analysis Overrides",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                  )
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                  'Sit to Stand',
                  style: TextStyle(fontWeight: FontWeight.w500)
              ),
              leading: Checkbox(
                checkColor: Colors.deepPurpleAccent,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              )
            ),
            ListTile(
                title: Text(
                    'Sit to Stand',
                    style: TextStyle(fontWeight: FontWeight.w500)
                ),
                leading: Checkbox(
                  checkColor: Colors.deepPurpleAccent,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                )
            ),
          ],
        ),
      ),
    );
    var card2 = SizedBox(
      height: 400.0,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.deepPurple.shade900,
              title: const Text(
                  "Enter Garmin Device ID",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )
              ),
              trailing: Icon(Icons.perm_device_info, color: Colors.pink,),
            ),
            const ListTile(
              title: Text(
                  "Click on a Device ID to make it active.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
              ),
            ),
            const Divider(),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => MyItem(index),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add New',
                ),
              ),
              trailing: TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                ),
                child: const Text("+", style: TextStyle(color: Colors.greenAccent, fontSize: 40)),
              )
            )
          ],
        ),
      ),
    );
    var card3 = SizedBox(
      height: 400.0,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.deepPurple.shade900,
              title: const Text(
                  "Select Surveys",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )
              ),
              trailing: Icon(Icons.perm_device_info, color: Colors.pink,),
            ),
            Divider(),
            ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search surveys',
                  ),
                ),
                trailing: TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                  ),
                  child: Icon(Icons.search),
                )
            ),
            const Divider(),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => MySurvey(index),
                ),
              ),
            ),
            const Divider(),
            Container(
              child: TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                ),
                child: Text('Save Participant'),
              ),
            )
          ],
        ),
      ),
    );
    var card4 = SizedBox(
      height: 400.0,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.deepPurple.shade900,
              title: const Text(
                  "Movement Analysis Overrides",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.blueGrey[900],
                size: 25,
              ),
              title: const Text(
                  "Sit to Stand",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurpleAccent,
                  )
              ),
              trailing: Icon(Icons.perm_device_info, color: Colors.pink,),
            ),
            const Divider(),
            Row(
              children: [
                const SizedBox(width: 25),
                Column(
                  children: const [
                    Text(
                      "Applicable from:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                        )
                    ),
                    DatePickerWidget(restorationId: 'main')
                  ],
                ),
                const SizedBox(width: 50),
                Column(
                  children: const [
                    Text(
                        "Applicable until:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                        )
                    ),
                    DatePickerWidget(restorationId: 'main')
                  ],
                )
              ],
            ),
            const Divider(),
            Column(
              children: const [
                ListTile(
                  leading: SizedBox(
                    width: 60,
                    height: 40,
                    child: TextField(
                      textAlign: TextAlign.center,
                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        hintText: '90',
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  title: Text(
                      "Angle at knee",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple,
                      )
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 60,
                    height: 40,
                    child: TextField(
                      textAlign: TextAlign.center,
                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        hintText: '90',
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  title: Text(
                      "Angle at knee",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple,
                      )
                  ),
                )
              ],
            ),
            const Divider(),
            TextButton(
              onPressed: (){},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
              ),
              child: Text('Save Overrides'),
            )
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("ameya"),
        actions: [
          Icon(Icons.menu),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                alignment: Alignment.center,
                color: Colors.amber,
                height: 40,
                width: double.infinity,
                child: const Text(
                    "Create/Edit a Participant Profile",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple,
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    const Text(
                        "Participant Settings",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                        )
                    ),
                    card1,
                    const Divider(),
                    card2,
                    const Divider(),
                    card3,
                    const Divider(),
                    card4
                  ],
                )
              ),
            ],
          )
        ],
      )
    );
  }
}
class MyItem extends StatelessWidget {
  final int index;
  const MyItem(this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Device ID #${index + 1}'),
    );
  }
}
class MySurvey extends StatefulWidget {
  final int index;
  const MySurvey(this.index);
  @override
  _MySurvey createState() => _MySurvey();
}
class _MySurvey extends State<MySurvey> {
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        checkColor: Colors.deepPurpleAccent,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      title: Text('Survey ${widget.index + 1}'),
    );
  }
}


class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key, required this.restorationId}) : super(key: key);

  final String? restorationId;

  @override
  State<DatePickerWidget> createState() => _DatePickerWidget();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePickerWidget extends State<DatePickerWidget>
    with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
  RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
  RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
      BuildContext context,
      Object? arguments,
      ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _restorableDatePickerRouteFuture.present();
      },
      child: Row(
        children: [
          Text("12/31/2022"),
          const SizedBox(width: 5),
          Icon( Icons.calendar_view_month_outlined)
        ],
      )
    );
  }
}
