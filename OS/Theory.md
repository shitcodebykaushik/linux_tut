- Clock cycle means the one complete oscilation of the processor clock signal, which serves as the timing mechanism for the execution of instructions and data processing .
- Instruction is a command or operation that a CPU executes. It is the part of the program and tells the cpu what action to perform .
- `FORK` means creating the copy of the main process . It remains the same as the parent copy .
**Synchronous**
- It simply means that task happens one at a time and in specific order . The system wait for one task to finish before moving to the next .
- Use this only when tasks depend on the result of previous tasks .
**Asynchronous**
- It simply means that taks can happens at the same time or independently , in this system doesn't wait for one task to finish before moving to the next task .
**Serverless function** 
- Serverless function are mini programm that run only when needed .
**Events**
- Event driven architecture is powerful enough for building the scalable,reactive and loosely coupled system. It is great choice for applications that require the real time processing or flexibility in the system .
- An event in is a significant action or occurrence that a system or application detects and reacts to . 
 - There are different types of events  that we can see 
   -  `User Triggered Events`  => A user submitting the form logging into the applciation or any click by the user  .
   - `System-Triggered Events` => A file being uploaded to the system, or scheduled task completion or new record being added to a database .
   - External Events` => An external like a payments service sending payments successful notification . A sensor detecting a temperature change in the sensor.
