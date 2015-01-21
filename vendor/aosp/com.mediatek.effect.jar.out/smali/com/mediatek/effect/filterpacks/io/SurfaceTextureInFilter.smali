.class public Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureInFilter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final mAngleIndex:[[I

.field private static mCount:[I

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCompleted:Z

.field private mFps:F

.field private mFrameCount:I

.field private mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGLMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mGotSize:Z

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mIgnoreMainFrameStreem:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "ignoreframe"
    .end annotation
.end field

.field private mInputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inheight"
    .end annotation
.end field

.field private mInputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inwidth"
    .end annotation
.end field

.field private mIsTruncate:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "truncate"
    .end annotation
.end field

.field private mLastFrameCount:I

.field private mLastTime:J

.field private mLogVerbose:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "effectplayer"
    .end annotation
.end field

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPeriod:J

.field private mProcessMaxFrameCount:I

.field private mStartTimestampNs:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v3, 0x4

    .line 64
    new-array v0, v4, [I

    aput v2, v0, v2

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCount:[I

    .line 129
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_0:[F

    .line 135
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_90:[F

    .line 141
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_180:[F

    .line 147
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_270:[F

    .line 154
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    return-void

    .line 129
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 135
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 141
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 147
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 154
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "name"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 182
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWaitForNewFrame:Z

    .line 81
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    .line 94
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputWidth:I

    .line 97
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputHeight:I

    .line 100
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mIsTruncate:Z

    .line 103
    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mIgnoreMainFrameStreem:Z

    .line 110
    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 117
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameShader:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->TAG:Ljava/lang/String;

    .line 169
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mNewFrameAvailable:Z

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mProcessMaxFrameCount:I

    .line 172
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    .line 173
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastFrameCount:I

    .line 174
    iput-wide v5, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastTime:J

    .line 175
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mPeriod:J

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFps:F

    .line 177
    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    .line 179
    iput-wide v5, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mStartTimestampNs:J

    .line 183
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    .line 184
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 186
    return-void
.end method

.method private createFormats()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 204
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWidth:I

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 206
    return-void
.end method

.method private setSourceRect([FI[F)V
    .locals 11
    .parameter "sourceCoords"
    .parameter "angleIndex"
    .parameter "sourceCoords_out"

    .prologue
    .line 209
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputWidth:I

    int-to-float v3, v8

    .line 210
    .local v3, localInputWidth:F
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputHeight:I

    int-to-float v2, v8

    .line 212
    .local v2, localInputHeight:F
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_1

    .line 213
    :cond_0
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputHeight:I

    int-to-float v3, v8

    .line 214
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputWidth:I

    int-to-float v2, v8

    .line 217
    :cond_1
    iget-boolean v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mIsTruncate:Z

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputWidth:I

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mInputHeight:I

    if-eqz v8, :cond_6

    .line 218
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mHeight:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 219
    .local v4, outputAspectRatio:F
    div-float v1, v3, v2

    .line 220
    .local v1, inputAspectRatio:F
    const/4 v6, 0x0

    .line 221
    .local v6, xOffset:F
    const/4 v7, 0x0

    .line 223
    .local v7, yOffset:F
    cmpg-float v8, v4, v1

    if-gtz v8, :cond_5

    .line 224
    mul-float v8, v2, v4

    sub-float v8, v3, v8

    const/high16 v9, 0x4000

    div-float v6, v8, v9

    .line 225
    div-float v8, v6, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 231
    :goto_0
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_3

    .line 232
    :cond_2
    move v5, v6

    .line 233
    .local v5, tmp:F
    move v6, v7

    .line 234
    move v7, v5

    .line 238
    .end local v5           #tmp:F
    :cond_3
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x0

    aget v9, v9, v10

    aget v9, p1, v9

    sub-float/2addr v9, v6

    aput v9, p3, v8

    .line 239
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    sub-float/2addr v9, v7

    aput v9, p3, v8

    .line 240
    const/4 v8, 0x2

    const/4 v9, 0x2

    aget v9, p1, v9

    aput v9, p3, v8

    .line 241
    const/4 v8, 0x3

    const/4 v9, 0x3

    aget v9, p1, v9

    aput v9, p3, v8

    .line 244
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x1

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x1

    aget v9, v9, v10

    aget v9, p1, v9

    add-float/2addr v9, v6

    aput v9, p3, v8

    .line 245
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    sub-float/2addr v9, v7

    aput v9, p3, v8

    .line 246
    const/4 v8, 0x6

    const/4 v9, 0x6

    aget v9, p1, v9

    aput v9, p3, v8

    .line 247
    const/4 v8, 0x7

    const/4 v9, 0x7

    aget v9, p1, v9

    aput v9, p3, v8

    .line 250
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x2

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x2

    aget v9, v9, v10

    aget v9, p1, v9

    sub-float/2addr v9, v6

    aput v9, p3, v8

    .line 251
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    add-float/2addr v9, v7

    aput v9, p3, v8

    .line 252
    const/16 v8, 0xa

    const/16 v9, 0xa

    aget v9, p1, v9

    aput v9, p3, v8

    .line 253
    const/16 v8, 0xb

    const/16 v9, 0xb

    aget v9, p1, v9

    aput v9, p3, v8

    .line 256
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x3

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x3

    aget v9, v9, v10

    aget v9, p1, v9

    add-float/2addr v9, v6

    aput v9, p3, v8

    .line 257
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x3

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x3

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    add-float/2addr v9, v7

    aput v9, p3, v8

    .line 258
    const/16 v8, 0xe

    const/16 v9, 0xe

    aget v9, p1, v9

    aput v9, p3, v8

    .line 259
    const/16 v8, 0xf

    const/16 v9, 0xf

    aget v9, p1, v9

    aput v9, p3, v8

    .line 265
    .end local v1           #inputAspectRatio:F
    .end local v4           #outputAspectRatio:F
    .end local v6           #xOffset:F
    .end local v7           #yOffset:F
    :cond_4
    return-void

    .line 227
    .restart local v1       #inputAspectRatio:F
    .restart local v4       #outputAspectRatio:F
    .restart local v6       #xOffset:F
    .restart local v7       #yOffset:F
    :cond_5
    div-float v8, v3, v4

    sub-float v8, v2, v8

    const/high16 v9, 0x4000

    div-float v7, v8, v9

    .line 228
    div-float v8, v7, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    goto/16 :goto_0

    .line 261
    .end local v1           #inputAspectRatio:F
    .end local v4           #outputAspectRatio:F
    .end local v6           #xOffset:F
    .end local v7           #yOffset:F
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v8, p1

    if-ge v0, v8, :cond_4

    .line 262
    aget v8, p1, v0

    aput v8, p3, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 469
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGotSize:Z

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    .line 472
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 474
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " closed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "name"
    .parameter "context"

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Parameter update"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 491
    :cond_0
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWidth:I

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 501
    :cond_2
    :goto_0
    return-void

    .line 493
    :cond_3
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGotSize:Z

    if-eqz v0, :cond_2

    .line 494
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_5

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWidth:I

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 499
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientationUpdated:Z

    goto :goto_0

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mHeight:I

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_1
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 192
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurfaceTexture(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTextureId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized open(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 302
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 305
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mProcessMaxFrameCount:I

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGotSize:Z

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientationUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, 0x3f80

    .line 269
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 273
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    .line 276
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x0

    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 278
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->createFormats()V

    .line 280
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 286
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 288
    :cond_1
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v4, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    if-eqz v4, :cond_2

    .line 322
    const-string v4, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->closeOutputPort(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v8, "the filter already completed !"

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWaitForNewFrame:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v4, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v8, "Waiting for new frame"

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 333
    :cond_3
    const/16 v23, 0x0

    .line 334
    .local v23, waitCount:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mNewFrameAvailable:Z

    if-nez v4, :cond_7

    .line 335
    const/16 v4, 0xa

    move/from16 v0, v23

    if-lt v0, v4, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    if-eqz v4, :cond_4

    .line 337
    const-string v4, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->closeOutputPort(Ljava/lang/String;)V

    .line 339
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No new frame to be processed. count("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    .end local v23           #waitCount:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 344
    .restart local v23       #waitCount:I
    :cond_5
    const-wide/16 v8, 0x64

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 350
    :cond_6
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 345
    :catch_0
    move-exception v19

    .line 346
    .local v19, e:Ljava/lang/InterruptedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v4, :cond_6

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v8, "Interrupted"

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_2

    .line 352
    .end local v19           #e:Ljava/lang/InterruptedException;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mNewFrameAvailable:Z

    .line 353
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v4, :cond_8

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v8, "Got new frame"

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 358
    .end local v23           #waitCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    if-eqz v4, :cond_9

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v8, "the filter already completed ! ignore this frame"

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_1

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 369
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientationUpdated:Z

    if-eqz v4, :cond_b

    .line 371
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mIgnoreMainFrameStreem:Z

    if-eqz v4, :cond_a

    .line 372
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mStartTimestampNs:J

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_a

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->pause()V

    .line 375
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mWaitForNewFrame:Z

    .line 379
    :cond_a
    const/16 v4, 0x10

    new-array v5, v4, [F

    .line 380
    .local v5, surfaceTransform:[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 382
    const/16 v4, 0x10

    new-array v7, v4, [F

    .line 383
    .local v7, sourceCoordsin:[F
    const/16 v4, 0x10

    new-array v3, v4, [F

    .line 384
    .local v3, sourceCoords:[F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientation:I

    sparse-switch v4, :sswitch_data_0

    .line 387
    sget-object v4, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_0:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setSourceRect([FI[F)V

    .line 388
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 412
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v4, 0x4

    aget v9, v3, v4

    const/4 v4, 0x5

    aget v10, v3, v4

    const/4 v4, 0x0

    aget v11, v3, v4

    const/4 v4, 0x1

    aget v12, v3, v4

    const/16 v4, 0xc

    aget v13, v3, v4

    const/16 v4, 0xd

    aget v14, v3, v4

    const/16 v4, 0x8

    aget v15, v3, v4

    const/16 v4, 0x9

    aget v16, v3, v4

    invoke-virtual/range {v8 .. v16}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 416
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOrientationUpdated:Z

    .line 419
    .end local v3           #sourceCoords:[F
    .end local v5           #surfaceTransform:[F
    .end local v7           #sourceCoordsin:[F
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v4, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v20

    .line 421
    .local v20, output:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 423
    const-wide/16 v21, 0x0

    .line 425
    .local v21, timestamp:J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mIgnoreMainFrameStreem:Z

    if-eqz v4, :cond_f

    .line 426
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mStartTimestampNs:J

    sub-long v21, v8, v10

    .line 431
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v4, :cond_c

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timestamp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v21

    long-to-double v9, v0

    const-wide v11, 0x41cdcd6500000000L

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 434
    :cond_c
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 436
    const-string v4, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 438
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 441
    .local v17, current:J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    .line 443
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_d

    .line 444
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastTime:J

    .line 445
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastFrameCount:I

    .line 448
    :cond_d
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastTime:J

    sub-long v8, v17, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mPeriod:J

    cmp-long v4, v8, v10

    if-lez v4, :cond_e

    .line 449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastFrameCount:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastTime:J

    sub-long v8, v17, v8

    long-to-float v6, v8

    const/high16 v8, 0x447a

    div-float/2addr v6, v8

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFps:F

    .line 450
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastTime:J

    .line 451
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLastFrameCount:I

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    if-eqz v4, :cond_e

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%.02f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFps:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " fps"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mediatek/effect/player/EffectUiHandler;->setText(Ljava/lang/String;)V

    .line 458
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mProcessMaxFrameCount:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 459
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mProcessMaxFrameCount:I

    if-lt v4, v6, :cond_1

    .line 460
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    .line 461
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mLogVerbose:Z

    if-eqz v4, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process() set mCompleted! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mFrameCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mProcessMaxFrameCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v17           #current:J
    .end local v20           #output:Landroid/filterfw/core/Frame;
    .end local v21           #timestamp:J
    .restart local v3       #sourceCoords:[F
    .restart local v5       #surfaceTransform:[F
    .restart local v7       #sourceCoordsin:[F
    :sswitch_0
    sget-object v4, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_90:[F

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setSourceRect([FI[F)V

    .line 394
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_3

    .line 399
    :sswitch_1
    sget-object v4, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_180:[F

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setSourceRect([FI[F)V

    .line 400
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_3

    .line 405
    :sswitch_2
    sget-object v4, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSourceCoords_270:[F

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setSourceRect([FI[F)V

    .line 406
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_3

    .line 428
    .end local v3           #sourceCoords:[F
    .end local v5           #surfaceTransform:[F
    .end local v7           #sourceCoordsin:[F
    .restart local v20       #output:Landroid/filterfw/core/Frame;
    .restart local v21       #timestamp:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v21

    goto/16 :goto_4

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized setCompleted(Z)V
    .locals 4
    .parameter "isComplete"

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCompleted() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 509
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z

    if-nez v0, :cond_0

    .line 510
    const-string v0, "video"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->closeOutputPort(Ljava/lang/String;)V

    .line 512
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHandler(Lcom/mediatek/effect/player/EffectUiHandler;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    .line 537
    return-void
.end method

.method public setNewFrameAvailable(Z)V
    .locals 1
    .parameter "isNew"

    .prologue
    .line 516
    monitor-enter p0

    .line 517
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mNewFrameAvailable:Z

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 519
    monitor-exit p0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProcessMaxFrameCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 504
    iput p1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mProcessMaxFrameCount:I

    .line 505
    return-void
.end method

.method public setupPorts()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 196
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "setupPorts()"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 199
    const-string v0, "video"

    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 201
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 484
    :cond_0
    return-void
.end method
