.class final Lqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqu;Lqu;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 31
    iget-wide v0, p1, Lqu;->a:D

    .line 32
    iget-wide v2, p2, Lqu;->a:D

    .line 33
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 34
    const/4 v0, -0x1

    .line 38
    :goto_0
    return v0

    .line 35
    :cond_0
    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p1, Lqu;

    check-cast p2, Lqu;

    invoke-virtual {p0, p1, p2}, Lqs;->a(Lqu;Lqu;)I

    move-result v0

    return v0
.end method
