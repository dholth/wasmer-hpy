#!/usr/bin/env python

from wasmer import Store, Module, Instance, Memory

module = Module(Store(), open("quickstart.wasm", "rb").read())
instance = Instance(module)

memory = instance.exports.memory

assert isinstance(memory, Memory)
