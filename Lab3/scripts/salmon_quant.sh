#!/bin/bash

fn=$1
samp=`basename ${fn}`

#echo "Processing sample ${samp}"
salmon quant -i athal_index -l A \
         -1 ${fn}/${samp}_1.fastq.gz \
         -2 ${fn}/${samp}_2.fastq.gz \
         -p 8 -o quants/${samp}_quant
