import ceylon.time {
	systemTime
}

Integer storeSize = 1000;
Integer iterations = 1000;

{Integer*} store = { for (i in 0:storeSize) -i };

void dummy(Integer key, Integer item) {
	if (key + item != 0) {
		print("Didn't happen.");
	}
}

shared void run() {
	Integer start = systemTime.milliseconds();
	
	for (Integer i in 0:iterations) {
		Iterator<Integer> keysIterator = (0:storeSize).iterator();
		Iterator<Integer> itemsIterator = store.iterator();
		while (true) {
			Integer|Finished key = keysIterator.next();
			Integer|Finished item = itemsIterator.next();
			
			if (is Integer key) {
				if (is Integer item) {
					dummy(key, item);
				} else {
					break;
				}
			} else {
				break;
			}
		}
	}
	
	Integer end = systemTime.milliseconds();
	Integer duration = end - start;
	print("Duration: " + duration.string);
}
