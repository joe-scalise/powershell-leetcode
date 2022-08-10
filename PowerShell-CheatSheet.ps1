# Making a generic List (expandable)
$list = [System.Collections.Generic.List[System.Object]]@()
[System.Collections.Generic.List[int]]$list = @()
foreach ($value in 1..5) {
    $list.Add($value)
}

# Typical PowerShell Array's (fixed size)
$array = @()
$array = ,1
foreach ($value in 1..5) {
    # new array every time...
    $array += $value
}

# For loops
$nums = 1,2,3,4
for ($i = 0; $i -le ($nums.Count - 1); $i++) { $nums[$i] }