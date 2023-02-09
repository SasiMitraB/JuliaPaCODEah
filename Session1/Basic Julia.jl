### A Pluto.jl notebook ###
# v0.19.20

using Markdown
using InteractiveUtils

# ╔═╡ 09735634-a9bc-4c96-ac5a-59e4f831bacf
md"""
# Displaying output in Julia
"""

# ╔═╡ 3ef34f10-a089-11ed-1831-fff64de35be8
println("Yedukondalavaada, Venkataramana, Govinda, Gooooooovinda")

# ╔═╡ 3e6c1b06-6ba1-460a-9272-2e255fd56aac
md"""The `print()` command is used to display output to the console
"""

# ╔═╡ b3e5a238-f790-499b-b397-b85c027310bb
begin
	text = "The quick brown fox jumps over the lazy dog"
	print(text)
end

# ╔═╡ 4f90141a-a3ef-4b93-a2d3-7fabfea7b078
md"""`print()` command, the output is shown in the console. The next `print()` command continues in the same line. 

The `println()` command prints and moves the print cursor to the next line."""

# ╔═╡ de5f3174-680e-4000-94b0-85d13f2d4c53
#Comments in Julia are done with a Hashtag, just like how it is done in Python

# ╔═╡ 33409705-cc36-4384-ba50-294ac3c6602d
md"""# Declaring and Intializing variables in Julia
Variables in Julia can be declared by just writing their name. There’s no need to define a datatype with it. Initializing variables can be done at the time of declaring variables. This can be done by simply assigning a value to the named variable."""

# ╔═╡ 9bd35a70-f27b-4d92-8208-77efecb78e82
begin
	a = 10
	b = "Random String"
	println(a)
	println(b)
end

# ╔═╡ ea81272a-361d-4bde-a084-90dd62203511
md"""Rules for naming a variable in Julia:
* Variable names in Julia must start with an underscore, a letter(A-Z or a-z) or a Unicode character greater than 00A0(nbsp).
* Variable names can also contain digits(0-9) or !, but must not begin with these.
* Operators like (+, ^, etc.) can also be used to name a variable.
* Variable names can also be written as words separated by underscore, but that is not a good practice and must be avoided unless necessary."""


# ╔═╡ bc9b59ea-6a7e-4bb9-ab64-f7a970211039
begin
	# Julia program to define variables
	
	# Assigning Integer
	x = 10
	
	# Assigning String
	y = "Hello World"
	
	# Assigning Float Value
	z = -15.5
	
	# Using Operator as variable name
	
	
	
	
	println(x)
	println(y)
	println(z)
	
end

# ╔═╡ e312a757-6ea1-4728-b97c-bf0f26d5950a
md"""In Julia, in order to find the datatype, you use the `typeof()` command"""

# ╔═╡ 745c25c3-dfee-4656-ad50-1bee26b4c95c
begin
	println(typeof(x))
	println(typeof(z))
end

# ╔═╡ 1c8ce856-6777-44bf-8751-41d3db30af55
md"""# Changing Datatypes in Julia"""


# ╔═╡ dacd85cc-0112-40f5-aa1e-d3c25c4b8ea8
md"""In order to cast the string to a integer, you use the parse function.
`parse(Int64, num)`"""

# ╔═╡ 93e1bf60-8e88-4ad3-8329-be3d764804b8
begin
	num = "69.69"
	println(typeof(num))
	num = parse(Float64, num)
	println(typeof(num))
end

# ╔═╡ 2ac32e07-5b53-479e-9829-652f4063f347
md"""# Functions in Julia

A function is defined with the following syntax

```
function function_name(var1, var2)
    Function Body
    return value
end```


A function is called using the traditional paranthesis syntax."""

# ╔═╡ 3c9dc51b-1833-4ac6-a3c3-88d1c601cfd4
begin
	# Defining a function
	function print_ka_function(integer)
	    println("this is a function")
		println(integer)
	end
	  
	# Function call
	print_ka_function(3)
	print_ka_function(4)
end

# ╔═╡ 346057f2-3a2a-431c-84d9-a05d19e9889e
#Defining a function with inputs

function func(x,y)
	output = x + y
	return output
end


# ╔═╡ da212505-4266-40f2-8580-958e1880da6c
begin
	random_variable = func(10,20)
	
	println(random_variable)
end

# ╔═╡ 829c7c50-5e7d-4964-9f0c-50b66888ecb9
md"""
# Writing a Program to solve the Quadratic Equation

The roots of a Quadratic Equation are given by the following formula

$$x = \frac {-b \pm \sqrt(b^2 - 4 * a * c)}{2 * a}$$

Where a, b and c are the coefficients of $x^2$, $x$ and the constant respectively.

Intialize the variables, don't bother with user input.

Solution:
"""

# ╔═╡ 8ea7bfb6-ef8f-4d2b-b261-bdd987571c80
let
	#Intializing the Variables
	a = 5
	b = 6
	c = 10
	println("The coefficient of x^2 is ", a)
	println("The coefficient of x is ", b)
	println("The constant is ", c)

	#Calculating the Discriminant
	d = complex(b^2 - 4 * a * c)
	d = d ^ 0.5

	#Calculating the first root
	root1 = -b + d
	root1 = root1/(2 * a)

	#Calculating the second root
	root2 = -b - d
	root2 = root2/(2 * a)

	#Displaying the roots
	println("The Two roots are")
	println(root1)
	println(root2)

end

# ╔═╡ Cell order:
# ╟─09735634-a9bc-4c96-ac5a-59e4f831bacf
# ╠═3ef34f10-a089-11ed-1831-fff64de35be8
# ╟─3e6c1b06-6ba1-460a-9272-2e255fd56aac
# ╠═b3e5a238-f790-499b-b397-b85c027310bb
# ╟─4f90141a-a3ef-4b93-a2d3-7fabfea7b078
# ╠═de5f3174-680e-4000-94b0-85d13f2d4c53
# ╟─33409705-cc36-4384-ba50-294ac3c6602d
# ╠═9bd35a70-f27b-4d92-8208-77efecb78e82
# ╟─ea81272a-361d-4bde-a084-90dd62203511
# ╠═bc9b59ea-6a7e-4bb9-ab64-f7a970211039
# ╟─e312a757-6ea1-4728-b97c-bf0f26d5950a
# ╠═745c25c3-dfee-4656-ad50-1bee26b4c95c
# ╟─1c8ce856-6777-44bf-8751-41d3db30af55
# ╟─dacd85cc-0112-40f5-aa1e-d3c25c4b8ea8
# ╠═93e1bf60-8e88-4ad3-8329-be3d764804b8
# ╟─2ac32e07-5b53-479e-9829-652f4063f347
# ╠═3c9dc51b-1833-4ac6-a3c3-88d1c601cfd4
# ╠═346057f2-3a2a-431c-84d9-a05d19e9889e
# ╠═da212505-4266-40f2-8580-958e1880da6c
# ╟─829c7c50-5e7d-4964-9f0c-50b66888ecb9
# ╠═8ea7bfb6-ef8f-4d2b-b261-bdd987571c80
