.class final Lu;
.super Lal;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Lw;
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x0

    const/16 v9, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 35
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    move-object v0, v7

    .line 50
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-string v1, "NAME1:"

    invoke-static {v1, v0, v9, v8}, Lu;->a(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "NAME2:"

    invoke-static {v2, v0, v9, v8}, Lu;->a(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "TEL"

    invoke-static {v3, v5, v0, v8}, Lu;->a(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string v4, "MAIL"

    invoke-static {v4, v5, v0, v8}, Lu;->a(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v5, "MEMORY:"

    invoke-static {v5, v0, v9, v10}, Lu;->a(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    .line 48
    const-string v6, "ADD:"

    invoke-static {v6, v0, v9, v8}, Lu;->a(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    move-object v6, v7

    .line 50
    :goto_1
    new-instance v0, Lw;

    invoke-static {v1}, Lu;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lw;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    new-array v6, v8, [Ljava/lang/String;

    aput-object v0, v6, v10

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    .line 57
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-gt v2, p1, :cond_0

    .line 58
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, p2, v4, p3}, Lu;->a(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 59
    if-nez v3, :cond_1

    .line 67
    :cond_0
    if-nez v0, :cond_3

    move-object v0, v1

    .line 70
    :goto_1
    return-object v0

    .line 62
    :cond_1
    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    .line 65
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v0}, Lu;->a(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
