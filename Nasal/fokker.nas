parkingNode = props.globals.getNode("/controls/gear/brake-parking");
wowNode = props.globals.getNode("/gear/gear/wow");

stairs = aircraft.door.new("sim/model/f70/stairs", 5);

setlistener(parkingNode, func {
   is_parked = func { parkingNode.getValue() and wowNode.getValue() };
   if (is_parked()) {
      delay = 10 + 10*rand();
      settimer( func { if (is_parked()) { stairs.open() }}, delay );
   } else {
      stairs.close();
   }
}, 1);
