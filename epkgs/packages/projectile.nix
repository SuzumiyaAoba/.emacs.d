{ sources, epkgs }:
epkgs.melpaBuild {
  pname = "projectile";
  src = sources.emacs-projectile.src;
  version = "20250111.1055";
}
