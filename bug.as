function handleComplete(event:Event):void {
  //This code was intended to check if a specific data field is null before using it.
  var myData:Object = event.target.data; 
  if (myData.someField == null) {
    trace("someField is null");
    return; 
  }
  //Using the data after the check
  trace(myData.someField.someProperty);
}