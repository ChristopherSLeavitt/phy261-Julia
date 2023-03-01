### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ f5834a6a-b69a-11ed-18b4-1fcad5dcc77c
md"# Using Pluto Notebooks"

# ╔═╡ 736a798b-f71e-4e80-acb9-147a4598a2af
md"Add Packages, setup plot defaults, the slider width, and add a Table of contents"

# ╔═╡ 0e967144-3b03-424c-821c-a41ce82fd374
begin
using PlutoUI, Plots, ; gr()
default(fontfamily = "Computer Modern", size=(900,600), titlefont = (14), legendfontsize = 10, 
        guidefont = (12, :darkgreen), tickfont = (12, :black), 
        framestyle = :box, yminorgrid = true, legend = :topright, dpi=600)

TableOfContents(title="📚 Table of Contents", indent=true, depth=4, aside=true)
end

# ╔═╡ 51439279-552a-43dc-abbd-2f00eebe8e66
html"""
<style>
input[type*="range"] {
	width: 70%;
}
</style>
"""

# ╔═╡ 235db9ab-4c8c-44e9-97ca-dba5991e21f4
md"
## Basic features
### Edit markdown cell
Edit this cell to fix the typo in this sentance.
"

# ╔═╡ dc5b584d-6bf5-4ea3-a0c0-28b91c14c35b
md"
### Make a 1d list
Create an array of $t$ values from $0$ to $100$ with steps of size $0.50$. 
Do so using the LinRange() function. 
"

# ╔═╡ 6869b149-1532-4892-be08-1665b4fa2432


# ╔═╡ 98820a1c-5b3e-49cc-82ff-b5c10c79556a
md"
### Make a slider
1. Create a slider using the @bind macro to bind the variable mass_lbs to a slider extending from 50 to 250, with a default value of 170 lbs. Make sure to show the value of the slider at the right.
2. Then create a new cell that defines a variable called `mass_kg` which converts `mass_lbs` to kg, and make sure the number is rounded to 1 decimal place. (recall that 1 pound = $0.45359237$ kg). 
3. Then move the slider, and notice how mass_lbs is automatically updated.
4. Add a label to the left of the slider by wrapping the slider cell in parentheis, preceding it with a dollar sign and placing *mass* at the begining; your slider creation cell will have the form \
	` mass $(*slider code inside here*)`
"

# ╔═╡ e54936b1-095b-4cce-8c3a-b765fbb9abf8


# ╔═╡ 205f54e4-5804-4714-a4aa-e3d41c828169


# ╔═╡ 6c62e31a-84a6-4aa2-84fd-64c746c29980
md"
#### Include variable values in markdown text
Now create a markdown cell which has the format\
`markdown Mass: $(mass_lbs) Lbs | $(mass_kg) kg`\
This allows you to include the value of the variables in
the markdown, and they will get modified as you drag the slider.
"

# ╔═╡ 400c840a-2823-40de-a31e-df89c33a8962


# ╔═╡ 966038d3-1b26-4175-80a4-f30b0ec0653a
md"
### Create a plot with a two sliders
Create a plot of

$y(x) = (2\,\mathrm{N})sin\left(\frac{2\pi}{\lambda}x + \phi\right),$

where $y$ is in Newtons, and $x$ is in meters.
Be sure to include (in the cell below the plot) two sliders;
one for $\lambda$ and another for $\phi$. Pick reasonable ranges
for the slider limits, and include a default value for each. Label your axes and include units. 
"

# ╔═╡ eeac6fc0-3d76-480a-89bd-3649f89f4583


# ╔═╡ 9a16ae34-1522-444e-bb81-9df6d11ea9ab
md"""
##  Euler method for the harmonic oscillator
Suppose you have a mass free to slide on a frictionless surface. The mass is attached to a spring and the other end of the spring is attached to the wall. 
"""

# ╔═╡ 9b18b2f8-3ee3-492a-8478-779fac8e0929
md"![Simple Harmonic Oscillator](https://raw.githubusercontent.com/USM-Phy261/phy261-Julia/main/Activities/Class_10%C6%92/SHO.drawio.png)"

# ╔═╡ 5ead2d1b-bbff-4b34-a9f6-986a84bae376
md"
Write down Newton's law for the mass on the spring, and then split it into two first order equations. Show your work in the cell below:
"

# ╔═╡ b651ec2d-4947-408f-b15c-fda8bdbff76e


# ╔═╡ ee41acda-6fe7-4d3a-83bf-4c0e2ceba226
md"
Now write two functions to compute the numerical solution for the SHO using \
	a) the Euler method: call it `euler_sho` \
	b) the `Euler-Cromer` method: call it `euler_cromer_sho`\
Put your two functions in the cell below. 
"

# ╔═╡ 2426adfa-ce53-4eb4-8ab8-68b6f4ecf1db


# ╔═╡ db50a54d-1327-41a8-a32f-8e2be86e0266
md"
Now make a plot of the mass' position versus time for the simple harmonic oscillator. Label your axes and include units. Add a slider to control $\Delta t$, and some other UI element to control the initial position and velocity. 
"

# ╔═╡ Cell order:
# ╟─f5834a6a-b69a-11ed-18b4-1fcad5dcc77c
# ╟─736a798b-f71e-4e80-acb9-147a4598a2af
# ╠═0e967144-3b03-424c-821c-a41ce82fd374
# ╠═51439279-552a-43dc-abbd-2f00eebe8e66
# ╟─235db9ab-4c8c-44e9-97ca-dba5991e21f4
# ╟─dc5b584d-6bf5-4ea3-a0c0-28b91c14c35b
# ╠═6869b149-1532-4892-be08-1665b4fa2432
# ╟─98820a1c-5b3e-49cc-82ff-b5c10c79556a
# ╠═e54936b1-095b-4cce-8c3a-b765fbb9abf8
# ╠═205f54e4-5804-4714-a4aa-e3d41c828169
# ╟─6c62e31a-84a6-4aa2-84fd-64c746c29980
# ╠═400c840a-2823-40de-a31e-df89c33a8962
# ╟─966038d3-1b26-4175-80a4-f30b0ec0653a
# ╠═eeac6fc0-3d76-480a-89bd-3649f89f4583
# ╠═9a16ae34-1522-444e-bb81-9df6d11ea9ab
# ╟─9b18b2f8-3ee3-492a-8478-779fac8e0929
# ╠═5ead2d1b-bbff-4b34-a9f6-986a84bae376
# ╠═b651ec2d-4947-408f-b15c-fda8bdbff76e
# ╠═ee41acda-6fe7-4d3a-83bf-4c0e2ceba226
# ╠═2426adfa-ce53-4eb4-8ab8-68b6f4ecf1db
# ╟─db50a54d-1327-41a8-a32f-8e2be86e0266
