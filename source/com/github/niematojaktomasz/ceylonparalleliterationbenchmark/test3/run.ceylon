import ceylon.time {
	systemTime
}

Integer storeSize = 1000;
Integer iterations = 100000;

{Integer*} store = { for (i in 0:storeSize) -i };

void dummy(Integer key, Integer item) {
	if (key + item != 0) {
		print("Didn't happen.");
	}
}

shared void run() {
	Integer start = systemTime.milliseconds();
	
	for (Integer i in 0:iterations) {
		for([Integer, Integer] j in zipPairs(0:storeSize, store)) {
			dummy(j[0], j[1]);			
		}
	}
	
	Integer end = systemTime.milliseconds();
	Integer duration = end - start;
	print("Duration: " + duration.string);
}
