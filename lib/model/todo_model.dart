
class TodoModel{
  int id;
  DateTime date;
  int category;
  String text;
  bool isActive;
  bool isRepeat;
  ScheduleAlarm ? isAlarm;

  TodoModel( this.id,this.date, this.category, this.text, this.isActive, this.isRepeat, this.isAlarm);
}
class ScheduleAlarm{

  DateTime date;
  String time;
  int alarmCategory; //0 -> Silence , 1 -> Vibration , 2 -> Ringtone , 3 - > Ringtone & Vibration
  String ringtone;
  int vibration; // Vibration level.

  ScheduleAlarm(this.date, this.time, this.alarmCategory, this.ringtone, this.vibration);

}


enum AlarmCategory{ silence , vibration , ringtone , vibrationRingtone}