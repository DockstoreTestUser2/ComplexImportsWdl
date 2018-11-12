import "../a/importA.wdl" as importA
import "../b/importB.wdl" as importB

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
  call importA.helloTwo
  call importB.helloFour
  call importA.helloThree
  call importB.helloFive
}
