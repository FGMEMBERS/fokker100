
doorNode = props.globals.getNode("/sim/model/f70/door", 0);
parkingNode = props.globals.getNode("/controls/gear/brake-parking");
altNode = props.globals.getNode("position/altitude-agl-ft");
speedNode = props.globals.getNode("/velocities/airspeed-kt");

testDoor = func {
   parkingNode.setValue(!parkingNode.getValue());

   if (parkingNode.getValue() and (altNode.getValue() < 10)
       and (speedNode.getValue() < 8)) {
      # delay = 10 + 10*rand();
      delay = 1;
      settimer( func { interpolate( doorNode, 1, 3.2 ) }, delay );
   }
}
