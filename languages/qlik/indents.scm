(control_statement
  (control_keyword) @keyword
  (#match? @keyword "^(?i)(sub|for|for each|do|do while|do until|if|switch)$")
) @indent

(control_statement
  (control_keyword) @keyword
  (#match? @keyword "^(?i)(end if|end sub|end switch|endsub|endif|endswitch|next|loop|loop while|loop until)$")
) @outdent

(parenthesized) @indent
