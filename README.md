The idea here is to create a system where we build the executable classes and test classes exactly once, create a Docker container with these classes, and run a single test case.  Eventually we'd run each of th etest cases in their own Docker container, using Kubernetes jobs to manage the parallelism.

to build all the classes without running tests, execute the following:

```shell script
gradle clean assemble testClasses -x test
```

Next, create your Docker container:

```shell script
docker build -t tom-collings/parallel-testing .
````

Then run it interactively:

```shell script
docker run -it tom-collings/parallel-testing:latest
```

Once the container starts, run a single test without recompiling the classes/test classes with this command:

```shell script
./gradlew test -x classes -x testClasses --tests com.example.parallel.service.EvenServiceTest
```

Things I don't like yet:
- starting a gradle daemon is expensive
- running the gradle wrapper is expensive

Things still to do:
- write a script to create the kubernetes jobs
- collect the output from the test runs in a common area
