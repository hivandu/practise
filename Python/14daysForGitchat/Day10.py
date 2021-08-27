# -*- Coding UTF-8 -*- #
# f = open('/Users/du/file.txt')
# print(f.read())

fw = open('/Users/du/file.txt', 'w')
fw.write('12345-12345-12345')
fw.close()

f = open('/Users/du/file.txt', 'r')
print(f.read())
f.close()

f = open('/Users/du/file.txt', 'a')
f.write('\nappend information')
f.close()

f = open('/Users/du/file.txt', 'r')
print(f.read())
f.close()

f = open('/Users/du/file.txt', 'r')
print(f.read(4))
f.close()

f = open('/Users/du/file.txt', 'w')
f.write('append information1\n')
f.write('append information2\n')
f.write('append information3\n')
f.close()
f = open('/Users/du/file.txt', 'r')
while True:
    line = f.readline()
    if(not line):
        break
    print('content:', line)

f.close()

f = open('/Users/du/file.txt', 'r')
for line in f.readlines():
    print('content: ', line)
f.close()

f = open('/Users/du/file.txt', 'a')
content = ['append information1\n','append information2']
f.writelines(content)
f.close()

import fileinput
for line in fileinput.input('/Users/du/file.txt'):
    print(line)

f = open('myfile.txt', 'r')
for line in f:
    print('content:', line)
f.close()

f = open('myfile.txt', 'r')
lines = list(f)
print(lines)
f.close()
