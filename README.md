# Digital-System-Design-with-Lab
# RISC-V 控制七段顯示器之簡易運算顯示系統

## Project Description

本專題使用 Vivado 軟體進行設計，並以 Basys 3 FPGA 開發板作為硬體平台。系統設計目標是透過 switch 輸入兩個簡單數值，選擇加法或減法運算，最後將結果顯示在七段顯示器上。

原本規劃希望使用 RISC-V CPU core 作為主要控制核心，由 CPU 讀取 switch 輸入、執行簡易運算，並控制七段顯示器輸出。目前已先完成 Vivado 專案中的基本 Verilog 架構與 Basys 3 腳位設定。

## Development Environment

- Software: Vivado
- FPGA Board: Basys 3
- FPGA Device: xc7a35tcpg236-1
- Language: Verilog HDL

## File Description

| File Name | Description |
|---|---|
| top.v | 主模組，負責讀取 switch 輸入、判斷加法或減法，並將結果送到七段顯示器模組 |
| seven_seg1.v | 七段顯示器解碼模組，將數字轉換成七段顯示器顯示訊號 |
| Basys3.xdc | Basys 3 腳位設定檔，設定 switch 與七段顯示器對應腳位 |

## Current Function

- SW0 ~ SW1：輸入數值 A
- SW2 ~ SW3：輸入數值 B
- SW4：選擇運算模式
  - 0：加法
  - 1：減法
- 七段顯示器：顯示運算結果

## Current Progress

目前已完成：

- Verilog 主程式設計
- 七段顯示器顯示模組
- Basys 3 腳位設定檔
- GitHub 程式檔案上傳

目前尚未完成：

- Vivado synthesis
- Implementation
- Bitstream generation
- Basys 3 實機燒錄測試
- RISC-V CPU core 整合

## Problem Encountered

在 Vivado 執行 Synthesis 時，遇到軟體異常終止問題，錯誤訊息包含 Spawn failed 與 Abnormal program termination。因此目前尚未成功產生 bitstream，也還沒有完成 Basys 3 實機展示。

後續會嘗試改用較穩定的 Vivado 版本，重新執行 synthesis、implementation 與 bitstream generation，再進一步完成實機測試。

## Future Work

未來改善方向包含：

1. 修正 Vivado synthesis 環境問題。
2. 完成 bitstream 產生。
3. 將設計燒錄到 Basys 3 開發板。
4. 測試七段顯示器是否能正確顯示結果。
5. 整合 RISC-V CPU core，讓 CPU 負責讀取輸入、執行運算與控制輸出。
