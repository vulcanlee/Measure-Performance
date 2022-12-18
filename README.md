# Measure-Performance

## 啟用可執行 PowerShell 政策

第一次使用的時候， xxx.ps1 檔案會遇到底下錯誤

```
.\Samples1.ps1 : 因為這個系統上已停用指令碼執行，所以無法載入 Samples1
.ps1 檔案。如需詳細資訊，請參閱 about_Execution_Policies，網址為 https:/go.microsoft.com/fwlink/?LinkID=135170。
位於 線路:1 字元:1
+ .\Samples1.ps1
+ ~~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) [], PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
```

開啟這個 [https:/go.microsoft.com/fwlink/?LinkID=135170](https:/go.microsoft.com/fwlink/?LinkID=135170) 連結，就會看到 about_Execution_Policies ，簡短描述：描述 PowerShell 執行原則，並說明如何管理這些原則。這個網頁內容，請在 PowerShell 視窗內，不過，該視窗必須使用管理人員身分來開啟，接著，下達底下指令

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

接著輸入 a 並且按下 Enter ，便可以完成設定

```
Windows PowerShell
Copyright (C) Microsoft Corporation. 著作權所有，並保留一切權利。

請嘗試新的跨平台 PowerShell https://aka.ms/pscore6

PS C:\Windows\system32> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

執行原則變更
執行原則有助於防範您不信任的指令碼。如果變更執行原則，可能會使您接觸到 about_Execution_Policies 說明主題 (網址為
https:/go.microsoft.com/fwlink/?LinkID=135170) 中所述的安全性風險。您要變更執行原則嗎?
[Y] 是(Y)  [A] 全部皆是(A)  [N] 否(N)  [L] 全部皆否(L)  [S] 暫停(S)  [?] 說明 (預設值為 "N"): A
PS C:\Windows\system32>
```

請重新執行 .\Samples1.ps1 指令


