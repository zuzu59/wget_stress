#!/bin/bash
#petit script tout simple pour perdre du temps

#zf171109.1552

typeset -i mCnt=0
while [[ ${mCnt} -le $1 ]]; do
  mCnt=${mCnt}+1
done

exit


