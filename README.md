ceylon-parallel-iteration-benchmark
===================================

#### Test results
##### Enviroment
```
$ ceylon -v
ceylon version 1.1.0 (Ultimate Ship The Second)
```
```
$ java -version
java version "1.8.0"
Java(TM) SE Runtime Environment (build 1.8.0-b132)
Java HotSpot(TM) 64-Bit Server VM (build 25.0-b70, mixed mode)
```
```
$ uname -v
Darwin Kernel Version 14.0.0: Fri Sep 19 00:26:44 PDT 2014; root:xnu-2782.1.97~2/RELEASE_X86_64
```
##### Results
```
$ ceylon run com.github.niematojaktomasz.ceylonparalleliterationbenchmark.test1
Duration: 71
$ ceylon run com.github.niematojaktomasz.ceylonparalleliterationbenchmark.test2
Duration: 3431
$ ceylon run com.github.niematojaktomasz.ceylonparalleliterationbenchmark.test1
Duration: 69
$ ceylon run com.github.niematojaktomasz.ceylonparalleliterationbenchmark.test2
Duration: 3490
```
```
$ ceylon run com.github.niematojaktomasz.ceylonparalleliterationbenchmark.test3
Duration: 9732
$ ceylon run com.github.niematojaktomasz.ceylonparalleliterationbenchmark.test3
Duration: 9698
```
