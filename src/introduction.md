---
title: Introduction 
---

Software development for embedded systems is traditionally done in low level languages such as C or assembler because that gives the programmer control over available hardware resources. Vast amounts of effort is spent on porting or developing new software for each new generation of a product as a consequence of that. The effort includes the work necessary for utilizing the extra features provided by the new generation of hardware. Development effort is considerable but still often pales in comparison to the required testing effort to ensure that the products work as intended once the software is constructed.


Goals of the Feldspar project are:

* High-performance Software: 
Embedded signal processing is a domain where performance is a top priority and any solution that hampers performance too much is automatically disqualified, no matter what other redeeming properties the solution has. The exact figure for too much varies; in some scenarios 30% or even 50% slower might be perfectly acceptable whereas for some scenarios a 10% performance penalty will mean that no deadlines are ever met and the system is completely useless.

* Portable Software: 
Portability, which allows the same software to run on multiple hardware generations, is a key property for coping with both the increasing pace of hardware updates and the increasing hardware diversity. The era of heterogeneous systems makes it difficult to predict what features the next generation hardware will contain, and even harder is predicting how to program for those features.

* Scalable Software: 
Using the same software on a small 8-bit embedded system as well as a large data center provides several benefits. The first benefit is development effort since only one program has to be developed. The second benefit is that testing and bug fixing effort needs to happen only once, and all platforms automatically contain the latest bug fixes.
