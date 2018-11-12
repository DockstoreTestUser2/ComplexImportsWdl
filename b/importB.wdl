import "../d/importD.wdl" as importD

task helloFour {
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
}
