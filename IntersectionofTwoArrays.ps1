function Intersection {
    param([int[]]$nums1, [int[]]$nums2)

    $array = @()
    foreach ($i in $nums1) {
        if ( $nums2.Contains($i) ) {
            $array += $i
        }
    }
    return $array
}

[int[]]$nums1 = 1,2,2,1
[int[]]$nums2 = 2,2
Intersection $nums1 $nums2


[int[]]$nums1 = 4,9,5
[int[]]$nums2 = 9,4,9,8,4
Intersection $nums1 $nums2