void main(List<String> arguments) {
  final member1 = FamilyMember(name: "Ben");
  final member2 = FamilyMember(name: "Baran");
  // with plus operator dart understands it directly goes and looks at the extension that we defined
  print(member1 + member2);
}

class FamilyMember {
  final String name;
  FamilyMember({required this.name});

  @override
  String toString() => "Family member  name:$name";
}

class Family {
  final List<FamilyMember> members;
  const Family({required this.members});

  @override
  String toString() {
    return "Family: $members";
  }
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
