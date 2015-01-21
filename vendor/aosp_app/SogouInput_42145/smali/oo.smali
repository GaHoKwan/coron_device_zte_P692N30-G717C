.class public Loo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public a:J

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Loo;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    .line 13
    iget-wide v2, p0, Loo;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p1, Loo;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 16
    :cond_1
    iget-wide v2, p1, Loo;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Loo;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    .line 17
    goto :goto_0

    .line 19
    :cond_2
    iget-wide v2, p0, Loo;->a:J

    iget-wide v4, p1, Loo;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_3
    iget-wide v1, p0, Loo;->a:J

    iget-wide v3, p1, Loo;->a:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 24
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 4
    check-cast p1, Loo;

    invoke-virtual {p0, p1}, Loo;->a(Loo;)I

    move-result v0

    return v0
.end method
