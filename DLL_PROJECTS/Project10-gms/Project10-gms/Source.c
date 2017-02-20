#include <stdlib.h>
#include <stdio.h>

#define DllExport extern __declspec(dllexport)

DllExport char *printConsole(char *str)
{
	printf_s("%s", str);
}