import 'package:flutter/material.dart';

class PotensiMasalah extends StatefulWidget {
  @override
  _PotensiMasalahState createState() => _PotensiMasalahState();
}

class _PotensiMasalahState extends State<PotensiMasalah> {
  List<TaskItemData> tasks = [
    TaskItemData(title: '', isSelected: true),
    TaskItemData(title: 'User Experience', isSelected: false),
    TaskItemData(title: 'User Research', isSelected: true),
    TaskItemData(title: 'UX Writing', isSelected: false),
    TaskItemData(title: 'User Testing', isSelected: false),
    TaskItemData(title: 'Service Design', isSelected: false),
    TaskItemData(title: 'Strategy', isSelected: true),
    TaskItemData(title: 'Design Systems', isSelected: true),
  ];

  void _toggleTaskSelection(int index) {
    setState(() {
      tasks[index].isSelected = !tasks[index].isSelected;
    });
  }

  void _navigateToPage2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Tasks'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: tasks.length,
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemBuilder: (context, index) {
          return TaskItem(
            title: tasks[index].title,
            isSelected: tasks[index].isSelected,
            onDoubleTap: () => _toggleTaskSelection(index),
            onTap: tasks[index].title == 'User Interface'
                ? () => _navigateToPage2(context)
                : null,
          );
        },
      ),
    );
  }
}

class TaskItemData {
  String title;
  bool isSelected;

  TaskItemData({required this.title, required this.isSelected});
}

class TaskItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onDoubleTap;
  final VoidCallback? onTap;

  const TaskItem({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onDoubleTap,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade200 : Colors.white, // Warna putih saat tidak dipilih, abu-abu saat dipilih
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Interface'),
      ),
      body: Center(
        child: Text(
          'Welcome to the User Interface page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  } 
}