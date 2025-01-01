# Basics ->
esc -> for normal mode
i -> for insert mode
:w -> write the file (save)
:q -> quit the file 
:wq or :x -> write and quit
:q! -> quit without writing
h,j,k,l -> Basic navigation --> h -> right, j -> down, k -> up, l -> down.
a -> append next
I -> insert before line
A -> append after line
o -> new line below
O -> new line above

# Not So Basic ->
w -> next word
b -> previous word
W -> next word (ignore special characters)
B -> next word (ignore special characters)
r -> replace letter (replace a character without going insert mode)
R -> replace a word (replace a word without going insert mode)
cw -> chage word
8w -> jump eight words
c7w -> chage seven words
4j -> move four lines down
C -> change rest of the line
dw -> delete word
D -> Delete rest of the line
d4w -> delete four lines
dd -> delete line (deletes the whole line where ever the cursor is)
cc -> change line (chages the whole line where ever the cursor is)
4dd -> change four lines
8cc -> change 8 lines
x -> delete a character (without going insert mode)

# Do Stuffs ->
u -> for undo
ctrl + r -> redo 
ctrl + u -> undo in insert mode 
ciw -> change in inner word
diw -> delete in inner word (in the middle of the word delete without going to the first character)
J -> deletes an empty line (without going insert mode)
P -> inserts an empty line (without going insert mode)
ci) / ] / } -> change inner parenthesis/ brackets
% -> jump to the parenthesis/brackets
gg -> jump to the beginning of the line
G -> jump to the end of the line
17G -> go to line 17
:17 -> go to line 17 
0 -> navigate to the beginning of the line
$ -> natigate to the end of the line

# v -> Visual Mode

