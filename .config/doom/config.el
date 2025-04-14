(setq doom-theme 'doom-gruvbox)
(setq display-line-numbers-type 'relative)
(setq scroll-margin 8)
(setq org-directory "~/org/")
(doom/set-frame-opacity 60)

(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)
(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)

(map! :leader
      :desc "Latex Complie and view" "\ l" #'TeX-command-run-all)

(map! :leader
      :desc "Toggle treemacs file viewer" "e e" #'treemacs)

(map! :leader
      :desc "Vterm popup toggle"     "v t" #'+vterm/toggle)
