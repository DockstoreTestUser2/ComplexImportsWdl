import "importC.wdl" as importC

task helloTwo {
  String name

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
  runtime {
   docker: "quay.io/agduncan94/my-md5sum"
 }
