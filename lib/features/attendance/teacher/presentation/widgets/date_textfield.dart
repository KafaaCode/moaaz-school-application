import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTextField extends StatefulWidget {
  const DateTextField({super.key});

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  // Controller for the TextField.
  late TextEditingController _textEditingController;
  // State variable to hold the selected date and time.
  late DateTime _selectedDateTime;

  @override
  void initState() {
    super.initState();
    // Initialize with the current date and time.
    _selectedDateTime = DateTime.now();
    _textEditingController = TextEditingController(
      text: DateFormat('M/d/yyyy HH:mm:ss').format(_selectedDateTime),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  // Function to show the date picker.
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue, // Header background color
              onPrimary: Colors.white, // Header text color
              surface: Colors.white, // Picker background color
              onSurface: Colors.black, // Picker text color
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != _selectedDateTime) {
      setState(() {
        _selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          _selectedDateTime.hour,
          _selectedDateTime.minute,
          _selectedDateTime.second,
        );
      });
      // After selecting the date, immediately show the time picker.
      _selectTime(context);
    }
  }

  // Function to show the time picker.
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue, // Header background color
              onPrimary: Colors.white, // Header text color
              surface: Colors.white, // Picker background color
              onSurface: Colors.black, // Picker text color
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (pickedTime != null) {
      setState(() {
        _selectedDateTime = DateTime(
          _selectedDateTime.year,
          _selectedDateTime.month,
          _selectedDateTime.day,
          pickedTime.hour,
          pickedTime.minute,
        );
        // Update the TextField with the new formatted date and time.
        _textEditingController.text = DateFormat(
          'M/d/yyyy HH:mm:ss',
        ).format(_selectedDateTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: _textEditingController,
        readOnly: true, // Prevents keyboard from appearing.
        onTap: () => _selectDate(context),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          isDense: true,
          // contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
          // Moved the Arabic text to the labelText property.
          label: Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Text(
              'تاريخ الغياب',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            ),
          ),
          // labelStyle: const TextStyle(color: Colors.white, fontSize: 16),
          // floatingLabelStyle: const TextStyle(
          //   color: Colors.white,
          //   fontSize: 16,
          // ),
          // border: const UnderlineInputBorder(
          //   borderSide: BorderSide(color: Colors.white, width: 2.0),
          // ),
          // enabledBorder: const UnderlineInputBorder(
          //   borderSide: BorderSide(color: Colors.white, width: 2.0),
          // ),
          // focusedBorder: const UnderlineInputBorder(
          //   borderSide: BorderSide(color: Colors.white, width: 2.0),
          // ),
        ),
      ),
    );
  }
}
