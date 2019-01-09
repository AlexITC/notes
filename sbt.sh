
# start sbt fast
sbt "set skip in update := true" compile

# enable remote debugging
sbt -J-Xdebug -J-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 run

# display dependency tree
sbt "inspect tree clean"

# install libs locally
set offline := true
publishM2
publishLocal

# run with a custom config (for typesafe config)
sbt -Dconfig.resource="custom.conf" run
