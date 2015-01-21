.class public Lag;
.super Lal;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Laf;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0}, Ln;->a()La;

    move-result-object v1

    .line 36
    sget-object v2, La;->f:La;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 44
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 47
    const-string v2, "978"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "979"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    :cond_2
    new-instance v0, Laf;

    invoke-direct {v0, v1}, Laf;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
