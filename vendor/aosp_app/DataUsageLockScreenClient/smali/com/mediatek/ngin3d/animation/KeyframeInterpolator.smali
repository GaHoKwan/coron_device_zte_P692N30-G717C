.class public Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;
.super Ljava/lang/Object;
.source "KeyframeInterpolator.java"


# static fields
.field private static final FORMULA_NONE:I = 0x0

.field private static final FORMULA_ROVING:I = 0x10

.field private static final FORMULA_SPATIAL_AUTOBEZIER:I = 0x8

.field private static final FORMULA_SPATIAL_CONTINUOUS:I = 0x4

.field private static final FORMULA_TEMPORAL_AUTOBEZIER:I = 0x2

.field private static final FORMULA_TEMPORAL_CONTINUOUS:I = 0x1


# instance fields
.field private final mCurveType:[I

.field mEulerEnd:Lcom/mediatek/ngin3d/Rotation;

.field mEulerStart:Lcom/mediatek/ngin3d/Rotation;

.field private mInTanX:[F

.field private mInTanY:[F

.field private mInTanZ:[F

.field private final mKfTime:[F

.field private mLen:I

.field private mNormalized:Z

.field private mOutTanX:[F

.field private mOutTanY:[F

.field private mOutTanZ:[F

.field private final mSampleType:I

.field private mValX:[F

.field private mValY:[F

.field private mValZ:[F

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/animation/Samples;)V
    .locals 6
    .parameter "samples"

    .prologue
    const/4 v1, 0x4

    const/high16 v5, 0x42c8

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/ngin3d/Rotation;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Rotation;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mEulerStart:Lcom/mediatek/ngin3d/Rotation;

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Rotation;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Rotation;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mEulerEnd:Lcom/mediatek/ngin3d/Rotation;

    .line 79
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    .line 80
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->getInt(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mCurveType:[I

    .line 81
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    .line 82
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    if-ne v0, v1, :cond_0

    .line 83
    const-string v0, "v"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    .line 84
    const-string v0, "itx"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanX:[F

    .line 85
    const-string v0, "otx"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanX:[F

    .line 98
    :goto_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    if-ne v0, v1, :cond_1

    .line 99
    new-instance v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v1, v1, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    if-nez v0, :cond_7

    .line 112
    iput v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    .line 116
    :goto_2
    return-void

    .line 87
    :cond_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    .line 88
    const-string v0, "y"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    .line 89
    const-string v0, "z"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    .line 90
    const-string v0, "itx"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanX:[F

    .line 91
    const-string v0, "ity"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanY:[F

    .line 92
    const-string v0, "itz"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanZ:[F

    .line 93
    const-string v0, "otx"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanX:[F

    .line 94
    const-string v0, "oty"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanY:[F

    .line 95
    const-string v0, "otz"

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanZ:[F

    goto :goto_0

    .line 100
    :cond_1
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 102
    :cond_2
    new-instance v0, Lcom/mediatek/ngin3d/Rotation;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Rotation;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_3
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 104
    :cond_4
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 105
    :cond_5
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 106
    new-instance v0, Lcom/mediatek/ngin3d/Scale;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v1, v1, v4

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v2, v2, v4

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v3, v3, v4

    div-float/2addr v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not excepted Sample type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    array-length v0, v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    goto/16 :goto_2
.end method

.method private bezier(FI)V
    .locals 18
    .parameter "currTime"
    .parameter "nKf"

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    add-int/lit8 v15, p2, -0x1

    aget v14, v14, v15

    sub-float v14, p1, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    aget v15, v15, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, p2, -0x1

    aget v16, v16, v17

    sub-float v15, v15, v16

    div-float v5, v14, v15

    .line 158
    .local v5, t:F
    mul-float v6, v5, v5

    .line 159
    .local v6, t2:F
    mul-float v7, v6, v5

    .line 160
    .local v7, t3:F
    const/high16 v14, 0x3f80

    sub-float v8, v14, v5

    .line 161
    .local v8, tc:F
    mul-float v9, v8, v8

    .line 162
    .local v9, tc2:F
    mul-float v10, v9, v8

    .line 163
    .local v10, tc3:F
    const/4 v11, 0x0

    .line 164
    .local v11, valX:F
    const/4 v12, 0x0

    .line 165
    .local v12, valY:F
    const/4 v13, 0x0

    .line 171
    .local v13, valZ:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    add-int/lit8 v15, p2, -0x1

    aget v1, v14, v15

    .line 172
    .local v1, p0:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    add-int/lit8 v15, p2, -0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanX:[F

    add-int/lit8 v16, p2, -0x1

    aget v15, v15, v16

    add-float v2, v14, v15

    .line 173
    .local v2, p1:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v14, v14, p2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanX:[F

    aget v15, v15, p2

    add-float v3, v14, v15

    .line 174
    .local v3, p2:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v4, v14, p2

    .line 175
    .local v4, p3:F
    mul-float v14, v10, v1

    const/high16 v15, 0x4040

    mul-float/2addr v15, v9

    mul-float/2addr v15, v5

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    const/high16 v15, 0x4040

    mul-float/2addr v15, v8

    mul-float/2addr v15, v6

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    mul-float v15, v7, v4

    add-float v11, v14, v15

    .line 177
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    add-int/lit8 v15, p2, -0x1

    aget v1, v14, v15

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    add-int/lit8 v15, p2, -0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanY:[F

    add-int/lit8 v16, p2, -0x1

    aget v15, v15, v16

    add-float v2, v14, v15

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v14, v14, p2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanY:[F

    aget v15, v15, p2

    add-float v3, v14, v15

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v4, v14, p2

    .line 182
    mul-float v14, v10, v1

    const/high16 v15, 0x4040

    mul-float/2addr v15, v9

    mul-float/2addr v15, v5

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    const/high16 v15, 0x4040

    mul-float/2addr v15, v8

    mul-float/2addr v15, v6

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    mul-float v15, v7, v4

    add-float v12, v14, v15

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    add-int/lit8 v15, p2, -0x1

    aget v1, v14, v15

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    add-int/lit8 v15, p2, -0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mOutTanZ:[F

    add-int/lit8 v16, p2, -0x1

    aget v15, v15, v16

    add-float v2, v14, v15

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v14, v14, p2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mInTanZ:[F

    aget v15, v15, p2

    add-float v3, v14, v15

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v4, v14, p2

    .line 188
    mul-float v14, v10, v1

    const/high16 v15, 0x4040

    mul-float/2addr v15, v9

    mul-float/2addr v15, v5

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    const/high16 v15, 0x4040

    mul-float/2addr v15, v8

    mul-float/2addr v15, v6

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    mul-float v15, v7, v4

    add-float v13, v14, v15

    .line 190
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->setValue(FFF)V

    .line 191
    return-void
.end method

.method private linear(FI)V
    .locals 21
    .parameter "currTime"
    .parameter "nKf"

    .prologue
    .line 200
    const/16 v18, 0x0

    .line 201
    .local v18, valX:F
    const/16 v19, 0x0

    .line 202
    .local v19, valY:F
    const/16 v20, 0x0

    .line 203
    .local v20, valZ:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    add-int/lit8 v6, p2, -0x1

    aget v5, v5, v6

    sub-float v5, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    aget v6, v6, p2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    add-int/lit8 v8, p2, -0x1

    aget v7, v7, v8

    sub-float/2addr v6, v7

    div-float v17, v5, v6

    .line 205
    .local v17, t:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    add-int/lit8 v6, p2, -0x1

    aget v11, v5, v6

    .line 207
    .local v11, px0:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    add-int/lit8 v6, p2, -0x1

    aget v13, v5, v6

    .line 208
    .local v13, py0:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    add-int/lit8 v6, p2, -0x1

    aget v15, v5, v6

    .line 209
    .local v15, pz0:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v12, v5, p2

    .line 210
    .local v12, px1:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v14, v5, p2

    .line 211
    .local v14, py1:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v16, v5, p2

    .line 213
    .local v16, pz1:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ngin3d/Rotation;

    .line 214
    .local v4, rot:Lcom/mediatek/ngin3d/Rotation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mEulerStart:Lcom/mediatek/ngin3d/Rotation;

    sget-object v6, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {v5, v6, v11, v13, v15}, Lcom/mediatek/ngin3d/Rotation;->set(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mEulerEnd:Lcom/mediatek/ngin3d/Rotation;

    sget-object v6, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    move/from16 v0, v16

    invoke-virtual {v5, v6, v12, v14, v0}, Lcom/mediatek/ngin3d/Rotation;->set(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mEulerStart:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v5}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mEulerEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Lcom/mediatek/ngin3d/Quaternion;->slerp(Lcom/mediatek/ngin3d/Quaternion;F)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v10

    .line 217
    .local v10, linearQ:Lcom/mediatek/ngin3d/Quaternion;
    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v5

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v6

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v7

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/mediatek/ngin3d/Rotation;->set(FFFFZ)V

    .line 235
    .end local v4           #rot:Lcom/mediatek/ngin3d/Rotation;
    .end local v10           #linearQ:Lcom/mediatek/ngin3d/Quaternion;
    .end local v13           #py0:F
    .end local v14           #py1:F
    .end local v15           #pz0:F
    .end local v16           #pz1:F
    :goto_0
    return-void

    .line 220
    .end local v11           #px0:F
    .end local v12           #px1:F
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    add-int/lit8 v6, p2, -0x1

    aget v11, v5, v6

    .line 221
    .restart local v11       #px0:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v12, v5, p2

    .line 222
    .restart local v12       #px1:F
    const/high16 v5, 0x3f80

    sub-float v5, v5, v17

    mul-float/2addr v5, v11

    mul-float v6, v12, v17

    add-float v18, v5, v6

    .line 224
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    add-int/lit8 v6, p2, -0x1

    aget v13, v5, v6

    .line 226
    .restart local v13       #py0:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v14, v5, p2

    .line 227
    .restart local v14       #py1:F
    const/high16 v5, 0x3f80

    sub-float v5, v5, v17

    mul-float/2addr v5, v13

    mul-float v6, v14, v17

    add-float v19, v5, v6

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    add-int/lit8 v6, p2, -0x1

    aget v15, v5, v6

    .line 230
    .restart local v15       #pz0:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v16, v5, p2

    .line 231
    .restart local v16       #pz1:F
    const/high16 v5, 0x3f80

    sub-float v5, v5, v17

    mul-float/2addr v5, v15

    mul-float v6, v16, v17

    add-float v20, v5, v6

    .line 234
    .end local v13           #py0:F
    .end local v14           #py1:F
    .end local v15           #pz0:F
    .end local v16           #pz1:F
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->setValue(FFF)V

    goto :goto_0
.end method

.method private setValue(FFF)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v5, 0x1

    const/high16 v3, 0x42c8

    .line 238
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 239
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ngin3d/Rotation;

    .line 245
    .local v0, rot:Lcom/mediatek/ngin3d/Rotation;
    sget-object v1, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mediatek/ngin3d/Rotation;->set(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 247
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v7

    .line 248
    .local v7, q:Lcom/mediatek/ngin3d/Quaternion;
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v1

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v2

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v3

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ngin3d/Rotation;->set(FFFFZ)V

    goto :goto_0

    .line 249
    .end local v0           #rot:Lcom/mediatek/ngin3d/Rotation;
    .end local v7           #q:Lcom/mediatek/ngin3d/Quaternion;
    :cond_3
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 250
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/ngin3d/Point;

    .line 251
    .local v6, point:Lcom/mediatek/ngin3d/Point;
    iput p1, v6, Lcom/mediatek/ngin3d/Point;->x:F

    .line 252
    iput p2, v6, Lcom/mediatek/ngin3d/Point;->y:F

    .line 253
    iput p3, v6, Lcom/mediatek/ngin3d/Point;->z:F

    goto :goto_0

    .line 254
    .end local v6           #point:Lcom/mediatek/ngin3d/Point;
    :cond_5
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v8, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/mediatek/ngin3d/Scale;

    .line 256
    .local v8, scale:Lcom/mediatek/ngin3d/Scale;
    div-float v1, p1, v3

    iput v1, v8, Lcom/mediatek/ngin3d/Scale;->x:F

    .line 257
    div-float v1, p2, v3

    iput v1, v8, Lcom/mediatek/ngin3d/Scale;->y:F

    .line 258
    div-float v1, p3, v3

    iput v1, v8, Lcom/mediatek/ngin3d/Scale;->z:F

    goto :goto_0
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    return v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 5
    .parameter "currTime"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, nKf:I
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    .line 151
    :goto_0
    return-object v1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    aget v1, v1, v4

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 130
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    if-ne v1, v3, :cond_3

    .line 131
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    aget v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->setValue(FFF)V

    goto :goto_1

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mKfTime:[F

    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_6

    .line 137
    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mSampleType:I

    if-ne v1, v3, :cond_5

    .line 138
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    .line 142
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValX:[F

    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValY:[F

    iget v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValZ:[F

    iget v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->setValue(FFF)V

    goto :goto_2

    .line 143
    :cond_6
    if-eqz v0, :cond_8

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mLen:I

    if-ge v0, v1, :cond_8

    .line 144
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mCurveType:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mCurveType:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ne v1, v3, :cond_7

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->bezier(FI)V

    .line 149
    :goto_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mValue:Ljava/lang/Object;

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->linear(FI)V

    goto :goto_3

    .line 151
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mNormalized:Z

    return v0
.end method

.method public setNormalized(Z)V
    .locals 0
    .parameter "isNormalized"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->mNormalized:Z

    .line 275
    return-void
.end method
