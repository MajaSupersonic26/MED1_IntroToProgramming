class count {
  int textp;
  int counts;

  count(int t_counts, int t_textp) {
    counts=t_counts;
    textp=t_textp;
  }

  void displayCount() {
    fill(#FFFFFF);//countertext
    textSize(20);
    text(counts, textp, textp);

    
    }
  }
