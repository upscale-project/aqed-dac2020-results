| **SL** | **Progress** | **Bug** | **Time(s)** | **Bounds** | **Repo** |
|:----:|:----------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------:|:-------:|:------:|:--------------------:|
| 0_lb | start with [Hotfix to linebuffer to add flush]() | valid independent of wen | 0.9 | 5 |  |
| 1_lb | sol: add wen dependency to valid | -------NO BUGS--------- |  |  | [added wen dependency]() |
| 2_lb | start with [fixed valid - simpler logic]() | valid never goes high | 0.1 | 6 |  |
| 3_lb | sol: logic fixed | -------NO BUGS--------- |  |  | [fixed valid out]() |
| 4_lb | turn on clk gating | clk_gating occurs in aqed a cycle later leading it to register a spurious duplicate | 1.1 | 6 |  |
| 5_lb | sol: add clk_en in every if statement instead of gating at the top in final design | -------NO BUGS--------- |  |  | [#333]() |
