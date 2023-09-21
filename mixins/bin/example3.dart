void main(List<String> args) {}

class Has2Feet {
  const Has2Feet();
}

// below CanRun mixin can be used extended only by classes which already extends Has2Feet class
mixin CanRun on Has2Feet {}

// if Human class does not extend Has2Feet class then below code does not work
class Human extends Has2Feet with CanRun {}
