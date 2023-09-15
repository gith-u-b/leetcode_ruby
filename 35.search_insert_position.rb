# ref: https://leetcode.cn/problems/search-insert-position/description/

# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。

# You must write an algorithm with O(log n) runtime complexity.
# 请必须使用时间复杂度为 O(log n) 的算法。

# Example 1:
# Input: nums = [1,3,5,6], target = 5
# Output: 2
# 示例 1:
# 输入: nums = [1,3,5,6], target = 5
# 输出: 2

# Example 2:
# Input: nums = [1,3,5,6], target = 2
# Output: 1
# 示例 2:
# 输入: nums = [1,3,5,6], target = 2
# 输出: 1

# Example 3:
# Input: nums = [1,3,5,6], target = 7
# Output: 4
# 示例 3:
# 输入: nums = [1,3,5,6], target = 7
# 输出: 4

# Constraints:
# 1 <= nums.length <= 104
# -104 <= nums[i] <= 104
# nums contains distinct values sorted in ascending order.
# -104 <= target <= 104
# 提示:
# 1 <= nums.length <= 104
# -104 <= nums[i] <= 104
# nums 为 无重复元素 的 升序 排列数组
# -104 <= target <= 104

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return left
end

# 这里可以使用二分查找算法来解决，使用二分查找算法找到目标值在有序数组中的索引。
# search_insert 方法接收一个有序数组 nums 和目标值 target，然后使用二分查找算法在数组中查找目标值，并返回对应的索引。
# 如果目标值不存在于数组中，我们通过循环不断更新左右边界，最终返回目标值应该插入的位置即左指针 left。