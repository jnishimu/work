import sys

MAX_N = 50

i = 0
k = []
n = 0
m = 0
for line in sys.stdin:
	line = int(line.rstrip())
	if i == 0:
		n = line
	elif i == 1:
		m = line
	else:
		k.append(line)
	
	i+=1

f = 0

for a in k:
	for b in k:
		for c in k:
			for d in k:
				if a + b + c + d == m:
					f = 1

if f == 1:
	print "Yes"
else:
	print "No"
