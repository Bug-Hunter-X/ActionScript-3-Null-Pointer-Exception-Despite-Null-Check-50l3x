function handleComplete(event:Event):void {
  var myData:Object = event.target.data; 

  //Explicit check for null at every level 
  if (myData != null && myData.someField != null && myData.someField.someProperty != null) {
    trace(myData.someField.someProperty);
  } else {
    trace("Null encountered at some level");
  }
}