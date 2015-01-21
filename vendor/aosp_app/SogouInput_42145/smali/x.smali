.class final Lx;
.super Lt;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 90
    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    :goto_1
    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static a(Ln;)Lw;
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 37
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    const-string v1, "BIZCARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 52
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v1, "N:"

    invoke-static {v1, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v3, "X:"

    invoke-static {v3, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v1, v3}, Lx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v3, "T:"

    invoke-static {v3, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 45
    const-string v3, "C:"

    invoke-static {v3, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 46
    const-string v3, "A:"

    invoke-static {v3, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 47
    const-string v3, "B:"

    invoke-static {v3, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 48
    const-string v4, "M:"

    invoke-static {v4, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 49
    const-string v5, "F:"

    invoke-static {v5, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 50
    const-string v8, "E:"

    invoke-static {v8, v0, v10}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 52
    new-instance v0, Lw;

    invoke-static {v1}, Lx;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v5}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lx;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v8, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lw;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v3, Ljava/util/Vector;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {v3, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 76
    if-nez v4, :cond_3

    .line 77
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    .line 81
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 80
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 83
    goto :goto_0
.end method
