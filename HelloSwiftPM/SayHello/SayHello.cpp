#include "HelloSwiftPM.h"

#include "SayHello/SayHello.h"

#include <stdio.h>
#include <string>

void sayHello(void) 
{
  const std::string sayHello = "\n";

  printf("%s", (HELLO_SWIFT_PM + sayHello).c_str());
}
