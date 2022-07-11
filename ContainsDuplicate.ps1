function ContainsDuplicate {

    param([int[]]$nums)

    $unique = @()
    for ($i = 0; $i -le ($nums.Count - 1); $i++) {
        if ($unique.Contains($nums[$i])){
            return $true
        } else {
            $unique += $nums[$i]
        }
    }
    return $false
}

[int[]]$nums = 1,2,3,1
ContainsDuplicate $nums

[int[]]$nums = 1,2,3,4
ContainsDuplicate $nums

$nums = 1,1,1,3,3,4,3,2,4,2
ContainsDuplicate $nums