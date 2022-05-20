void main(List<String> arguments) {

  // var future = Future.delayed(Duration(seconds: 1), (){
  //    throw Exception("Loi");
  // });
  //
  // future.then((value){
  //   print(value);
  // })
  // .catchError((error){
  //   print("Error $error");
  // });
  handle();
}

void handle() async{
  try{
    var data = await Future.delayed(Duration(seconds: 1), () => 3);
    var result = await Future.delayed(Duration(seconds: 1) , () => throw Exception("Loi"));
  }catch(e){
    print(e.toString());
  }

}
