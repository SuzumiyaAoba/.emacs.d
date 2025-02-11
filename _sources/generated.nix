# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  emacs-anzu = {
    pname = "emacs-anzu";
    version = "21cb5ab2295614372cb9f1a21429381e49a6255f";
    src = fetchFromGitHub {
      owner = "emacsorphanage";
      repo = "anzu";
      rev = "21cb5ab2295614372cb9f1a21429381e49a6255f";
      fetchSubmodules = false;
      sha256 = "sha256-xnBSzfxcrLIprMVtj2HYgEZIdWIVM0An5XS55G4ueOU=";
    };
    date = "2024-09-28";
  };
  emacs-consult = {
    pname = "emacs-consult";
    version = "c74ae6149172e3429b844c22d67e02b01abea1e4";
    src = fetchFromGitHub {
      owner = "minad";
      repo = "consult";
      rev = "c74ae6149172e3429b844c22d67e02b01abea1e4";
      fetchSubmodules = false;
      sha256 = "sha256-ygU65hhhPjFhW/ZQ5Y8Ij4H0XSK8IoFKahTcoli+rDs=";
    };
    date = "2025-02-07";
  };
  emacs-consult-ghq = {
    pname = "emacs-consult-ghq";
    version = "65a99980fb313d473376542cb87464a8a44ff25e";
    src = fetchFromGitHub {
      owner = "tomoya";
      repo = "consult-ghq";
      rev = "65a99980fb313d473376542cb87464a8a44ff25e";
      fetchSubmodules = false;
      sha256 = "sha256-kLF06zQSLb1fZGKZ3XWJoPoSiIR4MzRV8ujpd/v5a/8=";
    };
    date = "2023-11-11";
  };
  emacs-copilot = {
    pname = "emacs-copilot";
    version = "867a3debf907cbd7c5b0eb8837354a1efc7c2db9";
    src = fetchFromGitHub {
      owner = "copilot-emacs";
      repo = "copilot.el";
      rev = "867a3debf907cbd7c5b0eb8837354a1efc7c2db9";
      fetchSubmodules = false;
      sha256 = "sha256-BEA5cQSNgAMOULM3uNMATYHtFwV7CXAsZYi5IT1kB8A=";
    };
    date = "2025-01-15";
  };
  emacs-corfu = {
    pname = "emacs-corfu";
    version = "2c476b442ccfda9935e472b26d9cd60d45726560";
    src = fetchFromGitHub {
      owner = "minad";
      repo = "corfu";
      rev = "2c476b442ccfda9935e472b26d9cd60d45726560";
      fetchSubmodules = false;
      sha256 = "sha256-Y+dcVX2zXkYaHvsS+SuhqqCnwwm188dj0VJf7BYxzHs=";
    };
    date = "2025-01-28";
  };
  emacs-corfu-terminal = {
    pname = "emacs-corfu-terminal";
    version = "501548c3d51f926c687e8cd838c5865ec45d03cc";
    src = fetchgit {
      url = "https://codeberg.org/akib/emacs-corfu-terminal";
      rev = "501548c3d51f926c687e8cd838c5865ec45d03cc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-0qdSsuPE2s+DVu6yuqebMEt/29ypRlvb7TbvWEMHsjU=";
    };
    date = "2023-08-10";
  };
  emacs-css-in-js-mode = {
    pname = "emacs-css-in-js-mode";
    version = "42c61e232eadd05027c118497a04cd4acbe5d802";
    src = fetchFromGitHub {
      owner = "orzechowskid";
      repo = "tree-sitter-css-in-js";
      rev = "42c61e232eadd05027c118497a04cd4acbe5d802";
      fetchSubmodules = false;
      sha256 = "sha256-9xyWD/zPGL4QOH/FffmGIHbOzJME8gPUfd7uQc2MTpg=";
    };
    date = "2024-06-13";
  };
  emacs-devil = {
    pname = "emacs-devil";
    version = "c2dc9fc2886471daff654e12b46a144a4d1361ae";
    src = fetchFromGitHub {
      owner = "susam";
      repo = "devil";
      rev = "c2dc9fc2886471daff654e12b46a144a4d1361ae";
      fetchSubmodules = false;
      sha256 = "sha256-GMpVFZs2vugh5hAJkRVKw698pBkuGY+g/tWs3lPfR/A=";
    };
    date = "2024-01-29";
  };
  emacs-eglot-booster = {
    pname = "emacs-eglot-booster";
    version = "e6daa6bcaf4aceee29c8a5a949b43eb1b89900ed";
    src = fetchFromGitHub {
      owner = "jdtsmith";
      repo = "eglot-booster";
      rev = "e6daa6bcaf4aceee29c8a5a949b43eb1b89900ed";
      fetchSubmodules = false;
      sha256 = "sha256-PLfaXELkdX5NZcSmR1s/kgmU16ODF8bn56nfTh9g6bs=";
    };
    date = "2024-10-29";
  };
  emacs-flymake-popon = {
    pname = "emacs-flymake-popon";
    version = "99ea813346f3edef7220d8f4faeed2ec69af6060";
    src = fetchgit {
      url = "https://codeberg.org/akib/emacs-flymake-popon";
      rev = "99ea813346f3edef7220d8f4faeed2ec69af6060";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-YUyCP3WIjOAvaTP6d2G68mqwGwWdRqhoFMaJWai1WFI=";
    };
    date = "2023-02-08";
  };
  emacs-magit = {
    pname = "emacs-magit";
    version = "ae5f8b0b03773d00f2fd8034af106428b31cb8a4";
    src = fetchFromGitHub {
      owner = "magit";
      repo = "magit";
      rev = "ae5f8b0b03773d00f2fd8034af106428b31cb8a4";
      fetchSubmodules = false;
      sha256 = "sha256-BSpxpG2G+zwU65qAA8Ac8p+nUkSuYpMs68IsuLYrrRI=";
    };
    date = "2025-02-10";
  };
  emacs-modus-themes = {
    pname = "emacs-modus-themes";
    version = "610ae60123707c4669651b8da3308e9c54b83620";
    src = fetchFromGitHub {
      owner = "protesilaos";
      repo = "modus-themes";
      rev = "610ae60123707c4669651b8da3308e9c54b83620";
      fetchSubmodules = false;
      sha256 = "sha256-T40pP1N1+RdzKkaxc/rznwjzf+plzB8hr7hVe6XfaHM=";
    };
    date = "2025-02-08";
  };
  emacs-moody = {
    pname = "emacs-moody";
    version = "26dd59b300c149a0e2e332023115b280b42ead12";
    src = fetchFromGitHub {
      owner = "tarsius";
      repo = "moody";
      rev = "26dd59b300c149a0e2e332023115b280b42ead12";
      fetchSubmodules = false;
      sha256 = "sha256-AivCBH2/Y/T5tlMq5Un36/H833ZG0ZA0FpYFchuE168=";
    };
    date = "2025-01-01";
  };
  emacs-nerd-icons-dired = {
    pname = "emacs-nerd-icons-dired";
    version = "c0b0cda2b92f831d0f764a7e8c0c6728d6a27774";
    src = fetchFromGitHub {
      owner = "rainstormstudio";
      repo = "nerd-icons-dired";
      rev = "c0b0cda2b92f831d0f764a7e8c0c6728d6a27774";
      fetchSubmodules = false;
      sha256 = "sha256-yoiwuf90qhwzSGQgaXZb+Zo+cTxjeEIt6NoZKQb8mMc=";
    };
    date = "2024-10-13";
  };
  emacs-nix-mode = {
    pname = "emacs-nix-mode";
    version = "719feb7868fb567ecfe5578f6119892c771ac5e5";
    src = fetchFromGitHub {
      owner = "NixOS";
      repo = "nix-mode";
      rev = "719feb7868fb567ecfe5578f6119892c771ac5e5";
      fetchSubmodules = false;
      sha256 = "sha256-W/bxCAn4cvzKGbhILxtTiWJ5Wln2w6g4TPgk+ziCXsQ=";
    };
    date = "2023-04-21";
  };
  emacs-orderless = {
    pname = "emacs-orderless";
    version = "c7cb04499d94ee1c17affb29b1cfcd2a45116c97";
    src = fetchFromGitHub {
      owner = "oantolin";
      repo = "orderless";
      rev = "c7cb04499d94ee1c17affb29b1cfcd2a45116c97";
      fetchSubmodules = false;
      sha256 = "sha256-LR1CTeId2jiVrcodxcHaG9uYg3engKtOrEvd6k5wGLw=";
    };
    date = "2025-02-02";
  };
  emacs-org-modern-indent = {
    pname = "emacs-org-modern-indent";
    version = "52b46c6ecd63e627ab5bfb83c580b51f68a23774";
    src = fetchFromGitHub {
      owner = "jdtsmith";
      repo = "org-modern-indent";
      rev = "52b46c6ecd63e627ab5bfb83c580b51f68a23774";
      fetchSubmodules = false;
      sha256 = "sha256-9aaaPGCvt51FknRKB5zT8AdHjhH/sQMc1IyQS3KnJsU=";
    };
    date = "2024-12-16";
  };
  emacs-projectile = {
    pname = "emacs-projectile";
    version = "cdb22f6b588c8ffa508f6fda586ee1253c73490b";
    src = fetchFromGitHub {
      owner = "bbatsov";
      repo = "projectile";
      rev = "cdb22f6b588c8ffa508f6fda586ee1253c73490b";
      fetchSubmodules = false;
      sha256 = "sha256-pdSNrtM6XyfOJrKnhhZly1tpkOtIUj6V9Mo1wYhxaEA=";
    };
    date = "2025-02-09";
  };
  emacs-rg = {
    pname = "emacs-rg";
    version = "94813ba3a7ccf3af68beb23a2c39154a99e8c9ec";
    src = fetchFromGitHub {
      owner = "dajva";
      repo = "rg.el";
      rev = "94813ba3a7ccf3af68beb23a2c39154a99e8c9ec";
      fetchSubmodules = false;
      sha256 = "sha256-IEG/wg9Rpp81xWQRcPXqcdohE/aDdHwcmf+2aOUEHqw=";
    };
    date = "2025-01-02";
  };
  emacs-setup = {
    pname = "emacs-setup";
    version = "dfea961eede4023b38f58722bd65c337975d2cb0";
    src = fetchgit {
      url = "https://git.sr.ht/~pkal/setup";
      rev = "dfea961eede4023b38f58722bd65c337975d2cb0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-+W6v5eVQwTfuIog9QGO64pAGB9+pJS0fzEA0seQye1I=";
    };
    date = "2025-01-31";
  };
  emacs-tsx-mode = {
    pname = "emacs-tsx-mode";
    version = "2dd6168b3919652a851fb92c3f17c3b161d7b60b";
    src = fetchFromGitHub {
      owner = "orzechowskid";
      repo = "tsx-mode.el";
      rev = "2dd6168b3919652a851fb92c3f17c3b161d7b60b";
      fetchSubmodules = false;
      sha256 = "sha256-jX1jfCJGqrw7uZ3HCug8+zvU6zxxZ6hTKVzSRS5v4C4=";
    };
    date = "2025-01-26";
  };
  emacs-undohist = {
    pname = "emacs-undohist";
    version = "fd11900663f307958dc7e1d7ea1b0004f6cdb4d0";
    src = fetchFromGitHub {
      owner = "emacsorphanage";
      repo = "undohist";
      rev = "fd11900663f307958dc7e1d7ea1b0004f6cdb4d0";
      fetchSubmodules = false;
      sha256 = "sha256-pbnevZCJInOIgLaIGSBn5rcYyRL5dzE59fBWbiubvcQ=";
    };
    date = "2024-09-25";
  };
  emacs-vertico = {
    pname = "emacs-vertico";
    version = "e69ef62ffa4bc42dd42437881c251ecdcae0e0c5";
    src = fetchgit {
      url = "https://github.com/minad/vertico";
      rev = "e69ef62ffa4bc42dd42437881c251ecdcae0e0c5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-nyBJ8PN374LDplv7yrUExi0T4RhXgGZJruzR3C0aFeg=";
    };
    date = "2025-02-03";
  };
  emacs-vundo = {
    pname = "emacs-vundo";
    version = "288892ee93214ddcaf65fdd9f3134c1bd10100ee";
    src = fetchFromGitHub {
      owner = "casouri";
      repo = "vundo";
      rev = "288892ee93214ddcaf65fdd9f3134c1bd10100ee";
      fetchSubmodules = false;
      sha256 = "sha256-dJZqPOWq9IK/il2RjAKYy0rSQyKpW4TShkBh7ytwrLg=";
    };
    date = "2025-01-14";
  };
}
