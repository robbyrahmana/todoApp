import 'package:flutter/material.dart';
import 'package:todoapp/model/database.dart';
import 'package:todoapp/model/todo.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/widgets/custom_button.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Database().getTodoByType(TodoType.TYPE_TASK.index),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        if (snapshot.data == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return snapshot.data[index].isFinish
                  ? _taskComplete(snapshot.data[index].task)
                  : _taskUncomplete(snapshot.data[index]);
            },
          );
        }
      },
    );
  }

  Widget _taskUncomplete(TodoData data) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                          child: Text(
                        "Confirm Task",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Text(data.task),
                      SizedBox(
                        height: 24,
                      ),
                      Text(new DateFormat("dd-MM-yyyy").format(data.date)),
                      SizedBox(
                        height: 24,
                      ),
                      CustomButton(
                        buttonText: "Complete",
                        onPressed: () {
                          Database()
                              .completeTodoEntries(data.id)
                              .whenComplete(() => Navigator.of(context).pop());
                        },
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              );
            });
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                          child: Text(
                        "Delete Task",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Text(data.task),
                      SizedBox(
                        height: 24,
                      ),
                      Text(new DateFormat("dd-MM-yyyy").format(data.date)),
                      SizedBox(
                        height: 24,
                      ),
                      CustomButton(
                        buttonText: "Delete",
                        onPressed: () {
                          Database()
                              .deleteTodoEntries(data.id)
                              .whenComplete(() => Navigator.of(context).pop());
                        },
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 12.0, bottom: 12.0, right: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.radio_button_unchecked,
              color: Theme.of(context).accentColor,
              size: 20,
            ),
            SizedBox(
              width: 28,
            ),
            Text(data.task)
          ],
        ),
      ),
    );
  }

  Widget _taskComplete(String task) {
    return Container(
      foregroundDecoration: BoxDecoration(color: Color(0x60FDFDFD)),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 12.0, bottom: 12.0, right: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.radio_button_checked,
              color: Theme.of(context).accentColor,
              size: 20,
            ),
            SizedBox(
              width: 28,
            ),
            Text(task)
          ],
        ),
      ),
    );
  }
}
