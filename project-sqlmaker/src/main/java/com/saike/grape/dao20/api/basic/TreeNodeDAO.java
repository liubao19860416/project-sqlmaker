package com.saike.grape.dao20.api.basic;

import java.util.List;

import com.saike.grape.dao20.GenericDAO;
import com.saike.grape.dao20.entity.TreeNode;

/**
 * 
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

public interface TreeNodeDAO<E extends TreeNode> extends GenericDAO<E> {

    public List<TreeNode> getTreeNodeList();
    
    public List<TreeNode> getTreeBranchList( String treePath );
    
    public List<TreeNode> getTreeLeafList( String branchPath );
    
    public List<TreeNode> getTreeNodeByCodeList( List<String> code );
    
}
