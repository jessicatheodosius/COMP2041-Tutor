#!/usr/local/bin/python3
import glob, os, sys, re

dataset = 'dataset-medium'

def get_number(filename):
    numbers = re.findall(r'[0-9]+', filename)
    return int(numbers[1])

def is_post(filename):
    return re.search(r'\/[0-9]+\.txt$', filename)

def student_post_filenames(student):
    post_filenames = glob.glob(os.path.join(dataset, student, '*.txt'))
    post_filenames = list(filter(is_post, post_filenames))
    return sorted(post_filenames, key=get_number, reverse=True)

for user in sys.argv[1:]:
	print('\n'.join(student_post_filenames(user)))
