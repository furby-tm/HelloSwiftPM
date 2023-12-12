#include "HelloSwiftPM/HelloSwiftPM.h"

#include "HelloSwiftPM/SayHello/SayHello.h"
#include "HelloSwiftPM/SayHelloAgain/SayHelloAgain.h"

#include <stdio.h>
#include <string>

void sayHelloAgain(void) 
{
  const std::string sayHelloAgain = " Again!\n";

  sayHello();
  printf((HELLO_SWIFT_PM + sayHelloAgain).c_str());
}
