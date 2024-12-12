#!/bin/bash

cd models/csrc && python3 setup.py build_ext --inplace
cd ../../
python3 demo.py --model camliraft --weights checkpoints/camliraft_things80e.pt 