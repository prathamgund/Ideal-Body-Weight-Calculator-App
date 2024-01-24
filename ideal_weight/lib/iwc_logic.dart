class IwcLogic{
  late int height;
  late String gender;
  late double idealWeight;

  IwcLogic(this.gender, this.height);

   String getIdealWeight(){
   if (gender == 'MALE') {
    idealWeight = 50 + (0.9* (height) - 152);
   } else if (gender == 'FEMALE') {
    idealWeight = 45.5 + (0.9*(height) - 152);
   }else {
    idealWeight = 50;
   }
   return idealWeight.toStringAsFixed(0);
  }
}