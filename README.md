# OCaml Algorithms & Data Structures

Foundational algorithms and data structures implemented in **OCaml** for learning, practice, and reference.

The goal of this repository is to implement important computer science concepts from scratch while developing familiarity with functional programming, recursion, pattern matching, modules, and OCaml's imperative features.

## Algorithms

### Searching

| Algorithm | Plain meaning | Typical uses | Time complexity |
|---|---|---|---|
| **Linear Search** | Check elements one by one | Searching unsorted sequences | \(O(n)\) |
| **Binary Search** | Repeatedly halve a sorted search range | Searching sorted arrays | \(O(\log n)\) |
| **Unimodal / Ternary Search** | Repeatedly eliminate regions that cannot contain the optimum | Finding minima/maxima of unimodal functions | \(O(\log n)\) for discrete domains |

### Graph Algorithms

| Algorithm | Plain meaning | Typical uses | Time complexity |
|---|---|---|---|
| **BFS** | Explore a graph level by level | Unweighted shortest paths, connectivity | \(O(V+E)\) |
| **DFS** | Explore one branch deeply before backtracking | Traversal, connectivity, cycle detection | \(O(V+E)\) |
| **Dijkstra's Algorithm** | Repeatedly expand the closest known vertex | Shortest paths with nonnegative weights | \(O((V+E)\log V)\) with a heap |
| **Topological Sort** | Order DAG vertices so dependencies come first | Scheduling, dependency resolution | \(O(V+E)\) |
| **Union-Find** | Maintain connected components under merges | Connectivity, Kruskal's MST | Nearly \(O(1)\) amortized |

### Sorting

| Algorithm | Plain meaning | Typical uses | Time complexity |
|---|---|---|---|
| **Bubble Sort** | Repeatedly swap adjacent out-of-order elements | Educational | \(O(n^2)\) |
| **Selection Sort** | Repeatedly select the minimum remaining element | Educational, few swaps | \(O(n^2)\) |
| **Insertion Sort** | Insert each element into an already-sorted prefix | Small or nearly sorted arrays | Worst \(O(n^2)\), best \(O(n)\) |
| **Merge Sort** | Split, recursively sort halves, then merge | Stable predictable sorting | \(O(n\log n)\) |
| **Quick Sort** | Partition around a pivot and recursively sort partitions | General-purpose sorting | Average \(O(n\log n)\), worst \(O(n^2)\) |
| **Heap Sort** | Build a heap and repeatedly extract its root | In-place guaranteed sorting | \(O(n\log n)\) |
| **Counting Sort** | Count occurrences of each key | Small integer key ranges | \(O(n+k)\) |
| **Radix Sort** | Sort keys digit by digit | Integers and fixed-length keys | \(O(d(n+k))\) |
| **Bucket Sort** | Divide values among buckets and sort each bucket | Roughly uniform numeric data | Average \(O(n)\), worst \(O(n^2)\) |

## Data Structures

| Structure | Description | Typical uses | Important costs |
|---|---|---|---|
| **Array** | Fixed-size contiguous sequence | Matrices, buffers, numerical data | Access: \(O(1)\); middle insertion: \(O(n)\) |
| **Dynamic Array** | Resizable contiguous sequence | General-purpose mutable sequences | Access: \(O(1)\); append: amortized \(O(1)\) |
| **Linked List** | Nodes connected sequentially | Recursive structures, frequent known-position insertion | Access/search: \(O(n)\); insertion: \(O(1)\) |
| **Stack** | Last in, first out | Parsing, DFS, undo, function calls | Push/pop: \(O(1)\) |
| **Queue / Deque** | FIFO structure; deque supports both ends | BFS, scheduling, buffering | End insertion/removal: \(O(1)\) |
| **Hash Table** | Maps keys to values using hashing | Lookup, sets, frequency counting | Expected \(O(1)\); worst \(O(n)\) |
| **Balanced Search Tree** | Maintains ordered keys in a balanced tree | Sorted maps, range queries | \(O(\log n)\) lookup/insert/delete |
| **Heap / Priority Queue** | Efficiently exposes minimum or maximum element | Scheduling, Dijkstra, top-\(k\) | Top: \(O(1)\); insert/remove: \(O(\log n)\) |
| **Graph** | Vertices connected by edges | Networks, paths, dependencies | Traversal: \(O(V+E)\) |
| **Trie** | Tree indexed by characters or tokens | Prefix search, dictionaries, autocomplete | Usually \(O(k)\) for key length \(k\) |

## Repository Structure

```text
.
├── algorithms/
│   ├── search/
│   ├── sorting/
│   └── graph/
├── data_structures/
│   ├── arrays/
│   ├── lists/
│   ├── stacks/
│   ├── queues/
│   ├── heaps/
│   ├── trees/
│   ├── hash_tables/
│   ├── graphs/
│   └── tries/
├── test/
├── dune-project
└── README.md
```

## Goals

- Implement foundational algorithms from scratch.
- Analyze their correctness and asymptotic complexity.
- Practice idiomatic OCaml.
- Compare functional and imperative implementations where useful.
- Build reusable implementations with tests.

## Building

This project uses **Dune**.

```bash
dune build
```

Run tests with:

```bash
dune runtest
```

## Status

The repository is a work in progress. Algorithms and data structures are added incrementally as they are implemented and tested.

## License

See [`LICENSE`](LICENSE).