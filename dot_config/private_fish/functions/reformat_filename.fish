function reformat_filename
    # Get the input file name
    set input_file $argv[1]
    
    # Remove special characters using sed
    set cleaned_name (echo $input_file | sed -e 's/[^[:alnum:][:space:].-]//g')
    
    # Replace spaces with dots using tr
    set dotted_name (echo $cleaned_name | tr ' ' '.')
    
    # Convert to lowercase using tr
    set lowercase_name (echo $dotted_name | tr '[:upper:]' '[:lower:]')
    
    # Replace ".-." and "._." with "." using sed
    
    set output_file (echo $lowercase_name | sed -e 's/\.\./\./g')
    # Print the reformatted file name
    echo $output_file
end
