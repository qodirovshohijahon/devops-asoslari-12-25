📘 Bash Conditional Statements (Decision Making)
📌 Overview

Bash scripting’da conditionals (shartlar) orqali skriptlar “aqlli” bo‘ladi — ya’ni vaziyatga qarab qaror qabul qiladi.

Bu quyidagilar uchun juda muhim:

DevOps automation

Monitoring scripts

Backup system

Health checks

SRE alerting

🔷 1. Sequential vs Intelligent Scripts
Sequential Script
#!/bin/bash
echo "Today is $(date)"
echo "Current directory: $PWD"
w


👉 Har doim barcha buyruqlar ketma-ket bajariladi
👉 Hech qanday qaror qabul qilinmaydi

Intelligent Script (with conditions)
if [ "$(date +%A)" == "Friday" ]
then
    echo "Running backup..."
else
    echo "Today is not backup day"
fi


👉 Condition asosida qaror qabul qiladi

🔷 2. Condition nima?

Condition — bu true yoki false qiymat qaytaradigan ifoda

Misol
echo $((5 > 2))


Output:

1

echo $((5 < 2))


Output:

0

Bash’da mantiq
Qiymat	Ma’nosi
0	False
1 yoki boshqa	True

❗ Lekin exit status da:

Qiymat	Ma’nosi
0	Success (True)
non-zero	Error (False)
🔷 3. test command

test — condition tekshiruvchi buyruq

Syntax
test condition


yoki

[ condition ]

Logical operators
Operator	Ma’nosi
-eq	equal
-ne	not equal
-gt	greater
-lt	less
-ge	>=
-le	<=
Misollar
test 5 -gt 2 && echo "Yes"

test 5 -eq 5 && echo Yes || echo No

File check
Operator	Ma’nosi
-f	file exists
-d	directory exists
-e	exists
-r	readable
-w	writable
-x	executable
🔷 4. if statement
Syntax
if condition
then
    command
fi

Misol
read -p "Enter password: " pass

if [ "$pass" == "admin" ]
then
    echo "Access granted"
fi

🔷 5. if-else
Syntax
if condition
then
    command
else
    command
fi

Misol
read -p "Enter password: " pass

if [ "$pass" == "admin" ]
then
    echo "Access granted"
else
    echo "Access denied"
fi

🔷 6. Multiple if (not recommended)
if [ "$n" -eq 5 ]
then
    echo "OK"
fi

if [ "$n" -ne 5 ]
then
    echo "Wrong"
fi


👉 Inefficient — ikki marta tekshiradi

To‘g‘ri variant
if [ "$n" -eq 5 ]
then
    echo "OK"
else
    echo "Wrong"
fi

🔷 7. if-elif-else
Syntax
if condition
then
    ...
elif condition
then
    ...
else
    ...
fi

Misol
read -p "Enter number: " n

if [ "$n" -gt 0 ]; then
    echo "Positive"
elif [ "$n" -lt 0 ]; then
    echo "Negative"
elif [ "$n" -eq 0 ]; then
    echo "Zero"
else
    echo "Invalid input"
fi

🔷 8. Nested if
if condition1
then
    if condition2
    then
        command
    else
        command
    fi
fi

Misol
if [ -f /etc/nginx/nginx.conf ]
then
    if systemctl is-active nginx >/dev/null
    then
        echo "Nginx running"
    else
        echo "Nginx stopped"
    fi
else
    echo "Nginx not installed"
fi

🔷 9. AND / OR logic
AND
test 5 -gt 2 && echo "Yes"


👉 True bo‘lsa keyingi command ishlaydi

OR
test 5 -lt 2 || echo "No"


👉 False bo‘lsa keyingi command ishlaydi

Combined
test 5 -eq 5 && echo Yes || echo No

🔷 10. Real DevOps Examples
File check
FILE="/var/log/syslog"

if [ -f "$FILE" ]
then
    echo "File exists"
else
    echo "File not found"
    exit 1
fi

Log monitoring
errors=$(grep -c "ERROR" /var/log/app.log)

if [ "$errors" -gt 0 ]
then
    echo "Errors found"
else
    echo "OK"
fi

Disk usage monitoring
usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -gt 80 ]
then
    echo "Disk almost full"
else
    echo "Disk OK"
fi

Service check
if systemctl is-active nginx >/dev/null
then
    echo "Service running"
else
    echo "Service stopped"
fi

🔷 11. Best Practices
✅ Always quote variables
[ "$var" == "value" ]

✅ Use numeric operators
[ "$n" -eq 5 ]

❌ Wrong
[ $n == 5 ]

✅ Use exit status
if systemctl is-active nginx >/dev/null
then
    echo "Running"
fi

❗ Syntax rules
if [ "$a" == "b" ]   # correct

if["$a"=="b"]        # wrong

🔷 12. Summary
Construct	Purpose
if	basic condition
if-else	branching
if-elif	multiple conditions
nested if	complex logic
test	condition checking
🚀 13. Amaliy Vazifalar (Practice Tasks)
🟢 1. Password Checker

Userdan password olib tekshir:

admin123

🟢 2. Number Comparison

Userdan son olib:

10 dan katta

10 ga teng

10 dan kichik

🟢 3. File Checker

Userdan path olib tekshir:

mavjud

mavjud emas

🟢 4. Directory Checker

/var/log directory mavjudligini tekshir

🟢 5. Even / Odd

Sonni tekshir:

juft

toq

🟡 6. Disk Usage Alert

Agar disk > 70% bo‘lsa alert chiqarsin

🟡 7. Service Checker

nginx service:

running

stopped

🟡 8. Login Attempt

3 marta noto‘g‘ri password kiritsa:

exit 1

🟡 9. Log Analyzer

/var/log/syslog da "error" lar sonini chiqar

🔴 10. Production SRE Script

Script yoz:

Agar /var/log/app.log mavjud bo‘lmasa → exit

Agar ERROR > 0 → alert

Aks holda → OK

🎯 Next Steps

Keyingi mavzular:

[[ ]] vs [ ]

case statement

loops (for, while)

real DevOps automation scripts