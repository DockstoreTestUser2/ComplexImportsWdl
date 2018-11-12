import "../a/importA.wdl" as importA

task hello {
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

workflow test {
  call hello
}
