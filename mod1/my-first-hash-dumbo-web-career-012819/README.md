# My First Hash

## Objectives

1. Create hashes using the literal constructor.
2. Retrieve data from hashes using the bracket method.
3. Add data to hashes using the "bracket-equals" method.

## Instructions 

### Challenge I: Instantiating Hashes

In the `my_hash` method, use the literal constructor to set a variable called `your_hash` equal to a hash with key/value pairs of your choice. 

_Note: The variable name you use within the `my_hash` method does not actually matter. All that matters is that the return value of `my_hash` is a valid hash. The return values of a method is always the last line of code a method executes._

Remember, key/value pairs are associative. It doesn't make sense to have a key/value pair of `"my_name" => 78`. It *does* make sense to have a key/value pair of `"my_name" => "Herman Melville"` (if you happen to be that author, of course). 

### Challenge II: Hash with Data

In the `shipping_manifest` method, set a variable called `the_manifest` equal to a hash.

Fill that hash with key/value pairs that describe the following information and then return the hash: 

Inventory | Quantity
------------ | -------------
whale bone corsets | 5
porcelain vases | 2
oil paintings | 3

Your hash should have the following key/value pairs:

```
"whale bone corsets" => 5
"porcelain vases" => 2
"oil paintings" => 3
```

### Challenge III: Retrieving Data 

In the `retrieval` method we've given you the `shipping_manifest` hash that you built out in the previous challenge. Use the `[]` hash method to look up and return the value of the `"oil paintings"` key of the `shipping_manifest` hash.
 
For example, if we have the following hash: 

```ruby
hash = {"key1" => "value1"}
```

We can look up and return the value of `"key1"` like this: 

```ruby
hash["key1"]
```

### Challenge IV: Adding Data

In the `adding` method, we've once again given you the `shipping_manifest` hash. Use the `[]=` method to add the following data to the hash:

Inventory | Quantity
------------ | -------------
muskets | 2
gun powder | 4

In the end your hash should have all of the following keys and values:

```
"whale bone corsets" => 5
"porcelain vases" => 2
"oil paintings" => 3
"muskets" => 2
"gun powder" => 4
```

This method must return the `shipping_manifest` hash. Make sure that the last line of the method is a reference to the variable `shipping_manifest`.

Remember that the return value of using the `[]=` method is the value of the key/value pair you added. We need our `adding` method to return the `shipping_manifest`. Here's a refresher on the `[]=` method: 

```ruby 
hash = {"key1" => "value1"}
hash["key2"] = "value2"
#=> "value2"

hash
#=> {"key1" => "value1", "key2" => "value2"}
```

Hope you had fun hashing out the ship's inventory!
