struct kd_leaf_photons_list
{	
	// ---------------------------------------------------------------------
	/* 
		Number of active photons to search
	*/ 
	// ---------------------------------------------------------------------
	uint *d_num_photons; 
	
	// ---------------------------------------------------------------------
	/* 
		The address of leaf nodes in the kd-tree
	*/ 
	// ---------------------------------------------------------------------
	uint *d_addr_leaf_node;

	// ---------------------------------------------------------------------
	/* 
		The indices of the photons for each node 
	*/ 
	// ---------------------------------------------------------------------
	uint *d_photons_node_assoc; 

	// ---------------------------------------------------------------------
	/* 
		Start and End pointer for range searching
	*/ 
	// ---------------------------------------------------------------------
	uint *d_start_idx; 
	uint *d_end_idx; 

	// ---------------------------------------------------------------------
	/* 
		First element index address in ENA for each node (device memory).
	*/ 
	// ---------------------------------------------------------------------
	uint* d_idx_first_photons;

	/// Next free spot for new element data in ENA list. Aligned to allow coalesced access. 
	uint next_free_pos;

	uint num_nodes; 
	uint max_nodes; 
	uint max_photons; 
};