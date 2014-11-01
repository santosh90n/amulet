local am = amulet

local
function print_graph2(node, visited, indent)
    if visited[node] then
        print(indent..node.name.."("..node.tname..") [cycle]")
    else
        print(indent..node.name.."("..node.tname..")")
        visited[node] = true
        for i, child in node:children() do
            assert(child == node:child(i))
            print_graph2(child, visited, indent.."  ")
        end
        visited[node] = nil
    end
end

local
function print_graph(root)
    print_graph2(root, {}, "")
end

local node = am.empty():alias("base"):alias("name", "base")
    :bind_vec2("A", math.vec2(0)):alias("nodeA"):alias("name", "A"):alias("a", "AA")
    :bind_vec3("B", math.vec3(0)):alias("nodeB"):alias("name", "B"):alias("b", "BB")
    :bind_vec4("C", math.vec4(0)):alias("nodeC"):alias("name", "C"):alias("c", "CC")

print(node.nodeA.name..":"..node.nodeA.tname)
print(node.nodeB.name..":"..node.nodeB.tname)
print(node.nodeC.name..":"..node.nodeC.tname)
print(node.base.tname)

print(node.a)
print(node.b)
print(node.c)

print("")
print_graph(node)
node.base:append(am.empty():alias("name", "D"))
print("")
print_graph(node)
node.nodeB:append(am.empty():alias("name", "E"):alias("nodeE"))
print("")
print_graph(node)
node.nodeB:remove(node.nodeB:child(2))
print("")
print_graph(node)

local cycle = am.empty():alias("A"):alias("name", "A"):alias("f1", {f = 1})
    :bind_vec2("B", math.vec2(0)):alias("B"):alias("name", "B"):alias("f2", {f = 2})
    :bind_vec3("C", math.vec3(0)):alias("C"):alias("name", "C"):alias("f3", {f = 3})

cycle.A:append(cycle)

print("---")
print_graph(cycle)
print("")
print_graph(cycle.A)
print("")
print_graph(cycle.B)
print("")
print_graph(cycle.C)

print("")
print(cycle.f1.f)
print(cycle.f2.f)
print(cycle.f3.f)
print(cycle.B.f1.f)
print(cycle.B.f2.f)
print(cycle.B.f3.f)
