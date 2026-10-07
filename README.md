# OCaml Algorithms & Data Structures

Foundational algorithms and data structures implemented in **OCaml** for learning, practice, and reference.

The goal of this repository is to implement important computer science concepts from scratch while developing familiarity with functional programming, recursion, pattern matching, modules, and OCaml's imperative features.

## Implementation and Proof Progress

Implementation and proof progress are tracked separately. **Implemented** means a function is present in the repository; correctness and complexity proofs are tracked by the PDF links in their own columns.

**Not uploaded** means no corresponding proof PDF is currently linked here; it does not say whether a proof has been completed privately. When a proof PDF is uploaded, replace the relevant cell with a relative link, for example `[Proof](proofs/insertion-sort-correctness.pdf)`. One PDF may be linked in multiple columns if it covers multiple claims. For data structures, proofs should cover the representation invariants and the supported operations, including their time and space costs.

### Implemented Algorithms

| Algorithm | Implementation | Description | Correctness proof | Time complexity proof | Space complexity proof |
|---|---|---|---|---|---|
| **Integer Ternary Search** | [`ternary_search_int`](dune-project/lib/search.ml) | Find a maximum of a unimodal function over an integer interval | Not uploaded | Not uploaded | Not uploaded |
| **Insertion Sort** | [`insertion_sort`](dune-project/lib/sort.ml) | Sort a list by recursively inserting elements | Not uploaded | Not uploaded | Not uploaded |
| **Quick Sort** | [`quick_sort`](dune-project/lib/sort.ml) | Sort a list by partitioning around its first element | Not uploaded | Not uploaded | Not uploaded |

### Implemented Data Structures

No standalone data structure implementations have been added yet.

## Planned Algorithms

The bounds below are standard reference costs for the planned algorithms and structures. They are not proof claims about this repository's implementations. Each uploaded complexity proof should state its assumptions, distinguish worst-case, average-case, or amortized bounds as applicable, and specify whether space includes the output and recursion stack.

### Searching

| Algorithm | Plain meaning | Typical uses | Reference time complexity | Correctness proof | Time complexity proof | Space complexity proof |
|---|---|---|---|---|---|---|
| **Linear Search** | Check elements one by one | Searching unsorted sequences | \(O(n)\) | Not uploaded | Not uploaded | Not uploaded |
| **Binary Search** | Repeatedly halve a sorted search range | Searching sorted arrays | \(O(\log n)\) | Not uploaded | Not uploaded | Not uploaded |

### Graph Algorithms

| Algorithm | Plain meaning | Typical uses | Reference time complexity | Correctness proof | Time complexity proof | Space complexity proof |
|---|---|---|---|---|---|---|
| **BFS** | Explore a graph level by level | Unweighted shortest paths, connectivity | \(O(V+E)\) | Not uploaded | Not uploaded | Not uploaded |
| **DFS** | Explore one branch deeply before backtracking | Traversal, connectivity, cycle detection | \(O(V+E)\) | Not uploaded | Not uploaded | Not uploaded |
| **Dijkstra's Algorithm** | Repeatedly expand the closest known vertex | Shortest paths with nonnegative weights | \(O((V+E)\log V)\) with a heap | Not uploaded | Not uploaded | Not uploaded |
| **Topological Sort** | Order DAG vertices so dependencies come first | Scheduling, dependency resolution | \(O(V+E)\) | Not uploaded | Not uploaded | Not uploaded |
| **Union-Find** | Maintain connected components under merges | Connectivity, Kruskal's MST | Nearly \(O(1)\) amortized | Not uploaded | Not uploaded | Not uploaded |

### Sorting

| Algorithm | Plain meaning | Typical uses | Reference time complexity | Correctness proof | Time complexity proof | Space complexity proof |
|---|---|---|---|---|---|---|
| **Bubble Sort** | Repeatedly swap adjacent out-of-order elements | Educational | \(O(n^2)\) | Not uploaded | Not uploaded | Not uploaded |
| **Selection Sort** | Repeatedly select the minimum remaining element | Educational, few swaps | \(O(n^2)\) | Not uploaded | Not uploaded | Not uploaded |
| **Merge Sort** | Split, recursively sort halves, then merge | Stable predictable sorting | \(O(n\log n)\) | Not uploaded | Not uploaded | Not uploaded |
| **Heap Sort** | Build a heap and repeatedly extract its root | In-place guaranteed sorting | \(O(n\log n)\) | Not uploaded | Not uploaded | Not uploaded |
| **Counting Sort** | Count occurrences of each key | Small integer key ranges | \(O(n+k)\) | Not uploaded | Not uploaded | Not uploaded |
| **Radix Sort** | Sort keys digit by digit | Integers and fixed-length keys | \(O(d(n+k))\) | Not uploaded | Not uploaded | Not uploaded |
| **Bucket Sort** | Divide values among buckets and sort each bucket | Roughly uniform numeric data | Average \(O(n)\), worst \(O(n^2)\) | Not uploaded | Not uploaded | Not uploaded |

## Planned Data Structures

| Structure | Description | Typical uses | Reference operation costs | Correctness proof | Time complexity proof | Space complexity proof |
|---|---|---|---|---|---|---|
| **Array** | Fixed-size contiguous sequence | Matrices, buffers, numerical data | Access: \(O(1)\); middle insertion: \(O(n)\) | Not uploaded | Not uploaded | Not uploaded |
| **Dynamic Array** | Resizable contiguous sequence | General-purpose mutable sequences | Access: \(O(1)\); append: amortized \(O(1)\) | Not uploaded | Not uploaded | Not uploaded |
| **Linked List** | Nodes connected sequentially | Recursive structures, frequent known-position insertion | Access/search: \(O(n)\); insertion: \(O(1)\) | Not uploaded | Not uploaded | Not uploaded |
| **Stack** | Last in, first out | Parsing, DFS, undo, function calls | Push/pop: \(O(1)\) | Not uploaded | Not uploaded | Not uploaded |
| **Queue / Deque** | FIFO structure; deque supports both ends | BFS, scheduling, buffering | End insertion/removal: \(O(1)\) | Not uploaded | Not uploaded | Not uploaded |
| **Hash Table** | Maps keys to values using hashing | Lookup, sets, frequency counting | Expected \(O(1)\); worst \(O(n)\) | Not uploaded | Not uploaded | Not uploaded |
| **Balanced Search Tree** | Maintains ordered keys in a balanced tree | Sorted maps, range queries | \(O(\log n)\) lookup/insert/delete | Not uploaded | Not uploaded | Not uploaded |
| **Heap / Priority Queue** | Efficiently exposes minimum or maximum element | Scheduling, Dijkstra, top-\(k\) | Top: \(O(1)\); insert/remove: \(O(\log n)\) | Not uploaded | Not uploaded | Not uploaded |
| **Fibonacci Heap** | Priority queue built from heap-ordered trees with deferred consolidation | Dijkstra, Prim, frequent decrease-key operations | Minimum: \(O(1)\); insert/meld/decrease-key: amortized \(O(1)\); extract-min/delete: amortized \(O(\log n)\); decrease-key/delete require a node handle | Not uploaded | Not uploaded | Not uploaded |
| **Graph** | Vertices connected by edges | Networks, paths, dependencies | Traversal: \(O(V+E)\) | Not uploaded | Not uploaded | Not uploaded |
| **Trie** | Tree indexed by characters or tokens | Prefix search, dictionaries, autocomplete | Usually \(O(k)\) for key length \(k\) | Not uploaded | Not uploaded | Not uploaded |

## Repository Structure

```text
.
├── dune-project/
│   ├── bin/
│   ├── lib/
│   │   ├── search.ml / search.mli
│   │   ├── sort.ml / sort.mli
│   │   └── util.ml
│   ├── test/
│   └── dune-project
├── LICENSE
└── README.md
```

## Goals

- Implement foundational algorithms from scratch.
- Prove correctness and time/space complexity, and link the proof PDFs in the progress tables.
- Practice idiomatic OCaml.
- Build reusable implementations with tests.

## Building

This project uses **Dune**.

Run from `dune-project/`:

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
