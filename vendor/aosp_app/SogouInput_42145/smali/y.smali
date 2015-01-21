.class final Ly;
.super Lt;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Lau;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    const-string v2, "MEBKM:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    const-string v2, "TITLE:"

    invoke-static {v2, v1, v4}, Ly;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 35
    const-string v3, "URL:"

    invoke-static {v3, v1, v4}, Ly;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 39
    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 40
    invoke-static {v1}, Lav;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    new-instance v0, Lau;

    invoke-direct {v0, v1, v2}, Lau;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
