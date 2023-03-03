#include <stdlib.h>

#include "fcgi_stdio.h"

int main(void)
{
  while (FCGI_Accept() >= 0)
  {
    printf(
        "Content-type: text/html\r\nStatus: 200 OK\r\n"
        "\r\n"
        "<title>Hello World!</title>"
        "<h1>Hello World!</h1>"
        "<h1>Part 3</h1>");
  }
  return 0;
}