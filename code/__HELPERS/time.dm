#define SECOND *10
#define SECONDS *10

#define MINUTE *600
#define MINUTES *600

proc/worldtime2text(time = world.time) // Shows current time starting at noon 12:00 (station time)
	return "[round(time / 36000)+12]:[(time / 600 % 60) < 10 ? add_zero(time / 600 % 60, 1) : time / 600 % 60]"

proc/time_stamp() // Shows current GMT time
	return time2text(world.timeofday, "hh:mm:ss")

proc/duration2text(time = world.time) // Shows current time starting at 0:00
	return "[round(time / 36000)]:[(time / 600 % 60) < 10 ? add_zero(time / 600 % 60, 1) : time / 600 % 60]"

/* Preserving this so future generations can see how fucking retarded some people are
proc/time_stamp()
	var/hh = text2num(time2text(world.timeofday, "hh")) // Set the hour
	var/mm = text2num(time2text(world.timeofday, "mm")) // Set the minute
	var/ss = text2num(time2text(world.timeofday, "ss")) // Set the second
	var/ph
	var/pm
	var/ps
	if(hh < 10) ph = "0"
	if(mm < 10) pm = "0"
	if(ss < 10) ps = "0"
	return"[ph][hh]:[pm][mm]:[ps][ss]"
*/

/* Returns 1 if it is the selected month and day */
proc/isDay(var/month, var/day)
	if(isnum(month) && isnum(day))
		var/MM = text2num(time2text(world.timeofday, "MM")) // get the current month
		var/DD = text2num(time2text(world.timeofday, "DD")) // get the current day
		if(month == MM && day == DD)
			return 1

		// Uncomment this out when debugging!
		//else
			//return 1
