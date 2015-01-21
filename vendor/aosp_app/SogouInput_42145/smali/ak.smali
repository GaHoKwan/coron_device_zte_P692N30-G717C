.class final Lak;
.super Lal;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Laj;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0}, Ln;->a()La;

    move-result-object v3

    .line 36
    sget-object v1, La;->d:La;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, La;->c:La;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, La;->e:La;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, La;->f:La;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 47
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 49
    const/16 v6, 0x30

    if-lt v5, v6, :cond_0

    const/16 v6, 0x39

    if-gt v5, v6, :cond_0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_2
    sget-object v0, La;->c:La;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-static {v1}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_2
    new-instance v2, Laj;

    invoke-direct {v2, v1, v0}, Laj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 60
    goto :goto_2
.end method
