# 堆叠小提琴图

# 获取每个细胞群的前3个marker基因（按avg_log2FC排序），以便有备选基因
top3_markers <- markers_label %>%
  group_by(cluster) %>%
  top_n(n = 3, wt = avg_log2FC) %>%
  arrange(cluster, desc(avg_log2FC))

# 为每个细胞群选择第一个不重复的基因
selected_genes <- c()
top1_unique_markers <- data.frame()

# 按细胞类型顺序处理（按照之前设置的celltype_ordered顺序）
for(celltype in levels(seurat_integrated$celltype)) {
  celltype_genes <- top3_markers[top3_markers$cluster == celltype, ]
  
  if(nrow(celltype_genes) > 0) {
    # 寻找第一个未被选择的基因
    found_gene <- FALSE
    for(i in 1:nrow(celltype_genes)) {
      gene <- celltype_genes$gene[i]
      if(!gene %in% selected_genes) {
        selected_genes <- c(selected_genes, gene)
        top1_unique_markers <- rbind(top1_unique_markers, celltype_genes[i, ])
        found_gene <- TRUE
        break
      }
    }
    
    # 如果所有前3个基因都被选了，仍然选择第一个基因
    if(!found_gene) {
      selected_genes <- c(selected_genes, celltype_genes$gene[1])
      top1_unique_markers <- rbind(top1_unique_markers, celltype_genes[1, ])
      print(paste("注意: 细胞类型", celltype, "的所有前3个基因都已存在，使用第一个基因:", celltype_genes$gene[1]))
    }
  }
}


# 检查是否有重复
duplicate_check <- top1_unique_markers$gene[duplicated(top1_unique_markers$gene)]
if(length(duplicate_check) > 0) {
  print(paste("注意: 仍有重复基因:", paste(duplicate_check, collapse = ", ")))
} else {
  print("所有选择的基因都是唯一的")
}

# 神经元marker，若有类群没有该基因，则去掉
additional_genes <- c("Slc17a7", "Slc17a6", "Slc17a8", "Slc32a1", "Gad1", "Gad2")

# 去除重复基因
genes_to_add <- setdiff(additional_genes, top1_unique_markers$gene)

# 合并基因
add_genes <- c(top1_unique_markers$gene, genes_to_add)

# 小提琴图 - 每个细胞群的第一marker基因（无重复）
p_vln <- VlnPlot(seurat_integrated,
                 features = add_genes,
                 pt.size = 0,
                 stack = TRUE) +  # 堆叠显示
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "none") +  # 隐藏图例
  ggtitle("Marker Genes for Each Cell Type")

print(p_vln)

# 保存小提琴图
ggplot2::ggsave("violin_markers.pdf", 
                plot = p_vln, 
                height = 10, width = 12, dpi = 600)


# 确保top1_unique_markers已经按照细胞类群排序
# 假设top1_unique_markers中有一列是cluster或ident，表示细胞类群

# 按细胞类群排序基因
sorted_genes <- top1_unique_markers$gene
cell_types_order <- unique(top1_unique_markers$cluster)

# 绘制气泡图
p_dot <- DotPlot(seurat_integrated,
                 features = add_genes,
                 cols = c("lightgrey", "red"),
                 dot.scale = 6) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(x = "Genes", y = "Cell Types") +
  ggtitle("Marker Genes Expression") +
  
  # 确保y轴按细胞类群顺序排列
  scale_y_discrete(limits = rev(cell_types_order))

print(p_dot)




# 保存气泡图
ggplot2::ggsave("dotplot_markers.pdf", 
                plot = p_dot, 
                height = 8, width = 12, dpi = 600)
