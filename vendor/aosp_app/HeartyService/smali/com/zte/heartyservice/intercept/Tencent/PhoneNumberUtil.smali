.class public final Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# static fields
.field private static final PREFIX_NUMBER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "17909"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "10193"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12583"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12520"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "96688"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValidate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->isNumberValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    .line 93
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static equalsPrex(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, result:Z
    const-string v5, "*"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 40
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 42
    .local v3, prex:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    const/4 v4, 0x1

    .line 48
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #prex:Ljava/lang/String;
    :cond_0
    return v4

    .line 41
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #prex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getIPPhoneNumByCode(I)[Ljava/lang/String;
    .locals 4
    .parameter "networkOperatorCode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 143
    .local v0, ipPhoneNum:[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 157
    const-string v1, "12593"

    aput-object v1, v0, v2

    .line 158
    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 161
    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    const-string v1, "12593"

    aput-object v1, v0, v2

    .line 146
    const-string v1, "17951"

    aput-object v1, v0, v3

    goto :goto_0

    .line 149
    :pswitch_1
    const-string v1, "10193"

    aput-object v1, v0, v2

    .line 150
    const-string v1, "17911"

    aput-object v1, v0, v3

    goto :goto_0

    .line 153
    :pswitch_2
    const-string v1, "17909"

    aput-object v1, v0, v2

    .line 154
    const-string v1, "17901"

    aput-object v1, v0, v3

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 120
    .local v0, len:I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x8

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getSQLEqual(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 129
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, indentitynumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, where:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 130
    .end local v1           #where:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static isNumberValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    .line 104
    const/16 v5, 0xa

    new-array v2, v5, [C

    fill-array-data v2, :array_0

    .line 105
    .local v2, filter:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 106
    .local v1, c:C
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 107
    const/4 v5, 0x0

    .line 110
    .end local v1           #c:C
    :goto_1
    return v5

    .line 105
    .restart local v1       #c:C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v1           #c:C
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 104
    nop

    :array_0
    .array-data 0x2
        0x2ft 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2ct 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x4et 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method public static removePrex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 22
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 23
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 29
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_0
    return-object p0

    .line 22
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #prefix:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static startWithPrex(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, result:Z
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 59
    .local v3, prex:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    const/4 v4, 0x1

    .line 64
    .end local v3           #prex:Ljava/lang/String;
    :cond_0
    return v4

    .line 58
    .restart local v3       #prex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 77
    :cond_0
    return-object p0
.end method
