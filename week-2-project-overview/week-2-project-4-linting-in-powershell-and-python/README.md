#

```bash
# may need to restart vscode following installation
pip3 install pylint
```

```bash
pylint ./s3bucket.py

************* Module s3bucket
s3bucket.py:26:0: C0304: Final newline missing (missing-final-newline)
s3bucket.py:1:0: C0114: Missing module docstring (missing-module-docstring)
s3bucket.py:8:7: W0703: Catching too general exception Exception (broad-except)
s3bucket.py:5:4: C0116: Missing function or method docstring (missing-function-docstring)
s3bucket.py:8:0: C0103: Variable name "e" doesn't conform to snake_case naming style (invalid-name)
s3bucket.py:11:0: C0116: Missing function or method docstring (missing-function-docstring)
s3bucket.py:11:20: W0621: Redefining name 'bucket_name' from outer scope (line 23) (redefined-outer-name)
s3bucket.py:2:0: C0411: standard import "import sys" should be placed before "import boto3" (wrong-import-order)

-----------------------------------
Your code has been rated at 4.29/10
```

```bash
# following minor update to s3bucket.py
pylint ./s3bucket.py

************* Module s3bucket
s3bucket.py:26:0: C0304: Final newline missing (missing-final-newline)
s3bucket.py:1:0: C0114: Missing module docstring (missing-module-docstring)
s3bucket.py:8:7: W0703: Catching too general exception Exception (broad-except)
s3bucket.py:5:4: C0116: Missing function or method docstring (missing-function-docstring)
s3bucket.py:8:0: C0103: Variable name "e" doesn't conform to snake_case naming style (invalid-name)
s3bucket.py:11:0: C0116: Missing function or method docstring (missing-function-docstring)
s3bucket.py:11:20: W0621: Redefining name 'bucket_name' from outer scope (line 23) (redefined-outer-name)

------------------------------------------------------------------
Your code has been rated at 5.00/10 (previous run: 4.29/10, +0.71)
```

```powershell
Invoke-ScriptAnalyzer -Path .


RuleName                            Severity     ScriptName Line  Message
--------                            --------     ---------- ----  -------
PSAvoidTrailingWhitespace           Information  new-resour 18    Line has trailing whitespace
                                                 cegroup.ps
                                                 1
PSUseShouldProcessForStateChangingF Warning      new-resour 1     Function 'New-ResourceGroup' has verb that could change
unctions                                         cegroup.ps       system state. Therefore, the function has to support
                                                 1                'ShouldProcess'.

Invoke-ScriptAnalyzer -Path .


RuleName                            Severity     ScriptName Line  Message
--------                            --------     ---------- ----  -------
PSAvoidTrailingWhitespace           Information  new-resour 11    Line has trailing whitespace
                                                 cegroup.ps
                                                 1
PSAvoidTrailingWhitespace           Information  new-resour 18    Line has trailing whitespace
                                                 cegroup.ps
                                                 1
PSUseShouldProcessForStateChangingF Warning      new-resour 1     Function 'New-ResourceGroup' has verb that could change
unctions                                         cegroup.ps       system state. Therefore, the function has to support
                                                 1                'ShouldProcess'.

Invoke-ScriptAnalyzer -Path .


RuleName                            Severity     ScriptName Line  Message
--------                            --------     ---------- ----  -------
PSUseShouldProcessForStateChangingF Warning      new-resour 1     Function 'New-ResourceGroup' has verb that could change
unctions                                         cegroup.ps       system state. Therefore, the function has to support
                                                 1                'ShouldProcess'.

Invoke-ScriptAnalyzer -Path .


RuleName                            Severity     ScriptName Line  Message
--------                            --------     ---------- ----  -------
PSShouldProcess                     Warning      new-resour 17    'New-ResourceGroup' calls ShouldProcess/ShouldContinue but
                                                 cegroup.ps       does not have the ShouldProcess attribute.
                                                 1
PSUseShouldProcessForStateChangingF Warning      new-resour 1     Function 'New-ResourceGroup' has verb that could change
unctions                                         cegroup.ps       system state. Therefore, the function has to support
                                                 1                'ShouldProcess'.


Invoke-ScriptAnalyzer -Path .

```
