# Defined in /var/folders/7f/zt6r3c4s0kx87hw2x7xdk1j80000gn/T//fish.9chwdN/advent.fish @ line 2
function advent --description 'Fetch Advent of Code input' --argument year day
    if test -z $aoc_session
        echo "Need a session!"
        return 1
    end

    if test -z $year; and test "12" != (date "+%m")
        echo "It's not december you want to supply explicit day and year."
        return 2
    end

    if test -z $year
        set year (date "+%Y")
    end
    if test -z $day
        set day (date "+%d")
    end

    set slug "$year/day/$day/input"
    set f (string join _ "input" $year $day)
    curl --cookie "session=$aoc_session" https://adventofcode.com/$slug > $f
end
