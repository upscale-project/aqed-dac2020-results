| **SL** | **Progress** | **Bug** | **Time(s)** | **Bounds** | **Soln. Repo** |
|:----:|:----------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------:|:-------:|:------:|:--------------------:|
| 0 | start with [Hotfix to linebuffer to add flush](https://github.com/StanfordAHA/garnet/commit/26b5452a0bb9e41553996d766cbc35343cceb74f#diff-56b8645ef137aac84edd3bbce6ccac71) | valid independent of wen | 0.9 | 5 |  |
| 1 | soln: add wen dependency to valid | -------NO BUGS--------- |  |  | [added wen dependency](https://github.com/StanfordAHA/garnet/commit/933966a95cede08e1d85f338f58b829eef7afd27#diff-56b8645ef137aac84edd3bbce6ccac71) |
| 2 | start with [fixed valid - simpler logic](https://github.com/StanfordAHA/garnet/commit/4f0e36ed21a4bac3877df31e04dbd3d7d5b7dee1#diff-56b8645ef137aac84edd3bbce6ccac71) | valid never goes high | 0.1 | 6 |  |
| 3 | soln: logic fixed | -------NO BUGS--------- |  |  | [fixed valid out](https://github.com/StanfordAHA/garnet/commit/da25884668a0c6e0b1b5e4b999be51ec5bd0fb65#diff-56b8645ef137aac84edd3bbce6ccac71) |
| 4 | turn on clk gating | clk gating occurs in linebuffer a cycle earlier | 0.8 | 4 |  |
| 5 | soln: add clk\_en in every if statement instead of gating at the top in final design | -------NO BUGS--------- |  |  |  |
