(setq doom-theme 'doom-gruvbox)
(setq display-line-numbers-type 'relative)
(setq scroll-margin 8)
;; (doom/set-frame-opacity 60)

;; (after! ccls
;;   (setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t))
;;         ccls-args '("-log-file=/tmp/ccls.log", "-std=c++23")
;; ;; -isystem/opt/homebrew/Cellar/gcc/15.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin24/15/../../../../../../include/c++/15 -isystem/opt/homebrew/Cellar/gcc/15.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin24/15/../../../../../../include/c++/15/aarch64-apple-darwin24 -isystem/opt/homebrew/Cellar/gcc/15.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin24/15/../../../../../../include/c++/15/backward -isystem/opt/homebrew/Cellar/gcc/15.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin24/15/include -isystem/opt/homebrew/Cellar/gcc/15.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin24/15/include-fixed -isystem/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include -isystem/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/System/Library/Frameworks")
;;         ccls-executable "ccls")
;;   (set-lsp-priority! 'ccls 0)) ; optional as ccls is the default in Doom

(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)
(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)

(map! :leader
      :desc "Latex Complie and view" "\ l" #'TeX-command-run-all)

(after! org
  (setq org-directory "~/org")
)

(after! org
  (setq org-agenda-files '("~/org/agenda.org"))

  (setq
   ;; org-fancy-priorities-list '("[A]" "[B]" "[C]")
   ;; org-fancy-priorities-list '("❗" "[B]" "[C]")
   ;; org-fancy-priorities-list '("🟥" "🟧" "🟨")
   org-priority-faces
   '((?A :foreground "#ff6c6b" :weight bold)
     (?B :foreground "#98be65" :weight bold)
     (?C :foreground "#c678dd" :weight bold))
   org-agenda-block-separator 8411)

  (setq org-agenda-custom-commands
        '(("v" "A better agenda view"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority unfinished tasks:")))
            (tags "PRIORITY=\"B\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "Medium-priority unfinished tasks:")))
            (tags "PRIORITY=\"C\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "Low-priority unfinished tasks:")))
            (tags "customtag"
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "Tasks marked with customtag:")))

            (agenda "")
            (alltodo ""))))))

(after! org
  (setq org-roam-directory (file-truename "~/org/roam/"))
)

(setq typst-preview-invert-colors "never")
