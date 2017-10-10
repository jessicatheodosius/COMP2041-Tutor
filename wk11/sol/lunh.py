#!/usr/local/bin/python3
# written by andrewt@cse.unsw.edu.au as a COMP2041 programming example
# validate a credit card number by calculating its
# checksum using Luhn's formula (https://en.wikipedia.org/wiki/Luhn_algorithm)

import re, sys

def luhn_checksum(number):
    checksum = 0
    digits = reversed(number)
    for (index, digit) in enumerate(digits):
        multiplier = 1 + index % 2
        d = int(digit) * multiplier
        if d > 9:
            d -= 9
        checksum += d
    return checksum

def validate(credit_card):
    number = re.sub(r'\D', '', credit_card)
    if len(number) != 16:
        return credit_card + " is invalid - does not contain exactly 16 digits"
    elif luhn_checksum(number) % 10 == 0:
        return credit_card + " is valid"
    else:
        return credit_card + " is invalid"

if __name__ == "__main__":
    for arg in sys.argv[1:]:
        print(validate(arg))
