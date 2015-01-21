.class public final Lc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lb;

.field private a:Lbe;


# direct methods
.method public constructor <init>(Lb;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lc;->a:Lb;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lc;->a:Lbe;

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc;->a:Lb;

    invoke-virtual {v0}, Lb;->a()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->a()I

    move-result v0

    return v0
.end method

.method public a(ILbd;)Lbd;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lc;->a:Lb;

    invoke-virtual {v0, p1, p2}, Lb;->a(ILbd;)Lbd;

    move-result-object v0

    return-object v0
.end method

.method public a()Lbe;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc;->a:Lbe;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lc;->a:Lb;

    invoke-virtual {v0}, Lb;->a()Lbe;

    move-result-object v0

    iput-object v0, p0, Lc;->a:Lbe;

    .line 86
    :cond_0
    iget-object v0, p0, Lc;->a:Lbe;

    return-object v0
.end method

.method public a()Lc;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lc;->a:Lb;

    invoke-virtual {v0}, Lb;->a()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->a()Lh;

    move-result-object v0

    .line 125
    new-instance v1, Lc;

    iget-object v2, p0, Lc;->a:Lb;

    invoke-virtual {v2, v0}, Lb;->a(Lh;)Lb;

    move-result-object v0

    invoke-direct {v1, v0}, Lc;-><init>(Lb;)V

    return-object v1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lc;->a:Lb;

    invoke-virtual {v0}, Lb;->a()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->a()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc;->a:Lb;

    invoke-virtual {v0}, Lb;->a()Lh;

    move-result-object v0

    invoke-virtual {v0}, Lh;->b()I

    move-result v0

    return v0
.end method
