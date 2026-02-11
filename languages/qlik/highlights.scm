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

; ─── Logical / bitwise operators (word-based) ─────────────
((identifier) @keyword.operator
  (#match? @keyword.operator "^(?i)(and|or|not|xor|like|precedes|follows|bitand|bitnot|bitor|bitxor)$"))

; ─── Control flow keywords ────────────────────────────────
((identifier) @keyword.control
  (#match? @keyword.control "^(?i)(if|then|else|elseif|endif|end|sub|endsub|for|to|step|next|do|loop|while|until|each|in|exit|call|switch|case|default|endswitch)$"))

; ─── Script / statement keywords ──────────────────────────
((identifier) @keyword
  (#match? @keyword "^(?i)(load|select|store|into|from|where|resident|inline|autogenerate|as|set|let|binary|directory|disconnect|drop|rename|qualify|unqualify|map|unmap|using|star|comment|tag|untag|trace|sleep|execute|include|buffer|noconcatenate|concatenate|replace|add|derive|declare|measure|dimension|inputfield|loosen|search|flushlog|sql|odbc|oledb|lib|alias|asc|desc|with|on|distinct|crosstable|hierarchy|hierarchybelongsto|intervalmatch|generic|semantic|mapping|bundle|sample|first|merge|unless|when|only|join|keep|left|right|inner|outer|info|section|access|application|group|by|order|table|tables|field|fields|connect|direct|query|null|value)$"))

; ─── Built-in functions: aggregation ──────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(FirstSortedValue|LinEst_SSResid|Chi2Test_Chi2|TTest1w_Lower|TTest1w_StErr|TTest1w_Upper|LinEst_SSReg|MissingCount|NumericCount|TTest1_Lower|TTest1_StErr|TTest1_Upper|TTest1w_Conf|TTestw_Lower|TTestw_StErr|TTestw_Upper|ZTestw_Lower|ZTestw_StErr|ZTestw_Upper|Chi2Test_DF|FractileExc|TTest1_Conf|TTest1w_Dif|TTest1w_Sig|TTest_Lower|TTest_StErr|TTest_Upper|TTestw_Conf|ZTest_Lower|ZTest_StErr|ZTest_Upper|ZTestw_Conf|Chi2Test_p|FirstValue|LinEst_SEB|LinEst_SEM|LinEst_SEY|TTest1_Dif|TTest1_Sig|TTest1w_DF|TTest_Conf|TTestw_Dif|TTestw_Sig|JsonArray|LastValue|LinEst_DF|LinEst_R2|MaxString|MinString|NullCount|TextCount|TTest1_DF|TTest1w_t|TTest_Dif|TTest_Sig|TTestw_DF|ZTest_Dif|ZTest_Sig|Fractile|Kurtosis|LinEst_B|LinEst_F|LinEst_M|TTest1_t|TTest_DF|TTestw_t|ZTestw_z|TTest_t|ZTest_z|Concat|Correl|Median|Count|StDev|StErr|STEYX|Mode|Only|Skew|Xirr|Xnpv|Avg|Irr|Max|Min|Npv|Sum)$"))

; ─── Built-in functions: color ────────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(LightMagenta|ColorMapHue|ColorMapJet|LightGreen|ColorMix1|ColorMix2|LightBlue|LightCyan|LightGray|DarkGray|LightRed|SysColor|Magenta|Yellow|Black|Brown|Color|Green|White|ARGB|Blue|Cyan|HSL|Red|RGB)$"))

; ─── Built-in functions: conditional ──────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(EmptyIsNull|MatchRegExI|MatchRegEx|FastMatch|WildMatch|Coalesce|MixMatch|Class|Match|Pick|Alt|If)$"))

; ─── Built-in functions: counter ──────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(AutoNumberHash128|AutoNumberHash256|AutoNumber|IterNo|RecNo|RowNo)$"))

; ─── Built-in functions: date & time ──────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(ConvertToLocalTime|DayNumberOfQuarter|InLunarWeekToDate|SetDateYearMonth|DayNumberOfYear|InQuarterToDate|DaylightSaving|ElapsedSeconds|InMonthsToDate|LunarWeekStart|FirstWorkDate|InMonthToDate|LunarWeekName|InWeekToDate|InYearToDate|LastWorkDate|LunarWeekEnd|MakeWeekDate|QuarterStart|InDayToTime|InLunarWeek|MonthsStart|NetWorkDays|QuarterName|SetDateYear|MonthsName|MonthStart|QuarterEnd|YearToDate|AddMonths|InQuarter|LocalTime|MonthName|MonthsEnd|WeekStart|Year2Date|YearStart|AddYears|DayStart|InMonths|MakeDate|MakeTime|MonthEnd|TimeZone|WeekName|WeekYear|YearName|DayName|InMonth|WeekDay|WeekEnd|YearEnd|DayEnd|InWeek|InYear|Minute|Second|InDay|Month|Today|Hour|Week|Year|Age|Day|GMT|Now|UTC)$"))

; ─── Built-in functions: exponential & log ────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(Log10|Sqrt|Exp|Log|Pow|Sqr)$"))

; ─── Built-in functions: file ─────────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(QvdNoOfRecords|ConnectString|FileExtension|GetFolderPath|QvdCreateTime|QvdNoOfFields|FileBaseName|QvdFieldName|QvdTableName|Attribute|FileName|FilePath|FileSize|FileTime|FileDir)$"))

; ─── Built-in functions: financial ────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(BlackAndSchole|nPer|Rate|Pmt|FV|PV)$"))

; ─── Built-in functions: geo ──────────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(GeoInvProjectGeometry|GeoGetPolygonCenter|GeoProjectGeometry|GeoGetBoundingBox|GeoReduceGeometry|GeoAggrGeometry|GeoBoundingBox|GeoCountVertex|GeoMakePoint|GeoProject)$"))

; ─── Built-in functions: inter-record ─────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(FieldIndex|FieldValue|FieldValueCount|HCValue|Exists|Lookup|Peek|Previous)$"))

; ─── Built-in functions: logical ──────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(IsRegExI|IsRegEx|IsNull|IsText|IsNum|IsJson|False|True|Null|Pi|e)$"))

; ─── Built-in functions: mapping ──────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(MapSubString|ApplyMap)$"))

; ─── Built-in functions: numeric ──────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(BitCount|Floor|Round|Ceil|Even|fAbs|Fact|fMod|Frac|Sign|Div|Mod|Odd)$"))

; ─── Built-in functions: formatting & interpretation ──────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(Timestamp#|Interval#|Timestamp|Interval|Money#|Date#|Money|Time#|Date|Dual|Num#|Text|Time|Num)$"))

; ─── Built-in functions: probability / statistics ─────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(PoissonFrequency|BinomFrequency|PoissonDensity|GammaDensity|BetaDensity|PoissonDist|ChiDensity|PoissonInv|BinomDist|GammaDist|BetaDist|BinomInv|FDensity|GammaInv|NormDist|TDensity|BetaInv|ChiDist|NormInv|ChiInv|Combin|Permut|FDist|TDist|FInv|Rand|TInv)$"))

; ─── Built-in functions: range ────────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(RangeMissingCount|RangeNumericCount|RangeFractileExc|RangeMaxString|RangeMinString|RangeNullCount|RangeTextCount|RangeFractile|RangeKurtosis|RangeCorrel|RangeCount|RangeStDev|RangeMode|RangeOnly|RangeSkew|RangeXirr|RangeXnpv|RangeAvg|RangeIrr|RangeMax|RangeMin|RangeNpv|RangeSum)$"))

; ─── Built-in functions: string ───────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(ExtractRegExGroupI|ReplaceRegExGroupI|ExtractRegExGroup|ReplaceRegExGroup|IndexRegExGroupI|IndexRegExGroup|LevenshteinDist|SubFieldRegExI|SubStringCount|ApplyCodepage|ExtractRegExI|ReplaceRegExI|SubFieldRegEx|ExtractRegEx|ReplaceRegEx|CountRegExI|IndexRegExI|TextBetween|Capitalize|CountRegEx|IndexRegEx|JsonObject|FindOneOf|JsonSetEx|PurgeChar|Evaluate|KeepChar|SubField|Hash128|Hash160|Hash256|JsonGet|JsonSet|Replace|Repeat|Index|Lower|LTrim|Right|RTrim|Upper|Left|Trim|Chr|Len|Mid|Ord)$"))

; ─── Built-in functions: system ───────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(GetCollationLocale|GetDataModelHash|IsPartialReload|ClientPlatform|ProductVersion|DocumentTitle|EngineVersion|ComputerName|DocumentName|DocumentPath|GetUserAttr|TableNumber|GetSysAttr|NoOfTables|ReloadTime|TableName|Author|OSUser)$"))

; ─── Built-in functions: table ────────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(FieldValueCount|GetObjectField|FieldElemNo|FieldNumber|FieldIndex|FieldValue|NoOfFields|FieldName|HCNoRows|NoOfRows)$"))

; ─── Built-in functions: trigonometric ────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(Acosh|Asinh|Atan2|Atanh|Acos|Asin|Atan|Cosh|Sinh|Tanh|Cos|Sin|Tan)$"))

; ─── Built-in functions: window ───────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(UNBOUNDED|Window|WRank)$"))

; ─── Built-in functions: legacy ───────────────────────────
(function_call
  name: (identifier) @function.builtin
  (#match? @function.builtin "^(?i)(QlikViewVersion|QlikTechBlue|QlikTechGray|NumCount|NumAvg|NumMax|NumMin|NumSum|QVUser)$"))

; ─── Generic function call (user-defined) ─────────────────
(function_call
  name: (identifier) @function)

; ─── Fallback: all other identifiers ──────────────────────
(identifier) @variable
