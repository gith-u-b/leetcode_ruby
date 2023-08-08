# ref: https://leetcode.cn/problems/longest-common-prefix/

# Write a function to find the longest common prefix string amongst an array of strings.
# 编写一个函数来查找字符串数组中的最长公共前缀。

# If there is no common prefix, return an empty string "".
# 如果不存在公共前缀，返回空字符串 ""。

# Example 1:
# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# 示例 1：
# 输入：strs = ["flower","flow","flight"]
# 输出："fl"

# Example 2:
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# 示例 2：
# 输入：strs = ["dog","racecar","car"]
# 输出：""
# 解释：输入不存在公共前缀。
 
# Constraints:
# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.
# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] 仅由小写英文字母组成

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?

  prefix = strs[0]

  (1...strs.length).each do |i|
    while !strs[i].start_with?(prefix) && !prefix.empty?
      prefix = prefix[0...-1]
    end
    
    break if prefix.empty?
  end

  prefix
end

# 首先判断数组是否为空，如果为空则直接返回空字符串。
# 然后将数组的第一个字符串作为初始前缀 prefix。
# 从第二个字符串开始遍历，每次都将前缀与当前字符串进行比较，如果当前字符串不以前缀开头，则通过不断缩小前缀的长度来尝试匹配，直到前缀为空或无法匹配当前字符串的前缀为止。
# 最后返回最终得到的公共前缀。