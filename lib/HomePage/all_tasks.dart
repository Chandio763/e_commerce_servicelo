import 'package:e_commerce_servicelo/HomePage/task_model_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../constants.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  _AllTasksState createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  late List<Task> tasks = [
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Clean My Home ',
        location: 'Satellite Town Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Repair Home ',
        location: 'Commercial Area Bahawalpur',
        price: '1000',
        status: 'Assigned'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Maid For daily Task ',
        location: 'Fareed Gate Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Clean My Home ',
        location: 'Satellite Town Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Repair Home ',
        location: 'Commercial Area Bahawalpur',
        price: '1000',
        status: 'Assigned'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Maid For daily Task ',
        location: 'Fareed Gate Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Clean My Home ',
        location: 'Satellite Town Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Repair Home ',
        location: 'Commercial Area Bahawalpur',
        price: '1000',
        status: 'Assigned'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Maid For daily Task ',
        location: 'Fareed Gate Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Clean My Home ',
        location: 'Satellite Town Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Repair Home ',
        location: 'Commercial Area Bahawalpur',
        price: '1000',
        status: 'Assigned'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Maid For daily Task ',
        location: 'Fareed Gate Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Clean My Home ',
        location: 'Satellite Town Bahawalpur',
        price: '1000',
        status: 'Open'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Need to Repair Home ',
        location: 'Commercial Area Bahawalpur',
        price: '1000',
        status: 'Assigned'),
    Task(
        iconData: Icon(Icons.person),
        title: 'Maid For daily Task ',
        location: 'Fareed Gate Bahawalpur',
        price: '1000',
        status: 'Open'),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text(
          'Earn Money',
          style: TextStyle(fontSize: 25, color: themeBackground),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          //Outer Column for whole Screen
          children: [
            SizedBox(
              height: height * 0.10,
              width: width,
              child: Column(
                //Column for two lines, one for All Tasks dropdown list and action buttons
                children: [
                  //Row Showing Dropdown List and Actions
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 15, bottom: 8, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('All Tasks',
                            style: TextStyle(
                              fontSize: 24,
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.search,
                          size: 25,
                        ),
                        Icon(
                          Icons.location_on,
                          size: 25,
                        ),
                        Icon(
                          Icons.filter_list_rounded,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 15, bottom: 8, right: 15),
                    child: Row(
                      children: const [
                        Text(
                          'All Tasks Near Lahore',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Uper Container Closed
            //
            //List Tile to Show List of Tasks Currently Posted

            SizedBox(
              //color: Colors.lightBlue,
              height: height * 0.84,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: tasks.length,
                itemExtent: 75,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      hoverColor: Colors.green.shade200,
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      //Center Title and Location
                      title: Text(
                        tasks[index].title!,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 14,
                          ),
                          Text(tasks[index].location!),
                        ],
                      ),

                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 20,
                            width: 75,
                            color: themeBackground,
                            child: Center(child: Text(tasks[index].status!)),
                          ),
                          Text(' Rs ${tasks[index].price}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      //Bottom Navigation To routes between Activities
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Earn Money',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.view_list,
          ),
          label: 'My Tasks',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.task,
          ),
          label: 'Post a Task',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
          ),
          label: 'My Messages',
          backgroundColor: themeBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_vert,
          ),
          label: 'More',
          backgroundColor: themeBackground,
        ),
      ]),
    );
  }
}
