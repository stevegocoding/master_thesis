struct kdtree_data
{
	uint	numNodes;
	uint	sizeTree; 
	uint*	d_numElems;
	uint*	d_nodeAddresses; 
	uint*	d_childLeft;
	uint*	d_childRight; 
	uint*	d_preorderTree; 	
	float4* d_nodeExtent;
};