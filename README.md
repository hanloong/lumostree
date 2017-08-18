# Lumostree

This is a rails app that allows exposes an web interface for
 - Creating trees
 - Adding nested nodes
 - Editing nodes
 - Deleting nodes

# Setup

```bash
git clone https://github.com/hanloong/lumostree
cd lumostree
bundle install
bin/setup
```

# Things to note

To help with the performance of rendering the initial tree I've decided to use the `closure_tree` gem which stores metadata about the nodes and their position in the tree in a way that a single query can be used to generated a hash with the nodes nested correctly.

I went with this gem after playing around with a few different pure ruby algorithms to build the tree from a list with all the nodes but thought if this was a production app I would most likely leverage something like `closure_tree` at least when working in a time constrainted situation.
