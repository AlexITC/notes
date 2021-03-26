
# Find object class loader
obj.getClass().getProtectionDomain().getCodeSource().getLocation()

# reading stacktraces on logs
- https://www.nurkiewicz.com/2011/09/logging-exceptions-root-cause-first.html

# visualvm
- Make sure to install the jdk: `sudo apt install openjdk-8-jdk-headless`
- Create the policy at `~/.jstatd.all.policy`
- Parse big dumps: `./bin/visualvm -J-Xmx25g -J-XX:-UseGCOverheadLimit`

```
grant codebase "file:${java.home}/../lib/tools.jar" {
  permission java.security.AllPermission;
};
```

- Run jstatd on the server: `jstatd -J-Djava.security.policy=~/.jstatd.all.policy`
- Open a tunnel to the default jstad port: `ssh -L 1099:localhost:1099 server-test`
- Then, use the visualvm UI to connect to the local jstad.

# Never use the URL object
https://brian.pontarelli.com/2006/12/05/mr-gosling-why-did-you-make-url-equals-suck/

# Generate a heap dump on OutOfMemoryError
Take the dump to VisualVM, after the error, a file like `java_pid18013.hprof` should be saved in the app's working directory.
- java -XX:+HeapDumpOnOutOfMemoryError ...

# Parse big memory dumps from eclipse mat
`./MemoryAnalyzer -vmargs -Xmx20g -XX:-UseGCOverheadLimit`
