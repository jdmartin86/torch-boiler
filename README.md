# torch-boiler
This repository contains boilerplate code for Pytorch experiments.

Currenty, the code includes a decoder-only transformer model I wrote while following Andrej Karpathy's nano-gpt tutorial. The dockerfile only contains support for a CPU.

### Build and Run
``` 
docker build -t boiler .
docker run boiler
```
