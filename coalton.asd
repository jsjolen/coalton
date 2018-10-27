;;;; coalton.asd

(asdf:defsystem #:coalton
  :description "A dialect of ML in Common Lisp."
  :author "Robert Smith <robert@stylewarning.com>"
  :license "MIT"
  :depends-on (#:alexandria)
  :in-order-to ((asdf:test-op (asdf:test-op #:coalton/tests)))
  :pathname "src/"
  :serial t
  :components ((:file "package")))

(asdf:defsystem #:coalton/tests
  :description "Tests for COALTON."
  :author "Robert Smith <robert@stylewarning.com>"
  :license "MIT"
  :depends-on (#:coalton)
  :perform (asdf:test-op (o s) nil)
  :pathname "tests/"
  :serial t
  :components ((:file "package")))