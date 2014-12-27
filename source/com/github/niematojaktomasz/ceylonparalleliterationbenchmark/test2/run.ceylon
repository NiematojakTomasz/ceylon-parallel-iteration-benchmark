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
		for(key->item in store.indexed) {
			dummy(key, item);			
		}
	}
	
	Integer end = systemTime.milliseconds();
	Integer duration = end - start;
	print("Duration: " + duration.string);
}
