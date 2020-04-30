| **SL** | **Progress** | **Bug** | **Time(s)** | **Bounds** | **Repo** |
|:----:|:----------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------:|:-------:|:------:|:--------------------:|
| 0_lb | start with [Hotfix to linebuffer to add flush](https://github.com/StanfordAHA/garnet/commit/26b5452a0bb9e41553996d766cbc35343cceb74f#diff-56b8645ef137aac84edd3bbce6ccac71) | valid independent of wen | 0.9 | 5 |  |
| 1_lb | sol: add wen dependency to valid | -------NO BUGS--------- |  |  | [added wen dependency](https://docs.google.com/spreadsheets/d/13s5wKLO-cQO9BhaLndG6hNC6VCy7N5LbcqcXkMr9K24/edit#gid=1845400852&range=F38) |
| 2_lb | start with [fixed valid - simpler logic](https://docs.google.com/spreadsheets/d/13s5wKLO-cQO9BhaLndG6hNC6VCy7N5LbcqcXkMr9K24/edit#gid=1845400852&range=B39) | valid never goes high | 0.1 | 6 |  |
| 3_lb | sol: logic fixed | -------NO BUGS--------- |  |  | [fixed valid out](https://docs.google.com/spreadsheets/d/13s5wKLO-cQO9BhaLndG6hNC6VCy7N5LbcqcXkMr9K24/edit#gid=1845400852&range=F40) |
| 4_lb | turn on clk gating | clk gating occurs in aqed a cycle later leading it to register a spurious duplicate | 1.1 | 6 |  |
| 5_lb | sol: add clk\_en in every if statement instead of gating at the top in final design | -------NO BUGS--------- |  |  | [#333](https://docs.google.com/spreadsheets/d/13s5wKLO-cQO9BhaLndG6hNC6VCy7N5LbcqcXkMr9K24/edit#gid=1845400852&range=F42) |
