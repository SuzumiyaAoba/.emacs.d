{ sources, epkgs, css-in-js-mode }:
epkgs.melpaBuild {
  pname = "tsx-mode";
  src = sources.emacs-tsx-mode.src;
  version = "3.1.0";
  packageRequires = with epkgs; [
    coverlay
    css-in-js-mode
    (treesit-grammars.with-grammars (
      p: with p; [
        tree-sitter-tsx
      ]
    ))
  ];
}
