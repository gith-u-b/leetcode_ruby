# ref: https://leetcode.cn/problems/palindrome-number/

# Given an integer x, return true if x is a palindrome, and false otherwise.
# 给你一个整数 x ，如果 x 是一个回文整数，返回 true ；否则，返回 false 。
# (回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。 例如，121 是回文，而 123 不是。)

# Example 1:
# Input: x = 121
# Output: true
# Explanation: 121 reads as 121 from left to right and from right to left.
# 示例 1：
# 输入：x = 121
# 输出：true

# Example 2:
# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:
# 示例 2：
# 输入：x = -121
# 输出：false
# 解释：从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数。

# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
# 输入：x = 10
# 输出：false
# 解释：从右向左读, 为 01 。因此它不是一个回文数。

# Constraints:
# -231 <= x <= 231 - 1
# 提示：
# -231 <= x <= 231 - 1

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
	x.to_s == x.to_s.reverse
end

# 这个实现利用了 Ruby 中字符串反转的方法 reverse，将整数 x 转换为字符串后，与其反转后的字符串进行比较。如果它们相等，说明 x 是回文数，返回 true；否则，返回 false。
# 这个实现非常简洁，通过直接使用字符串相关的方法，避免了手动进行数字的反转和位数的判断。