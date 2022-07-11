function MaxProfit {
    param([int[]]$prices)

    $profit = 0
    for ($i=1; $i -lt $prices.count; $i++){
        if ($prices[$i] -gt $prices[$i-1]) {
            $profit += $prices[$i] - $prices[$i-1]
        }
    }
    return $profit
}

[int[]]$prices = (7,1,5,3,6,4)
MaxProfit $prices

[int[]]$prices = (1,2,3,4,5)
MaxProfit $prices

[int[]]$prices = (7,6,4,3,1)
MaxProfit $prices