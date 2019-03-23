push!(LOAD_PATH,"../")
using Documenter, DocumenterMarkdown, Kruskal, Base.Filesystem

makedocs(
	sitename ="Kruskal",
	format = Markdown(),
	source = "src",
	build = "build",
	clean = true,
	doctest = true,
	modules = [Kruskal],
	repo = ""
)

cp("build/doc.md", "../README.md", force=true)
