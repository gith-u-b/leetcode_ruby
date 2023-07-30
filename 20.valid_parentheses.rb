# ref: https://leetcode.cn/problems/valid-parentheses/

# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串 s ，判断字符串是否有效。

# An input string is valid if:
# 有效字符串需满足：

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

# 左括号必须用相同类型的右括号闭合。
# 左括号必须以正确的顺序闭合。
# 每个右括号都有一个对应的相同类型的左括号。
 
# Example 1:
# Input: s = "()"
#Output: true
# 示例 1：
# 输入：s = "()"
# 输出：true

# Example 2:
# Input: s = "()[]{}"
# Output: true
# 示例 2：
# 输入：s = "()[]{}"
# 输出：true

# Example 3:
# Input: s = "(]"
# Output: false
# 示例 3：
# 输入：s = "(]"
# 输出：false

# Constraints:
# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.
# 提示：
# 1 <= s.length <= 104
# s 仅由括号 '()[]{}' 组成

# @param {String} s
# @return {Boolean}
def is_valid(s)
  st = []
  s.chars.each do |c|
    t = st[-1]
    if (c == ')' && t == '(') || (c == '}' && t == '{') || (c == ']' && t == '[')
      st.pop
    else
      st << c
    end
  end
  st.empty?
end

# 创建一个空数组 st，用于模拟栈的操作。
# 使用 s.chars.each 迭代字符串 s 的每一个字符 c。
# 将当前栈顶元素保存在变量 t 中（通过 st[-1] 可以取到数组的最后一个元素）。
# 如果 c 是右括号，并且 t 是对应的左括号（即括号匹配），则从栈中弹出左括号；否则，将 c 压入栈中。
# 遍历完整个字符串后，判断栈是否为空。如果栈为空，则表示所有的括号都能够匹配，返回 true；否则，返回 false。