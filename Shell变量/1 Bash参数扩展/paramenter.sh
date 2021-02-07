#!/bin/bash
# 参数是一个存储数值的实体，并由名称、数字或特定符号所引用
# 被名称引用的参数称作变量.
# 被数字引用的参数称作位置参数
# 被特定符号引用的参数具有特殊的含义和用途，被作为Bash的特殊内部变量引用

# 基本的参数扩展:
# $PARAMETER 或 ${PARAMETER} 对于访问$9之后的位置参数必须使用{}. 如${10}
WORD=car
echo ${WORD}

# 间接参数扩展
# ${!PARAMETER}
TMP="It's indirect"
PARAMETER=TMP
echo ${PARAMETER}
echo ${!PARAMETER}

# 大小写修改(Bash 4.0)
<<COMMENT
	${PARAMETER^} 操作符“^”将参数值的第一个字符改为大写
	${PARAMETER^^} 所有字符都转换为大写
	${PARAMETER,} 操作符“^”将参数值的第一个字符改为小写
	${PARAMETER,,} 所有字符都转换为小写
	${PARAMETER~}
	${PARAMETER~~}
	
	将当前目录下的所有后缀为txt的文件名转换为小写:
	for file in *.txt; do
	mv "${file}" "${file,,}"
	done
COMMENT

# 变量名扩展
# ${!PREFIX*} ${!PREFIX@}
# 这种参数扩展将列出以字符串PREFIX开头的所有变量名

# 字符串移除
:<<!
	${PARAMER#PATTERN} 移除从参数值的开头匹配指定模式的最短字符串
	${PARAMER##PATTERN} 移除从参数值的开头匹配指定模式的最长字符串
	${PARAMER%PATTERN} 移除从参数值的末尾匹配指定模式的最短字符串
	${PARAMER%%PATTERN} 移除从参数值的末尾匹配指定模式的最长字符串
	这种参数扩展最常用的用途是提取文件名的一部分
!
FILENAME=linux_bash.txt
echo ${FILENAME%.*} # 移除文件名的后缀
echo ${FILENAME##*.} # 移除文件名，保留后缀
FILENAME=/home/yang/linux_bash.txt
echo ${FILENAME%/*} # 保留目录名
echo ${FILENAME##*/} # 保留文件名

# 字符串搜索与替换
:<<!
	${PARAMETER/PATTERN/STRING}
	${PARAMETER//PATTERN/STRING}
	${PARAMETER/PATTERN}
	${PARAMETER//PATTERN}
	这种参数扩展可以替换参数值中匹配指定模式的子字符串。操作符"/"表示只替换一
	个匹配的字符串，而操作符"//"表示替换所有匹配的字符串。如果没有指定替换字符串
	STRING， 那么匹配的内容将被替换为空字符串，即被删除。
!
MYSTRING="This is uesd for replacing string or removing string"
echo ${MYSTRING}
echo ${MYSTRING/string/characters}
echo ${MYSTRING//string/characters}
echo ${MYSTRING/string}
echo ${MYSTRING//string}
echo ${MYSTRING//string/ }

# 求字符串长度 ${#PARAMETER}
MYSTRING="Hello World"
echo ${#MYSTRING}

# 子字符串扩展 ${PARAMETER:OFFSET} ${PARAMETER:OFFSET:LENGTH}

