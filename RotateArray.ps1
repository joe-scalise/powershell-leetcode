function RotateArrayv1 {
    param(
        $nums,
        [int]$rotate
    )

    [int[]]$new = @()
    for ($i=$rotate; $i -ge 1; $i--) {
        $new += $nums[$nums.Count - $i]
    }

    $temp = 0..($nums.Count - 1)
    for ($j = $temp[0]; $j -lt ($temp.Count - $rotate); $j++) {
        $new += $nums[$j]
    }

    return "rotate $new"
}

# function RotateArrayv2 {
#     param(
#         $nums,
#         $rotate
#     )
    
#     return $nums[$rotate..($nums.length-1),0,1,2]
    
#     #for ($i=$rotate-1; $i -ge 0; $i--) { $i }
# }

[int[]]$nums = 1,2,3,4,5,6,7
$rotate = 3
RotateArrayv1 $nums $rotate
#RotateArrayv2 $nums $rotate

[int[]]$nums = -1,-100,3,99
$rotate = 2
RotateArrayv1 $nums $rotate
#RotateArrayv2 $nums $rotate