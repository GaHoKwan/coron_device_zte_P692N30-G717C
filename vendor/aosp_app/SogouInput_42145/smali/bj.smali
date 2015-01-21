.class public final Lbj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lfd;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Vector;

.field private final a:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/Vector;Lfd;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lbj;->a:[B

    .line 42
    iput-object p2, p0, Lbj;->a:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lbj;->a:Ljava/util/Vector;

    .line 44
    iput-object p4, p0, Lbj;->a:Lfd;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Lfd;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbj;->a:Lfd;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbj;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbj;->a:[B

    return-object v0
.end method
