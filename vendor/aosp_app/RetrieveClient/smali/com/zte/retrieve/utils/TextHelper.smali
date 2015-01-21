.class public Lcom/zte/retrieve/utils/TextHelper;
.super Ljava/lang/Object;
.source "TextHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    .line 99
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 100
    .local v0, EMAIL_FORMAT:Ljava/lang/String;
    const-string v3, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 101
    .local v2, patternEmail:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 103
    .local v1, matcherEmail:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v3, 0x1

    .line 106
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 17
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIMEIValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zte/retrieve/utils/TextHelper;->isZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumOrLetter(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 122
    :cond_1
    const-string v0, "[a-z0-9A-Z_]+"

    .line 123
    .local v0, NUM_OR_LETTER_FORMAT:Ljava/lang/String;
    const-string v4, "[a-z0-9A-Z_]+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 124
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 126
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPhoneNum(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    const-string v0, "^(\\+86)?\\d{11}$"

    .line 82
    .local v0, PHONE_FORMAT:Ljava/lang/String;
    const-string v4, "^(\\+86)?\\d{11}$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 83
    .local v2, patternPhone:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 85
    .local v1, matcherPhone:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidLength(Ljava/lang/String;II)Z
    .locals 2
    .parameter "str"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 65
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isZero(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    .line 37
    const-string v0, "[0]*"

    .line 38
    .local v0, PHONE_FORMAT:Ljava/lang/String;
    const-string v3, "[0]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 39
    .local v2, patternPhone:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 41
    .local v1, matcherPhone:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const/4 v3, 0x1

    .line 44
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
