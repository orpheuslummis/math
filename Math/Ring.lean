class AddCommGroup (α : Type) where
  add : α → α → α
  zero : α
  neg : α → α
  add_assoc : ∀ a b c : α, add (add a b) c = add a (add b c)
  zero_add : ∀ a : α, add zero a = a
  add_zero : ∀ a : α, add a zero = a
  add_left_neg : ∀ a : α, add (neg a) a = zero
  add_comm : ∀ a b : α, add a b = add b a

class Monoid (α : Type) where
  mul : α → α → α
  one : α
  mul_assoc : ∀ a b c : α, mul (mul a b) c = mul a (mul b c)
  one_mul : ∀ a : α, mul one a = a
  mul_one : ∀ a : α, mul a one = a

class Ring (α : Type) extends AddCommGroup α, Monoid α where
  mul_comm : ∀ a b : α, mul a b = mul b a
  left_distrib : ∀ a b c : α, mul a (add b c) = add (mul a b) (mul a c)
  right_distrib : ∀ a b c : α, mul (add a b) c = add (mul a c) (mul b c)
