package com.ProcurementSystem.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class NavTree {

	TreeNode root;

	public NavTree() {
		root = new TreeNode();
		root.setSpscCode("0");
		root.setChildList(new LinkedList<TreeNode>());
		root.setName("");
	}

	/** 添加结点 */
	public boolean addChild(String code) {
		TreeNode parentNode = root;
		ArrayList<String> nameList = XMLResolve.getLayerNames(code);
		if (nameList == null) {// 将该code修改为-1，即归为未分类项目
			return false;
		}
		String spscCode = "";
		int i = 0, length = code.length() / 2;// 用于从ArrayList中取出层级名
		while (code.length() > 0) {
			String leftCode = code.substring(0, 2);
			String rightCode = code.substring(2);
			TreeNode newNode = new TreeNode();
			spscCode += leftCode;
			newNode.setSpscCode(spscCode);// 设置spscCode
			// 判断当前结点是否在父节点的孩子结点中已经存在
			TreeNode findNode = findNodeInParent(parentNode, newNode);
			if (findNode == null) {
				newNode.setName(nameList.get(length - i - 1));// 设置分类名
				newNode.setParentNode(parentNode);
				parentNode.getChildList().add(newNode);// 设置父节点
				parentNode.setQuantity(parentNode.getQuantity() + 1);// 设置分类数量
				parentNode = newNode;// 设置下一次循环的父节点
			} else {
				findNode.setQuantity(findNode.getQuantity() + 1);
				parentNode = findNode;// 设置下一次循环的父节点
			}
			code = rightCode;// 为下一个循环做准备
			i++;
		}
		return true;

	}

	/** 在父节点中查找 */
	private TreeNode findNodeInParent(TreeNode parentNode, TreeNode newNode) {
		List<TreeNode> childs = parentNode.getChildList();
		for (TreeNode child : childs) {
			if (child.getSpscCode().equals(newNode.getSpscCode())) {
				return child;
			}
		}
		return null;
	}

	/** 遍历一棵树，层次遍历，借助一个队列 */
	public String traverse() {
		String str = "";
		int level = 0;
		Queue<TreeNode> quee = new LinkedList<>();
		quee.offer(root);
		while (!quee.isEmpty()) {
			TreeNode node = quee.poll();
			if (level == (node.getSpscCode().length() / 2))
				str += node.getName() + " ";
			else {
				level++;
				str += "\n";
				str += node.getName() + " ";
			}
			List<TreeNode> childs = node.getChildList();
			Iterator<TreeNode> iterator = childs.iterator();
			while (iterator.hasNext()) {
				quee.offer(iterator.next());
			}
		}
		return str;
	}

	public ArrayList<TreeNode> getNavClass(int i) {// 获得第i层级的结点
		ArrayList<TreeNode> list = new ArrayList<>();
		Queue<TreeNode> quee = new LinkedList<>();
		quee.offer(root);
		while (!quee.isEmpty()) {
			TreeNode node = quee.poll();
			if (node.getSpscCode().length() / 2 <= i) {
				if (node.getSpscCode().length() / 2 == i) {// 把i层的结点加入list
					list.add(node);
				}
			} else {
				break;
			}
			List<TreeNode> childs = node.getChildList();// 将该结点的孩子结点入队
			Iterator<TreeNode> iterator = childs.iterator();
			while (iterator.hasNext()) {
				quee.offer(iterator.next());
			}
		}
		return list;
	}

	public static void main(String[] args) {
		NavTree navTree = new NavTree();
		navTree.addChild("14111501");
		navTree.addChild("14111502");
		navTree.addChild("14111503");
		navTree.traverse();
	}

	public List<TreeNode> getNavClassNames(String code) {// 根据code获取其层级路径
		List<TreeNode> breadNav = new LinkedList<>();
		int level = code.length() / 2;
		TreeNode parent = root;
		for (int i = 1; i <= level; i++) {
			TreeNode tempNode = new TreeNode();
			for(TreeNode node : parent.getChildList()){//寻找第i层级符合的结点
				if(node.getSpscCode().equals(code.substring(0, i*2))){
					breadNav.add(node);
					tempNode = node;
					break;
				}
			}
			parent = tempNode;
		}
		return breadNav;
	}

}
