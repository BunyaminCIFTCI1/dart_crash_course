// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // if we use ? for a nullable value then the method then instead of getting error we may get null result
  // but if we use ! operator then if the method becomes null then we get the error
  //variable_name?.methodName means execute the methodName method if variable_name is not null
  //variable_name!.methodName means execute the methodName method even if the variable_name is null so it will crash if it is null
  // int? a;
  // int? b;
  // int? c = a ?? b; if we don't use ? for c then we get an error but below for final variable there is no problem
  // final d = a ?? b;
}
