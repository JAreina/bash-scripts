#! /bin/bash

#autor: yo


variable="soy global"
echo

function bash
{
local variable="soy una local"
echo $variable
}
echo $variable
bash

echo $variable
