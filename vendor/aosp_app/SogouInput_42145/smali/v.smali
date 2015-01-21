.class final Lv;
.super Lt;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Lw;
    .locals 14
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 39
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v9

    .line 43
    :cond_1
    const-string v1, "N:"

    invoke-static {v1, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 47
    aget-object v1, v1, v6

    invoke-static {v1}, Lv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "SOUND:"

    invoke-static {v2, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "TEL:"

    invoke-static {v3, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v4, "EMAIL:"

    invoke-static {v4, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 51
    const-string v5, "NOTE:"

    invoke-static {v5, v0, v6}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 52
    const-string v6, "ADR:"

    invoke-static {v6, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 53
    const-string v7, "BDAY:"

    invoke-static {v7, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 54
    if-eqz v8, :cond_2

    const/16 v7, 0x8

    invoke-static {v8, v7}, Lv;->a(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v8, v9

    .line 58
    :cond_2
    const-string v7, "URL:"

    invoke-static {v7, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 62
    const-string v7, "ORG:"

    invoke-static {v7, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 63
    const-string v11, "DIV:"

    invoke-static {v11, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 64
    const-string v12, "TIL:"

    invoke-static {v12, v0, v13}, Lv;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 66
    new-instance v0, Lw;

    invoke-static {v1}, Lv;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v12}, Lw;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 81
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    if-ltz v0, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    :cond_0
    return-object p0
.end method
