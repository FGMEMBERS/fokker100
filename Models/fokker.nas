parkingNode = props.globals.getNode("/controls/gear/brake-parking");
wowNode = props.globals.getNode("/gear/gear/wow");

stairs = aircraft.door.new("sim/model/f70/stairs", 5);

testDoor = func {
   parkingNode.setValue(!parkingNode.getValue());

   if (parkingNode.getValue() and wowNode.getValue()) {
      delay = 10 + 10*rand();
      settimer( func { stairs.open() }, delay );
   } else {
      stairs.close();
   }
}
