var engineFire = func
{
# activate fire if engine "on-fire" property is true
if (getprop("controls/engines/engine[0]/on-fire"))
  {
  setprop("controls/engines/engine[0]/cutoff", "true");
  }
if (getprop("controls/engines/engine[1]/on-fire"))
  {
  setprop("controls/engines/engine[1]/cutoff", "true");
  }

settimer(engineFire, 0.05);
}

settimer(engineFire, 5);