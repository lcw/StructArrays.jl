# Use Adapt allows for automatic conversion of CPU to GPU StructArrays
import Adapt
Adapt.adapt_storage(to, s::StructArray) = replace_storage(x->Adapt.adapt(to, x), s)
