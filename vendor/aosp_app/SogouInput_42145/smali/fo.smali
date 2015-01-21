.class Lfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lfo;->a:F

    .line 573
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 575
    move-object v0, p2

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()I

    move-result v1

    move-object v0, p1

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 576
    check-cast p2, Lfm;

    invoke-virtual {p2}, Lfm;->a()I

    move-result v0

    check-cast p1, Lfm;

    invoke-virtual {p1}, Lfm;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 580
    :goto_0
    return v0

    .line 578
    :cond_0
    check-cast p2, Lfm;

    invoke-virtual {p2}, Lfm;->c()F

    move-result v0

    iget v1, p0, Lfo;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 579
    check-cast p1, Lfm;

    invoke-virtual {p1}, Lfm;->c()F

    move-result v1

    iget v2, p0, Lfo;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 580
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
