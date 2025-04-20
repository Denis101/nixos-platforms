rec {
  profile = {
    username = "denis";
    fullName = "Denis Craig";
    email = "admin@deniscraig.com";
    modules = {
      system = {
        wsl.enable = true;
        helix.enable = true;
        home-manager.enable = true;
        starship.enable = true;
        tmux.enable = true;
      };

      home = {
        home-manager.enable = true;
        # bash.enable = true;
        # git.enable = true;
        # tmux.enable = true;
      };
    };
  };
}
