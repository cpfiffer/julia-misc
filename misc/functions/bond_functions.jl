# Cameron Pfiffer
# August 15th, 2017
function price_change(duration, convexity, Δyield)
    # Given duration, convexity, and yield change, provide
    # estimated change in bond price.
    -duration*Δyield + (1/2)*convexity*(Δyield^2)
end

function portfolio_duration(value, duration)
    # Given two arrays (market values, duration), calculate total portfolio
    # duration.
    total = sum(value)
    weights = value/total
    print(weights)
    sum(weights.*duration)
end
