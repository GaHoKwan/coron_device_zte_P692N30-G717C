.class public Lavu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lavs;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lavs;->b()Lavs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lavs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lavs;-><init>(Lavt;)V

    invoke-static {v0}, Lavs;->a(Lavs;)Lavs;

    .line 50
    :cond_0
    invoke-static {}, Lavs;->b()Lavs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lavs;->a(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lavs;->b()Lavs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lavs;->b(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lavs;->b()Lavs;

    move-result-object v0

    return-object v0
.end method
