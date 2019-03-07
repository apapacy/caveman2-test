(defsystem "caveman2-test-test"
  :defsystem-depends-on ("prove-asdf")
  :author "<Your full name>"
  :license ""
  :depends-on ("caveman2-test"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "caveman2-test"))))
  :description "Test system for caveman2-test"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
