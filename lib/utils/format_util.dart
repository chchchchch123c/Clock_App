class FormatUtil {

  static String formatTotalDuration(int totalSeconds) {
    if (totalSeconds <= 0) return '';

    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;

    final buffer = StringBuffer();

    if (hours > 0) {
      buffer.write('$hours시간 ');
    }
    if (minutes > 0) {
      buffer.write('$minutes분 ');
    }
    if (seconds > 0 || buffer.isEmpty) {
      buffer.write('$seconds초');
    }

    return buffer.toString().trim();
  }

  static String formattedRemainingTime(int remainingSeconds) {
    if (remainingSeconds <= 0) return '0';

    final hours = remainingSeconds ~/ 3600;
    final minutes = (remainingSeconds % 3600) ~/ 60;
    final seconds = remainingSeconds % 60;

    if (hours > 0) {
      return '$hours:'
          '${minutes.toString().padLeft(2, '0')}:'
          '${seconds.toString().padLeft(2, '0')}';
    }

    if (minutes > 0) {
      return '$minutes:'
          '${seconds.toString().padLeft(2, '0')}';
    }

    return '$seconds';
  }


  static String formatEndTime(DateTime? time) {
    if (time == null) return '';

    final isAm = time.hour < 12;
    final period = isAm ? '오전' : '오후';

    int hour = time.hour % 12;
    if (hour == 0) hour = 12;

    final minute = time.minute.toString().padLeft(2, '0');

    return '$period $hour:$minute';
  }


}