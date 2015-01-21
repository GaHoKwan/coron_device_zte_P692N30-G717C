.class public Lcom/android/dreams/phototable/SoftLandingInterpolator;
.super Ljava/lang/Object;
.source "SoftLandingInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final bottom:F

.field private final fly:Landroid/view/animation/LinearInterpolator;

.field private final lowerRange:F

.field private final mI:F

.field private final mO:F

.field private final slide:Landroid/view/animation/DecelerateInterpolator;

.field private final top:F

.field private final upperRange:F


# direct methods
.method public constructor <init>(FF)V
    .locals 5
    .parameter "i"
    .parameter "o"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->fly:Landroid/view/animation/LinearInterpolator;

    .line 41
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->slide:Landroid/view/animation/DecelerateInterpolator;

    .line 42
    iput p1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mI:F

    .line 43
    iput p2, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mO:F

    .line 44
    iget v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mI:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mI:F

    sub-float v2, v3, v2

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 45
    .local v0, epsilon:F
    iget v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mI:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->bottom:F

    .line 46
    iget v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mI:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->top:F

    .line 47
    iget v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->top:F

    iput v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->lowerRange:F

    .line 48
    iget v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->bottom:F

    sub-float v1, v3, v1

    iput v1, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->upperRange:F

    .line 49
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .parameter "input"

    .prologue
    const/high16 v7, 0x3f80

    .line 52
    iget-object v4, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->fly:Landroid/view/animation/LinearInterpolator;

    iget v5, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->upperRange:F

    div-float v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v4

    iget v5, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mO:F

    mul-float v1, v4, v5

    .line 53
    .local v1, f:F
    iget-object v4, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->slide:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->bottom:F

    sub-float v5, p1, v5

    iget v6, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->upperRange:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    iget v5, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mO:F

    sub-float v5, v7, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->mO:F

    add-float v2, v4, v5

    .line 56
    .local v2, s:F
    iget v4, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->bottom:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 57
    move v3, v1

    .line 65
    .local v3, value:F
    :goto_0
    return v3

    .line 58
    .end local v3           #value:F
    :cond_0
    iget v4, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->top:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 59
    iget v4, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->bottom:F

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->top:F

    iget v6, p0, Lcom/android/dreams/phototable/SoftLandingInterpolator;->bottom:F

    sub-float/2addr v5, v6

    div-float v0, v4, v5

    .line 60
    .local v0, alpha:F
    sub-float v4, v7, v0

    mul-float/2addr v4, v1

    mul-float v5, v0, v2

    add-float v3, v4, v5

    .line 61
    .restart local v3       #value:F
    goto :goto_0

    .line 62
    .end local v0           #alpha:F
    .end local v3           #value:F
    :cond_1
    move v3, v2

    .restart local v3       #value:F
    goto :goto_0
.end method
