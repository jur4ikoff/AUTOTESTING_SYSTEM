#!/bin/bash

path_to_script=$(dirname "$(readlink -f "$0")")
echo "$path_to_script"
echo 
directories=$(find "$path_to_script/iu7-cprog-labs-2024-popoviurii" -mindepth 1 -maxdepth 1 -type d)
for dir in $directories
do
    # echo $dir
    if [[ $dir == *lab_* ]]; then
        echo "$dir/func_tests/scripts"
        mkdir "$dir/func_tests/scripts/"
        cp -f "$path_to_script/scripts/comparator.sh" "$dir/func_tests/scripts/comparator.sh"
        cp -f "$path_to_script/scripts/func_tests.sh" "$dir/func_tests/scripts/func_tests.sh"
        cp -f "$path_to_script/scripts/neg_case.sh" "$dir/func_tests/scripts/neg_case.sh"
        cp -f "$path_to_script/scripts/pos_case.sh" "$dir/func_tests/scripts/pos_case.sh"
        cp -f "$path_to_script/build_coverage.sh" "$dir/build_coverage.sh"
        cp -f "$path_to_script/build_debug_asan.sh" "$dir/build_debug_asan.sh"
        cp -f "$path_to_script/build_debug_msan.sh" "$dir/build_debug_msan.sh"
        cp -f "$path_to_script/build_debug_ubsan.sh" "$dir/build_debug_ubsan.sh"
        cp -f "$path_to_script/build_debug.sh" "$dir/build_debug.sh"
        cp -f "$path_to_script/build_release.sh" "$dir/build_release.sh"
        cp -f "$path_to_script/check_sanityzer.sh" "$dir/check_sanityzer.sh"
        cp -f "$path_to_script/clean.sh" "$dir/clean.sh"
        cp -f "$path_to_script/collect_coverage.sh" "$dir/collect_coverage.sh"
        # echo "$dir"
    fi
done
