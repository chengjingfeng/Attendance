
class Scan {
  int id;
  String key;
  String classKey;
  String admin;
  String arrive;
  String leave;
  Scan({
    this.id,
    this.key,
    this.classKey,
    this.admin,
    this.arrive,
    this.leave
  });

  factory Scan.fromMap(Map<String, dynamic> json) => Scan(
        id: json["id"],
        key: json["key"],
        classKey: json["classKey"],
        admin: json["admin"],
        arrive: json["arrive"],
        leave: json["leave"]
      );

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic> ();
    map["id"] = id;
    map["key"] = key;
    map["classKey"] = classKey;
    map["admin"] = admin;
    map["arrive"] = arrive;
    map["leave"] = leave;
    return map;
  }

  String arriveTimePart() {
    List<String> datetime = arrive.split("T");
    List<String> dateParts =datetime[0].split("-");
    List<String> timeParts =datetime[1].split(":");
    return "${dateParts[2]}/${dateParts[1]} at ${timeParts[0]}:${timeParts[1]}";
  }

  String leaveTimePart() {
    if(leave==null) {
      return "";
    }
    List<String> datetime = leave.split("T");
    List<String> dateParts =datetime[0].split("-");
    List<String> timeParts =datetime[1].split(":");
    return "${dateParts[2]}/${dateParts[1]} at ${timeParts[0]}:${timeParts[1]}";
  }
}