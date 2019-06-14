data-clean.csv : data_clean.R Players.csv nba_all_star_games.csv
	Rscript data_clean.R

bx_plt.png mn_ht.png: data_vis.R data-clean.csv 
	Rscript data_vis.R

# p2_workflow.png: makefile2graph/make2graph
#     make bx_plt.png mn_ht.png -Bnd | ./makefile2graph/make2graph | dot -Tpng -o p2.png

# report.html: report.md
#     multimarkdown --to=html --full --smart $< >> $`