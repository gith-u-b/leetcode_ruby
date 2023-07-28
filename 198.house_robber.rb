# ref: https://leetcode.cn/problems/house-robber/

# You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
# 你是一个专业的小偷，计划偷窃沿街的房屋。每间房内都藏有一定的现金，影响你偷窃的唯一制约因素就是相邻的房屋装有相互连通的防盗系统，如果两间相邻的房屋在同一晚上被小偷闯入，系统会自动报警。

# Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.
# 给定一个代表每个房屋存放金额的非负整数数组，计算你 不触动警报装置的情况下 ，一夜之内能够偷窃到的最高金额。
 

# Example 1:
# Input: nums = [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
# Total amount you can rob = 1 + 3 = 4.
# 示例 1：
# 输入：[1,2,3,1]
# 输出：4
# 解释：偷窃 1 号房屋 (金额 = 1) ，然后偷窃 3 号房屋 (金额 = 3)。
# 偷窃到的最高金额 = 1 + 3 = 4 。

# Example 2:
# Input: nums = [2,7,9,3,1]
# Output: 12
# Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
# Total amount you can rob = 2 + 9 + 1 = 12.
# 示例 2：
# 输入：[2,7,9,3,1]
# 输出：12
# 解释：偷窃 1 号房屋 (金额 = 2), 偷窃 3 号房屋 (金额 = 9)，接着偷窃 5 号房屋 (金额 = 1)。
# 偷窃到的最高金额 = 2 + 9 + 1 = 12 。

# Constraints:
# 1 <= nums.length <= 100
# 0 <= nums[i] <= 400
# 提示：
# 1 <= nums.length <= 100
# 0 <= nums[i] <= 400

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?

  return nums[0] if nums.length == 1

  dp = Array.new(nums.length, 0)
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max

  (2..nums.length-1).each do |i|
    dp[i] = [dp[i-2] + nums[i], dp[i-1]].max
  end

  dp[nums.length-1]
end

# 这个问题可以使用动态规划来解决。
# 我们可以定义一个数组 dp 来保存每个房屋偷窃的最大金额。dp[i] 表示偷窃到第 i 间房屋时的最大金额。
# 根据题目要求，不能偷相邻的房屋，所以在计算 dp[i] 时，有两种选择：
# 偷窃第 i 间房屋，在此之前的第 i-2 间房屋处的最大金额加上当前房屋的金额。
# 不偷窃第 i 间房屋，即取前一个房屋处的最大金额。
# 综合两种选择，我们可以得到状态转移方程：dp[i] = max(dp[i-2] + nums[i], dp[i-1])。
# 最终，要求的结果就是 dp[nums.length-1]，即最后一间房屋处的最大金额。