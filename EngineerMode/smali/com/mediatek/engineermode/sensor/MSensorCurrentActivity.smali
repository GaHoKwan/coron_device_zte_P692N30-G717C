.class public Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;
.super Landroid/app/Activity;
.source "MSensorCurrentActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MSensorCurrentActivity"


# instance fields
.field private BALL_RADIUS:I

.field private final DATA_ACC:I

.field private final DATA_MAG:I

.field public final LOCK:Ljava/lang/Object;

.field private final MAX_NUM:I

.field private bAccReady:Z

.field private bDataReady:Z

.field private bReady:Z

.field private mBackPaint:Landroid/graphics/Paint;

.field private mBuffer:Ljava/lang/String;

.field private mColorAcc:I

.field private mColorData:I

.field private mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mLastValue:[F

.field private mMagSensor:Landroid/hardware/Sensor;

.field private mPaintAls:Landroid/graphics/Paint;

.field private mPaintLine:Landroid/graphics/Paint;

.field private mPaintPs:Landroid/graphics/Paint;

.field private mRate:I

.field private mRawOutput:Landroid/widget/TextView;

.field private mSampleAcc:[F

.field private mSampleData:[F

.field private mSampleIdx:I

.field private mSampleMax:I

.field private mSampleNum:I

.field public final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowLog:Z

.field private mSurface:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x320

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mMagSensor:Landroid/hardware/Sensor;

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mRate:I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->LOCK:Ljava/lang/Object;

    .line 73
    iput v3, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->MAX_NUM:I

    .line 74
    iput v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->DATA_MAG:I

    .line 75
    iput v2, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->DATA_ACC:I

    .line 76
    iput v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleNum:I

    .line 77
    iput v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleIdx:I

    .line 78
    iput v2, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->BALL_RADIUS:I

    .line 83
    iput-boolean v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mShowLog:Z

    .line 84
    iput-boolean v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bReady:Z

    .line 85
    iput-boolean v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bDataReady:Z

    .line 86
    iput-boolean v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bAccReady:Z

    .line 88
    const/high16 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mColorData:I

    .line 89
    const v0, -0xff0100

    iput v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mColorAcc:I

    .line 90
    iput v3, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    .line 286
    new-instance v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;-><init>(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->draw()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mShowLog:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bAccReady:Z

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bDataReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBuffer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mRawOutput:Landroid/widget/TextView;

    return-object v0
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "c"

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v18

    .line 190
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 191
    .local v21, width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 193
    .local v11, height:I
    const/16 v16, 0x0

    .line 194
    .local v16, prevX:F
    const/4 v1, 0x3

    new-array v7, v1, [F

    .line 195
    .local v7, ballY:[F
    const/4 v1, 0x3

    new-array v0, v1, [F

    move-object/from16 v17, v0

    .line 196
    .local v17, prevY:[F
    const/4 v14, 0x1

    .line 197
    .local v14, offset:I
    const/16 v8, 0x14

    .line 198
    .local v8, base:I
    sub-int v1, v11, v8

    int-to-float v1, v1

    const/high16 v3, 0x4080

    div-float v20, v1, v3

    .line 199
    .local v20, unit_ps:F
    sub-int v1, v11, v8

    int-to-float v1, v1

    const/high16 v3, 0x4488

    div-float v19, v1, v3

    .line 200
    .local v19, unit_als:F
    const/16 v9, 0xc

    .line 202
    .local v9, font_size:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    move/from16 v0, v21

    if-ge v0, v1, :cond_0

    .line 203
    add-int/lit8 v1, v21, -0xa

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    .line 205
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBackPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    const/4 v2, 0x0

    sub-int v1, v11, v8

    int-to-float v3, v1

    move/from16 v0, v21

    int-to-float v4, v0

    sub-int v1, v11, v8

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    int-to-float v3, v9

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mColorData:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    const-string v1, "DATA"

    const/high16 v3, 0x4000

    sub-int v5, v11, v8

    add-int/2addr v5, v9

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mColorAcc:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    const-string v1, "ACC"

    const/high16 v3, 0x4220

    sub-int v5, v11, v8

    add-int/2addr v5, v9

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 217
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleData:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleIdx:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F

    const/16 v22, 0x0

    aget v6, v6, v22

    aput v6, v1, v5

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleAcc:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleIdx:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F

    const/16 v22, 0x1

    aget v6, v6, v22

    aput v6, v1, v5

    .line 219
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleIdx:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    rem-int/2addr v1, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleIdx:I

    .line 220
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bAccReady:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bDataReady:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleNum:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    if-ge v1, v5, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleNum:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleNum:I

    .line 222
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    div-int v1, v21, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleNum:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 225
    .local v13, num:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleIdx:I

    sub-int v10, v1, v13

    .line 228
    .local v10, fst:I
    if-gez v10, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    add-int/2addr v10, v1

    .line 231
    :cond_2
    const/4 v12, 0x0

    .local v12, idx:I
    move/from16 v2, v16

    .end local v16           #prevX:F
    .local v2, prevX:F
    :goto_0
    if-ge v12, v13, :cond_5

    .line 232
    add-int v1, v10, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    rem-int v15, v1, v3

    .line 233
    .local v15, pos:I
    int-to-float v4, v12

    .line 235
    .local v4, ballX:F
    const/4 v1, 0x0

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleData:[F

    aget v5, v5, v15

    mul-float v5, v5, v19

    sub-float/2addr v3, v5

    aput v3, v7, v1

    .line 236
    const/4 v1, 0x1

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleAcc:[F

    aget v5, v5, v15

    mul-float v5, v5, v20

    sub-float/2addr v3, v5

    aput v3, v7, v1

    .line 237
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 238
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v7, v1

    .line 239
    const-string v1, "MSensorCurrentActivity"

    const-string v3, " Data value is larger than 1088"

    invoke-static {v1, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    const/4 v1, 0x0

    aget v1, v7, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->BALL_RADIUS:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintAls:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    const/4 v1, 0x1

    aget v1, v7, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->BALL_RADIUS:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintPs:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 243
    if-eqz v12, :cond_4

    .line 244
    const/4 v1, 0x0

    aget v3, v17, v1

    const/4 v1, 0x0

    aget v5, v7, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintAls:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    const/4 v1, 0x1

    aget v3, v17, v1

    const/4 v1, 0x1

    aget v5, v7, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintPs:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    :cond_4
    move v2, v4

    .line 250
    const/4 v1, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    aput v3, v17, v1

    .line 251
    const/4 v1, 0x1

    const/4 v3, 0x1

    aget v3, v7, v3

    aput v3, v17, v1

    .line 231
    add-int/2addr v12, v14

    goto/16 :goto_0

    .line 222
    .end local v2           #prevX:F
    .end local v4           #ballX:F
    .end local v10           #fst:I
    .end local v12           #idx:I
    .end local v13           #num:I
    .end local v15           #pos:I
    .restart local v16       #prevX:F
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 253
    .end local v16           #prevX:F
    .restart local v2       #prevX:F
    .restart local v10       #fst:I
    .restart local v12       #idx:I
    .restart local v13       #num:I
    :cond_5
    return-void
.end method

.method private draw()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 173
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->doDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 184
    :cond_1
    return-void

    .line 180
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 181
    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f03007d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 97
    const v0, 0x7f0b03e0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSurface:Landroid/view/SurfaceView;

    .line 98
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 99
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBackPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintAls:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintAls:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mColorData:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintPs:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintPs:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mColorAcc:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mPaintLine:Landroid/graphics/Paint;

    .line 109
    iget v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleData:[F

    .line 110
    iget v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleMax:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSampleAcc:[F

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F

    .line 113
    const v0, 0x7f0b03df

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mRawOutput:Landroid/widget/TextView;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 116
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 133
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mMagSensor:Landroid/hardware/Sensor;

    .line 138
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mMagSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mMagSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bReady:Z

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bReady:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    new-instance v0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;-><init>(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    .line 152
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v0, "Sensor Not found"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 162
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->safeStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mGameLoop:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;

    throw v0
.end method
