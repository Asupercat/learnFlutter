void debugLog(Object message, StackTrace current) {
  DebugCustomTrace programInfo = DebugCustomTrace(current);
  print("所在文件: ${programInfo.fileName}, 所在行: ${programInfo.lineNumber}, 打印信息: $message");
}

class DebugCustomTrace {
  final StackTrace _trace;

  String fileName;
  int lineNumber;
  int columnNumber;

  DebugCustomTrace(this._trace) {
    _parseTrace();
  }

  void _parseTrace() {
    var traceString = this._trace.toString().split("\n")[0];
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceString.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(":");
    this.fileName = listOfInfos[0];
    this.lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    this.columnNumber = int.parse(columnStr);
  }
}