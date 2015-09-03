# Organization

- describe (block)
- context (block)
- it (block)
  - setup
  - exercise (run the method)
  - verify (expect)
  - teardown (probably won't use)

describe "ClassName"
  describe "::class_method"
  describe "#instance_method"
    context "when something is true"
    context "when something else is true"
      it "does something"

# Expectations
look at the rspec github
expect(thing).to # ... (argument syntax)
expect { some_function_call }.to # ... (block syntax)
be_something(arg) matcher: calls the object.something?(arg) method
