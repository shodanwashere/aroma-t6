# Aroma T6
Aroma T6 is an open-source reverse engineering project, with the aim of reversing and reimplementing the independent service and matchmaking servers for Call of Duty: Black Ops 2 (codename CoD T6) on Wii U. The final implementation will only be playable for Wii U users running Aroma CFW and connected to the Pretendo Network.

## Test Environment

The test environment is composed of two parts:

- a modified Pretendo Network account server that will acknowledge requests from game title 0005000010113400 (aka, Call of Duty: Black Ops 2 [at least the PAL version]).
- a MITM proxy set up to redirect all account related requests over to the modified Pretendo Network account server.

Here's instructions on how to set them up:
### 1. Modified Pretendo Network account server
`TODO`

### 2. MITM proxy
Go to `test-env/` and run the included `start-proxy.sh` script, which will take care of everything.
Then head to your Wii U and go to "System Settings" > "Internet" > "Connect to the Internet" > "Saved Connections" > "[INSERT YOUR WIFI NETWORK HERE]" > "Change Settings" > "Proxy" > "Configure"
Set your computer's IP and port 8080 as the proxy's endpoint and do not set basic authentication.
Test the connection and ensure that the WiFi test request is caught by the proxy.

---

This project is completely unaffiliated from Activision and Treyarch. I do not reuse any of the official code and all methods were reimplemented with functionality in mind.
