#include <stdio.h>

int main() {
  printf("Enter the number of kits:\n");
  int kitQuantity;
  scanf("%d", &kitQuantity);

  printf("Number of USB Cables:\n");
  int usbCables;
  scanf("%d", &usbCables);

  int motors 		= 4* kitQuantity;
  int batteries		= 1* kitQuantity;
  int controllerChips	= 1* kitQuantity;
  int ultrasonicSensors	= 2* kitQuantity;
  int frames		= 1* kitQuantity;

  printf("Pack List\n");
  printf("---------\n");
  printf("USB Cables: %d\n", usbCables);
  printf("Step Motors: %d\n", motors);
  printf("Batteries: %d\n", batteries);
  printf("Controller Chips: %d\n", controllerChips);
  printf("Ultrasonic Sensors: %d\n", ultrasonicSensors);
  printf("Frames: %d\n", frames);
}
