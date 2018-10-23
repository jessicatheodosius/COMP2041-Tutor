#!/usr/bin/perl -w
while (<STDIN>) {
    @marks = split;
    $studentID = $marks[0];
    for (i = 0; i < $#marks; i++) {
        $totalMark += $marks[$i];
    }
    printf "%s %d\n", $studentID, $totalMark;
}
