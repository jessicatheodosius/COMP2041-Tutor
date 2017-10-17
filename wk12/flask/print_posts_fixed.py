#!/usr/local/bin/python3

import glob, os, re, sys

dataset = "dataset-medium"

def student_post_filenames(student):
	all_filenames = glob.glob(os.path.join(dataset, student, '*.txt'))
	post_numbers = []
	for filename in all_filenames:
		m = re.search(r'\/([0-9]+)\.txt$', filename)
		if m:
			post_numbers.append(int(m.group(1)))
	sorted_post_numbers = sorted(post_numbers, reverse=True) 
	post_filenames = []
	for post_number in sorted_post_numbers:
		post_filename = str(post_number) + '.txt'
		full_post_filename= os.path.join(dataset, student, post_filename)
		post_filenames.append(full_post_filename)
	return post_filenames

for user in sys.argv[1:]:
	print(" ".join(student_post_filenames(user)))
