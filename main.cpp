#include <ThingerESP8266.h>

#define USERNAME "dad69"
#define DEVICE_ID "esp8266"
#define DEVICE_CREDENTIAL "iY#xKbSV$QoW"

#define SSID "TP-LINK_186A"
#define SSID_PASSWORD "28809616"

ThingerESP8266 thing(USERNAME, DEVICE_ID, DEVICE_CREDENTIAL);

#define ledPin D0

void bulbOn() {
  digitalWrite(ledPin , LOW);
}
void bulbOff() {
  digitalWrite(ledPin , HIGH);
}

void setup() {
  Serial.begin(9600);
  pinMode(ledPin , OUTPUT);

  thing.add_wifi(SSID, SSID_PASSWORD);
  Serial.println("connected");

  thing["On"] = bulbOn;
  thing["Off"] = bulbOff;
}

void loop() {
  thing.handle();
}