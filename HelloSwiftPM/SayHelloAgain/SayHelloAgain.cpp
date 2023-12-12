#include "HelloSwiftPM.h"

#include "SayHello/SayHello.h"
#include "SayHelloAgain/SayHelloAgain.h"

#include <stdio.h>
#include <string>

void sayHelloAgain(void) 
{
  const std::string sayHelloAgain = " Again!\n";

  sayHello();
  printf("%s", (HELLO_SWIFT_PM + sayHelloAgain).c_str());
}
