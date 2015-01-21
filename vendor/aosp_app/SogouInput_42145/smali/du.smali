.class abstract Ldu;
.super Ldx;
.source "SourceFile"


# direct methods
.method constructor <init>(Lbd;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ldx;-><init>(Lbd;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Ldu;->a:Lbd;

    iget v0, v0, Lbd;->a:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    .line 46
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ldu;->b(Ljava/lang/StringBuffer;I)V

    .line 52
    const/16 v1, 0x2d

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v2}, Ldu;->b(Ljava/lang/StringBuffer;II)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
