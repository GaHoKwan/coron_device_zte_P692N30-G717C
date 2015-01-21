.class final Lac;
.super Lt;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lac;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x40t 0x0t
        0x2et 0x0t
        0x21t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3ft 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
    .end array-data
.end method

.method public static a(Ln;)Laa;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    const-string v2, "MATMSG:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    const-string v2, "TO:"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lac;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 42
    aget-object v2, v2, v4

    .line 43
    invoke-static {v2}, Lac;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const-string v0, "SUB:"

    invoke-static {v0, v1, v4}, Lac;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string v0, "BODY:"

    invoke-static {v0, v1, v4}, Lac;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v0, Laa;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Laa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(C)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    move v0, v1

    :goto_0
    sget-object v2, Lac;->a:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 80
    sget-object v2, Lac;->a:[C

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_1

    .line 81
    const/4 v1, 0x1

    .line 84
    :cond_0
    return v1

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    .line 62
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 64
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7a

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x30

    if-lt v3, v4, :cond_4

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_4
    invoke-static {v3}, Lac;->a(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    :cond_5
    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 69
    if-nez v2, :cond_0

    .line 72
    const/4 v2, 0x1

    .line 62
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    .line 75
    goto :goto_0
.end method
