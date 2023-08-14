# ref: https://leetcode.cn/problems/merge-two-sorted-lists/

# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.
# Return the head of the merged linked list.
# 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。 

# Example 1:
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]
# 输入：l1 = [1,2,4], l2 = [1,3,4]
# 输出：[1,1,2,3,4,4]

# Example 2:
# Input: list1 = [], list2 = []
# Output: []
# 示例 2：
# 输入：l1 = [], l2 = []
# 输出：[]

# Example 3:
# Input: list1 = [], list2 = [0]
# Output: [0]
# 输入：l1 = [], l2 = [0]
# 输出：[0]
 
# Constraints:
# The number of nodes in both lists is in the range [0, 50].
# -100 <= Node.val <= 100
# Both list1 and list2 are sorted in non-decreasing order.
# 提示：
# 两个链表的节点数目范围是 [0, 50]
# -100 <= Node.val <= 100
# l1 和 l2 均按 非递减顺序 排列

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?
  if l1.val < l2.val
    l1.next = merge_two_lists(l1.next, l2)
    l1
  else
    l2.next = merge_two_lists(l1, l2.next)
    l2
  end
end

# 主要使用递归地方式来解决问题
# 首先，判断其中一个链表是否为空，如果是则直接返回另一个链表。
# 然后，比较两个链表当前节点的值，将较小值的节点作为新链表的头节点，然后对剩余的链表继续进行递归调用，传入剩余的部分链表和另一个链表的头节点，直到其中一个链表为空。