#!/bin/sh

wget ftp://massive.ucsd.edu/MSV000078836/clustered/MSV000078836_specs_ms.mgf ftp://massive.ucsd.edu/MSV000078839/clustered/MSV000078839_specs_ms.mgf
cat MSV000078836_specs_ms.mgf MSV000078839_specs_ms.mgf > cruesemann.mgf
