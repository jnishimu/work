# -*- coding: utf-8 -*-

import sys


i = 0
n = 0
a = []
for line in sys.stdin:
	line = line.rstrip()
	if i == 0:
		line = int(line)
		n = line
	else:
		a_str = line.split()
		a = map(int,a_str)
	
	i+=1
	
ans = 0
# 棒を重複して選ばないようi < j < kとなるようにしている
for i in range(n - 1):
	for j in range(i + 1, n - 1):
		for k in range(j + 1, n - 1):
			leng = a[i] + a[j] + a[k]
			nums = (a[i],a[j],a[k])
			ma = max(nums)
			rest = leng - ma

			if ma < rest:
				ans = max(ans,leng)

print ans
