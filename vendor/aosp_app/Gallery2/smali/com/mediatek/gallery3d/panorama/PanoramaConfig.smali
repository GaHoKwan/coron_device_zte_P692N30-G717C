.class public Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
.super Ljava/lang/Object;
.source "PanoramaConfig.java"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f

.field private static final RADIAN_TO_DEGREE:F = 57.29578f

.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaConfig"


# instance fields
.field public mCameraDistance:F

.field public mCanvasHeight:I

.field public mCanvasScale:F

.field public mCanvasWidth:I

.field public mDegreeRange:I

.field public mFovx:F

.field public mFovy:F

.field public mFrameDegreeGap:F

.field public mFrameTimeGap:I

.field public mFrameTotalCount:I

.field public mHalfHeightDegree:F

.field public mNewHeight:I

.field public mNewWidth:I

.field public mOriginHeight:I

.field public mOriginWidth:I

.field public mRotateDegree:F

.field public mWidthDegree:F


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 33
    const/high16 v5, 0x4000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIIIF)V

    .line 35
    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 9
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "canvasScale"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    .line 39
    iput p2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    .line 40
    iput p5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasScale:F

    .line 41
    int-to-float v3, p3

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    .line 42
    int-to-float v3, p4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    .line 44
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v3

    const/16 v4, 0x800

    if-le v3, v4, :cond_0

    .line 45
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 46
    .local v1, ratio:F
    const/16 v3, 0x800

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    .line 47
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    .line 48
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasScale:F

    .line 55
    .end local v1           #ratio:F
    :cond_0
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getWidthPercent(II)F

    move-result v2

    .line 56
    .local v2, widthPercent:F
    const/high16 v3, 0x4334

    div-float/2addr v3, v2

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mWidthDegree:F

    .line 58
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mWidthDegree:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 59
    .local v0, heightDegreeTemp:F
    const/high16 v3, 0x4248

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 60
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x43b4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4248

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    .line 64
    :goto_0
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewHeight:I

    .line 65
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4334

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mHalfHeightDegree:F

    .line 67
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mHalfHeightDegree:F

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFovy:F

    .line 68
    const-wide/high16 v3, 0x4000

    iget v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    iget v7, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFovy:F

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    const v8, 0x3c8efa35

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x404ca5dc20000000L

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFovx:F

    .line 71
    const-wide/high16 v3, 0x4010

    iget v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mHalfHeightDegree:F

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mHalfHeightDegree:F

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCameraDistance:F

    .line 74
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCameraDistance:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x42652ee1

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mRotateDegree:F

    .line 75
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x43b4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mRotateDegree:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mDegreeRange:I

    .line 77
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mDegreeRange:I

    div-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    .line 78
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    const/16 v4, 0x2d

    if-ge v3, v4, :cond_2

    const/16 v3, 0x2d

    :goto_1
    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    .line 79
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mDegreeRange:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameDegreeGap:F

    .line 80
    const/16 v3, 0x32

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTimeGap:I

    .line 81
    invoke-direct {p0}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->print()V

    .line 82
    return-void

    .line 62
    :cond_1
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x43b4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mWidthDegree:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    goto/16 :goto_0

    .line 78
    :cond_2
    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    goto :goto_1
.end method

.method private print()V
    .locals 3

    .prologue
    .line 85
    const-string v0, "Gallery2/PanoramaConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canvasW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canvasH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heightD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mHalfHeightDegree:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", widthD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mWidthDegree:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fovy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFovy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fovx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFovx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotateD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mRotateDegree:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rangeD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mDegreeRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraDis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCameraDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeGap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTimeGap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", degreeGap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameDegreeGap:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
