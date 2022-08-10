function RemoveDuplicates {
    param([int[]]$nums)

    $current = $null
    for ($i=0; $i -le ($nums.Count - 1); $i++){
        if ($nums[$i] -eq $current) {

        }
    }

    return "remove duplicates $new"
}

$nums = 1, 1, 2
RemoveDuplicates $nums

$nums = 0,0,1,1,1,2,2,3,3,4
RemoveDuplicates $nums