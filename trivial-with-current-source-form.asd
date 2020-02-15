;;;; trivial-with-current-source-form.asd --- System definition for the trivial-with-current-source-form system.
;;;;
;;;; Copyright (C) 2014-2019 Jan Moringen
;;;;
;;;; Author: Jan Moringen <jmoringe@techfak.uni-bielefeld.de>

(defsystem "trivial-with-current-source-form"
  :description "Helps macro writers produce better errors for macro users"
  :license     "GPLv3"                  ; see COPYING for details
  :author      "Jan Moringen <jmoringe@techfak.uni-bielefeld.de>"

  :version     (:read-file-form "version-string.sexp")
  :depends-on  ("alexandria")

  :components  ((:module     "src"
                 :serial     t
                 :components ((:file       "package")
                              (:file       "sbcl"        :if-feature :sbcl)
                              (:file       "unsupported" :if-feature (:not :sbcl))
                              (:file       "macro")))))
