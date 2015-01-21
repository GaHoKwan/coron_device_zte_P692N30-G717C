.class Loi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:J

.field public a:Ljava/lang/String;

.field final synthetic a:Lnr;


# direct methods
.method private constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 2098
    iput-object p1, p0, Loi;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnr;Lns;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2098
    invoke-direct {p0, p1}, Loi;-><init>(Lnr;)V

    return-void
.end method


# virtual methods
.method public a(Loi;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    .line 2103
    iget-wide v2, p0, Loi;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p1, Loi;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2114
    :cond_0
    :goto_0
    return v0

    .line 2106
    :cond_1
    iget-wide v2, p1, Loi;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Loi;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    .line 2107
    goto :goto_0

    .line 2109
    :cond_2
    iget-wide v2, p0, Loi;->a:J

    iget-wide v4, p1, Loi;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move v0, v1

    .line 2110
    goto :goto_0

    .line 2111
    :cond_3
    iget-wide v1, p0, Loi;->a:J

    iget-wide v3, p1, Loi;->a:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 2114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 2098
    check-cast p1, Loi;

    invoke-virtual {p0, p1}, Loi;->a(Loi;)I

    move-result v0

    return v0
.end method
