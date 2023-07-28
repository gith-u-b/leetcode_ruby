# ref: https://leetcode.cn/problems/roman-to-integer/

# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
# 罗马数字包含以下七种字符: I， V， X， L，C，D 和 M。

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
# 例如， 罗马数字 2 写做 II ，即为两个并列的 1 。12 写做 XII ，即为 X + II 。 27 写做  XXVII, 即为 XX + V + II 。

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
# 通常情况下，罗马数字中小的数字在大的数字的右边。但也存在特例，例如 4 不写做 IIII，而是 IV。数字 1 在数字 5 的左边，所表示的数等于大数 5 减小数 1 得到的数值 4 。同样地，数字 9 表示为 IX。这个特殊的规则只适用于以下六种情况：

# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.

# I 可以放在 V (5) 和 X (10) 的左边，来表示 4 和 9。
# X 可以放在 L (50) 和 C (100) 的左边，来表示 40 和 90。 
# C 可以放在 D (500) 和 M (1000) 的左边，来表示 400 和 900。

# Given a roman numeral, convert it to an integer.
# 给定一个罗马数字，将其转换成整数。

# Example 1:
# Input: s = "III"
# Output: 3
# Explanation: III = 3.
# 示例 1:
# 输入: s = "III"
# 输出: 3

# Example 2:
# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.
# 示例 2:
# 输入: s = "LVIII"
# 输出: 58
# 解释: L = 50, V= 5, III = 3.

# Example 3:
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
# 输入: s = "MCMXCIV"
# 输出: 1994
# 解释: M = 1000, CM = 900, XC = 90, IV = 4. 

# Constraints:
# 1 <= s.length <= 15
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
# It is guaranteed that s is a valid roman numeral in the range [1, 3999].
# 提示：
# 1 <= s.length <= 15
# s 仅含字符 ('I', 'V', 'X', 'L', 'C', 'D', 'M')
# 题目数据保证 s 是一个有效的罗马数字，且表示整数在范围 [1, 3999] 内

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  map = {'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000}
  sum = 0
  prev_value = 0

  s.each_char do |c|
    value = map[c]
    if value > prev_value
      sum += value - 2 * prev_value
    else
      sum += value
    end
    prev_value = value
  end

  sum
end

# 使用了哈希表 map 进行字符和整数值的映射。在遍历字符串时，通过比较当前字符的值和前一个字符的值，根据罗马数字的规则进行相应的加减操作。