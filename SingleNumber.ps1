function SingleNumber {
    param([int[]]$nums)

    $noDuplicates = [System.Collections.Generic.List[int]]@()
    foreach ($i in $nums) {
        if ($noDuplicates.Contains($i) > $null) {
            $noDuplicates.Remove($i)
        } else {
            $noDuplicates.Add($i)
        }
    }
    return $noDuplicates[0]
}

[int[]]$nums = 2,2,1
SingleNumber $nums

[int[]]$nums = 4,1,2,1,2
SingleNumber $nums

[int[]]$nums = 1
SingleNumber $nums