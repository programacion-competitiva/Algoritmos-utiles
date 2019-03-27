push!(LOAD_PATH,"../")
using Documenter, DocumenterMarkdown, MOs, Base.Filesystem

makedocs(
	sitename ="MO",
	format = Markdown(),
	source = "src",
	build = "build",
	clean = true,
	doctest = true,
	modules = [MOs],
	repo = ""
)

cp("build/doc.md", "../README.md", force=true)
