# Stock Picker (Ruby)

An algorithmic logic project built as part of **The Odin Project** Ruby curriculum. The objective is to implement a method that finds the best days to buy and sell a stock for maximum profit.

## What does it do?
The program takes an array of stock prices (one for each hypothetical day) and returns a pair of days (indices) representing the best day to buy and the best day to sell. 

### Key Features:
* **Chronological Logic:** Ensures that you always buy before you sell by restricting sales to future days relative to the purchase.
* **Profit Maximization:** Iterates through possible combinations to find the highest possible return.
* **Index Offset Handling:** Accurately maps relative slice indices back to the original array positions.

## Example Usage

You can test the implementation directly in your script or using IRB:

```ruby
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4] 
# (for a profit of $15 - $3 == $12)
