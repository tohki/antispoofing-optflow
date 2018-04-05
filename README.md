# antispoofing-optflow: Optical Flow counter-measures for the REPLAY-ATTACK database in Docker

This is an docker version of antispoofing.optflow: Optical Flow counter-measures for the REPLAY-ATTACK database in [1].

tohki/antispoofing-optflow - Docker Hub

https://hub.docker.com/r/tohki/antispoofing-optflow/

## Usage
```bash
$ docker run -it \
  --name antispoofing-optflow \
  -v /path/to/database:/DB \
  -v /path/to/result:/RESULT \
  tohki/antispoofing-optflow \
  optflow_estimate.py --verbose /DB /RESULT replay --protocol=photo \
```
for details and other options, please refer original pypi documentation site[1].

## References
[1] ``antispoofing.optflow'', https://pypi.python.org/pypi/antispoofing.optflow