#!/bin/bash

ipython profile create rkernel
OUTPUT=$(ipython locate profile rkernel)
mv rkernel.py ${OUTPUT}/startup
