.class public Ltc;
.super Lta;
.source "SourceFile"

# interfaces
.implements Lazu;


# instance fields
.field a:Lazp;


# direct methods
.method constructor <init>(Lsy;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lta;-><init>(Lsy;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ltd;

    invoke-direct {v0, p0, p0}, Ltd;-><init>(Ltc;Lazs;)V

    iput-object v0, p0, Ltc;->a:Lazp;

    .line 130
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Ltc;->a:Lazp;

    invoke-interface {v0, p1}, Lazp;->a(F)V

    .line 319
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Ltc;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
