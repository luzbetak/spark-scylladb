name := "scala2cassandra"

version := "1.0"

scalaVersion := "2.11.6"

libraryDependencies ++= Seq(
  "com.datastax.cassandra" % "cassandra-driver-core" % "3.1.0"
  //,"org.apache.cassandra" % "cassandra-all" % "2.1.6"
)

