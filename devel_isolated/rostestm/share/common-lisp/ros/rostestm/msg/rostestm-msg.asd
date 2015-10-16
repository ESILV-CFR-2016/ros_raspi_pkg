
(cl:in-package :asdf)

(defsystem "rostestm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "envoi" :depends-on ("_package_envoi"))
    (:file "_package_envoi" :depends-on ("_package"))
  ))