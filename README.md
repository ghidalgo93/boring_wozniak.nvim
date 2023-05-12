# boring_wozniak.nvim
Nvim plugin to generate random variable names similar to docker container names

In my own development and testing I often want to create random variable names on the fly to ensure
tests are unique and didn't want to rely on an external library.


TODO:
[] add functionality to pass in your own lists to generate random names from
    example: people = {"anne", "john", ... "hodor"} -> nifty_hodor
[] add functionality to decide how to format name
    example: adjective_animal, animal_adjective, adjective_person -> ibex_fast

