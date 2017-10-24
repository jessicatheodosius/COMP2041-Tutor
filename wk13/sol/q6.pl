#!/usr/bin/perl -w

while (<STDIN>) {
    $totalMark = 0;
    @marks = split;
    $studentID = $marks[0];
    for ($i = 1; $i <= $#marks; $i++) {
        $totalMark += $marks[$i];
    }
    printf "%s %d\n", $studentID, $totalMark;
}
