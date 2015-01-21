.class final Lam;
.super Lal;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Lan;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v4

    .line 46
    if-nez v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :cond_1
    const-string v0, "sms:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SMS:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mms:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MMS:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :cond_2
    invoke-static {v4}, Lam;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 60
    const-string v0, "subject"

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    const-string v1, "body"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v0

    move v0, v2

    .line 66
    :goto_1
    const/16 v5, 0x3f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 69
    if-ltz v5, :cond_3

    if-nez v0, :cond_4

    .line 70
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_2
    const/4 v4, -0x1

    .line 77
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v2}, Ljava/util/Vector;-><init>(I)V

    .line 78
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v2}, Ljava/util/Vector;-><init>(I)V

    move v2, v4

    .line 79
    :goto_3
    const/16 v4, 0x2c

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v2, :cond_5

    .line 80
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v5, v6, v2}, Lam;->a(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    move v2, v4

    .line 83
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lam;->a(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lan;

    invoke-static {v5}, Lam;->a(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lam;->a(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3, v1}, Lan;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    move-object v3, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 91
    if-gez v1, :cond_0

    .line 92
    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "via="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method
