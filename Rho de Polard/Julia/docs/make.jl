push!(LOAD_PATH,"../")
using Documenter, DocumenterMarkdown, Polard, Base.Filesystem

makedocs(
	sitename ="A★",
	format = Markdown(),
	source = "src",
	build = "build",
	clean = true,
	doctest = true,
	modules = [Polard],
	repo = ""
)

cp("build/doc.md", "../README.md", force=true)
