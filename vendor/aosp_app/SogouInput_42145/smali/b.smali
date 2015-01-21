.class public abstract Lb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lh;


# direct methods
.method protected constructor <init>(Lh;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lb;->a:Lh;

    .line 39
    return-void
.end method


# virtual methods
.method public abstract a(Lh;)Lb;
.end method

.method public abstract a(ILbd;)Lbd;
.end method

.method public abstract a()Lbe;
.end method

.method public a()Lh;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb;->a:Lh;

    return-object v0
.end method
