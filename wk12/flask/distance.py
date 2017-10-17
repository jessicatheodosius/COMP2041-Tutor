#!/usr/local/bin/python3

directory = 'dataset-small'
for f in glob.glob(os.path.join(directory, '*/student.txt')):
    with open(f) as open_file:
        for line in open_file:
            fields = line.split(': ', maxsplit=1)
            if fields[0] == 'home_latitude':
