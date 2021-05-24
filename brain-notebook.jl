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

# ╔═╡ b064919b-cc4c-4f61-b51f-4dc5eebcc4e8
im  = niread("data/MNI152_T1_1mm.nii.gz")

# ╔═╡ 0f84ca4b-10a9-4b61-af51-5ae52594c9ee
@bind slicenum Slider(1:100)

# ╔═╡ fb8bed60-c8e0-4269-9934-5ed2f86f5296
scaledSlice  = im[:,:, slicenum] ./ 10000

# ╔═╡ fa5ac2fc-09f4-43fd-baeb-d9f27794ef08
Gray.(scaledSlice)

# ╔═╡ 11d75287-41b0-4440-a1a4-f5c5bc9e7482
slicenum

# ╔═╡ Cell order:
# ╠═acbfd464-bc97-11eb-100a-ddc11120d6ec
# ╠═c118dbe3-e42f-4e6b-b9bf-870c298d7ae3
# ╠═2feb120e-9fa2-485c-ad9a-3fa587360f9d
# ╠═66d02b0d-b9ca-4b05-b34c-19dd1dbe22ed
# ╠═b064919b-cc4c-4f61-b51f-4dc5eebcc4e8
# ╠═fb8bed60-c8e0-4269-9934-5ed2f86f5296
# ╠═fa5ac2fc-09f4-43fd-baeb-d9f27794ef08
# ╠═0f84ca4b-10a9-4b61-af51-5ae52594c9ee
# ╠═11d75287-41b0-4440-a1a4-f5c5bc9e7482
