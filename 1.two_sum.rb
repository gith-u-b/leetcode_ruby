# ref: https://leetcode.cn/problems/two-sum/

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。

# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。

# You can return the answer in any order.
# 你可以按任意顺序返回答案。

# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# 示例 1：
# 输入：nums = [2,7,11,15], target = 9
# 输出：[0,1]
# 解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 。

# Example 2:
# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# 示例 2：
# 输入：nums = [3,2,4], target = 6
# 输出：[1,2]

# Example 3:
# Input: nums = [3,3], target = 6
# Output: [0,1]
# 示例 3：
# 输入：nums = [3,3], target = 6
# 输出：[0,1]
 

# Constraints:
# 2 <= nums.length <= 104
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.

# 提示：
# 2 <= nums.length <= 104
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# 只会存在一个有效答案


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hashmap = {}
  nums.each_with_index do |num, i|
    complement = target - num
    if hashmap.key?(complement)
      return [hashmap[complement], i]
    end
    hashmap[num] = i
  end
  return []
end

# 此实现利用了哈希表来解决两数之和的问题。
# 首先，我们创建了一个空的哈希表 hashmap 来存储每个数字及其索引。然后，我们使用 each_with_index 方法遍历给定的数组 nums，其中 num 是当前数字，i 是当前数字的索引。
# 在每次迭代中，我们计算目标值与当前数字的差值，即 complement = target - num。然后，我们通过检查哈希表中是否存在这个差值来判断是否找到了符合条件的两个数。如果存在差值，则表示找到了，我们可以通过哈希表中存储的差值的索引和当前索引 i 来构建结果数组 [hashmap[complement], i] 并返回。
# 如果不存在差值，则将当前数字及其索引存入哈希表中，以备后续的查找。
# 最后，如果没有找到符合条件的两个数，则返回一个空数组 []。
# 这种实现的优势在于仅需一次遍历数组，通过哈希表可以在常数时间内查找某个数是否存在。因此，整个算法的时间复杂度是 O(n)，其中 n 是数组的长度。