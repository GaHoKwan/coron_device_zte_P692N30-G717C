.class public final Lfm;
.super Lp;
.source "SourceFile"


# instance fields
.field private final a:F

.field private a:I


# direct methods
.method constructor <init>(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lp;-><init>(FF)V

    .line 35
    iput p3, p0, Lfm;->a:F

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lfm;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lfm;->a:I

    return v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lfm;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfm;->a:I

    .line 49
    return-void
.end method

.method a(FFF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x3f80

    .line 56
    invoke-virtual {p0}, Lfm;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lfm;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    .line 57
    iget v1, p0, Lfm;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 58
    cmpg-float v2, v1, v3

    if-lez v2, :cond_0

    iget v2, p0, Lfm;->a:F

    div-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 60
    :cond_1
    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lfm;->a:F

    return v0
.end method
