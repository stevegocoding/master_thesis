struct kdtree_data
{
	// Number of nodes
	uint	num_nodes;	
	// Size of d_preorder_tree in bytes 
	uint	size_tree;	
	// Number of elements for each node
	uint*	d_num_elems;	
	// Addresses for each node in d_preorder_tree
	uint*	d_node_addresses;	
	// Traversal Information	
	uint*	d_preorder_tree;	
	// Extent for each node.
	float4* d_node_extent;		
};