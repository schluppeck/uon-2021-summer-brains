### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ acbfd464-bc97-11eb-100a-ddc11120d6ec
using Images

# ╔═╡ c118dbe3-e42f-4e6b-b9bf-870c298d7ae3
using ImageMagick

# ╔═╡ 2feb120e-9fa2-485c-ad9a-3fa587360f9d
using NIfTI

# ╔═╡ 66d02b0d-b9ca-4b05-b34c-19dd1dbe22ed
using PlutoUI

# ╔═╡ 5259225b-4956-42db-a249-f0e33e369488
using FileIO

# ╔═╡ a3b7e7d7-d93e-49c9-ad04-5cc80b398ab6
md"
## Loading in a brain image in NIfTI format
"

# ╔═╡ b064919b-cc4c-4f61-b51f-4dc5eebcc4e8
im  = niread("data/MNI152_T1_1mm.nii.gz")

# ╔═╡ 0f84ca4b-10a9-4b61-af51-5ae52594c9ee
@bind slicenum Slider(1:100)

# ╔═╡ fb8bed60-c8e0-4269-9934-5ed2f86f5296
# make sure intensity values are in range [0..1]
# this is because to convert them to Gray() which web Pluto notebook can render
# images are expected to be in that range...  but they are stored in range [0..10000]
scaledSlice  = im[:,:, slicenum] ./ 10000;

# ╔═╡ fa5ac2fc-09f4-43fd-baeb-d9f27794ef08
# this line converts
Gray.(scaledSlice)

# ╔═╡ 11d75287-41b0-4440-a1a4-f5c5bc9e7482
slicenum

# ╔═╡ 100c55f6-680b-4c85-908c-5be284994dcf
md"

## loading in JPG / PNG images
1. **from a file:** data/jelly.jpg 
1. **from a web page** Given an image that's hosted on my flickr page: https://live.staticflickr.com/1884/44641376071_1ac68789ac_z.jpg

"

# ╔═╡ Cell order:
# ╠═acbfd464-bc97-11eb-100a-ddc11120d6ec
# ╠═c118dbe3-e42f-4e6b-b9bf-870c298d7ae3
# ╠═2feb120e-9fa2-485c-ad9a-3fa587360f9d
# ╠═66d02b0d-b9ca-4b05-b34c-19dd1dbe22ed
# ╠═5259225b-4956-42db-a249-f0e33e369488
# ╟─a3b7e7d7-d93e-49c9-ad04-5cc80b398ab6
# ╠═b064919b-cc4c-4f61-b51f-4dc5eebcc4e8
# ╠═fb8bed60-c8e0-4269-9934-5ed2f86f5296
# ╠═fa5ac2fc-09f4-43fd-baeb-d9f27794ef08
# ╠═0f84ca4b-10a9-4b61-af51-5ae52594c9ee
# ╠═11d75287-41b0-4440-a1a4-f5c5bc9e7482
# ╟─100c55f6-680b-4c85-908c-5be284994dcf
