; ─── Comments ─────────────────────────────────────────────
(line_comment) @comment
(block_comment) @comment
(rem_comment) @comment

; ─── Strings ──────────────────────────────────────────────
(single_quoted_string) @string
(double_quoted_string) @string
(bracket_field) @string.special

; ─── Numbers ──────────────────────────────────────────────
(integer) @number
(float) @number

; ─── Macros ───────────────────────────────────────────────
(macro) @variable.special

; ─── Operators (symbols) ─────────────────────────────────
(comparison_operator) @operator
(arithmetic_operator) @operator

; ─── Operators (word-based: AND, OR, NOT, XOR, LIKE ...) ──
(logical_operator) @keyword.operator

; ─── Keywords (SET, LET, LOAD, IF, FOR, SUB, etc.) ───────
(keyword) @keyword

; ─── Function calls ───────────────────────────────────────
(function_call
  name: (identifier) @function)

; ─── Identifiers (fallback) ──────────────────────────────
(identifier) @variable
