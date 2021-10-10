from collections import Counter, defaultdict
import re
def python_read(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        for line in f:
            yield line

d = defaultdict(int)

def process(line):
    for word in re.sub('\W+', ' ', line).split():
        d[word] += 1
