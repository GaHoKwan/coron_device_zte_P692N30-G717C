.class public Lcom/dolby/ds1appUI/GraphicVisualiserPainter;
.super Ljava/lang/Object;
.source "GraphicVisualiserPainter.java"


# static fields
.field public static final ROWS:I = 0x30

.field public static final ROWS_RED:I = 0xc

.field public static final ROWS_YELLOW:I = 0x6


# instance fields
.field private final barLock:Ljava/lang/Object;

.field private final mBarBlue:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarBlueLight:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarEmpty:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarRed:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBarYellow:Landroid/graphics/drawable/BitmapDrawable;

.field private final mBg:Landroid/graphics/drawable/BitmapDrawable;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mExcitations:[F

.field private final mGains:[F

.field private final mGainsUser:[F

.field private mHeight:I

.field private mScaledBarBlue:Landroid/graphics/Bitmap;

.field private mScaledBarBlueLight:Landroid/graphics/Bitmap;

.field private mScaledBarEmpty:Landroid/graphics/Bitmap;

.field private mScaledBarRed:Landroid/graphics/Bitmap;

.field private mScaledBarYellow:Landroid/graphics/Bitmap;

.field private mScaledBg:Landroid/graphics/Bitmap;

.field private final mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolby/ds1appUI/GraphicVisualiser;[F[F)V
    .locals 2
    .parameter "context"
    .parameter "visualizer"
    .parameter "gainsUi"
    .parameter "gainsUser"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v1, 0x14

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mExcitations:[F

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mEnabled:Z

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->barLock:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    .line 79
    iput-object p3, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mGains:[F

    .line 80
    iput-object p4, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mGainsUser:[F

    .line 82
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBg:Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarEmpty:Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarBlue:Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarYellow:Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarRed:Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarBlueLight:Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    return-void
.end method

.method private static convertValue(FF)F
    .locals 4
    .parameter "dB"
    .parameter "height"

    .prologue
    .line 198
    const/high16 v2, -0x3ec0

    sub-float v0, p0, v2

    .line 199
    .local v0, abs:F
    mul-float v2, v0, p1

    const/high16 v3, 0x4240

    div-float v1, v2, v3

    .line 200
    .local v1, v:F
    float-to-int v2, v1

    int-to-float v2, v2

    return v2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->barLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 96
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iget-boolean v0, v1, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    move/from16 v18, v0

    .line 97
    .local v18, suspended:Z
    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mGainsUser:[F

    .line 98
    .local v15, gainsPaint:[F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 103
    monitor-exit v21

    goto :goto_0

    .line 148
    .end local v15           #gainsPaint:[F
    .end local v18           #suspended:Z
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 97
    .restart local v18       #suspended:Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mGains:[F

    goto :goto_1

    .line 106
    .restart local v15       #gainsPaint:[F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mEnabled:Z

    .line 107
    .local v12, enabled:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 108
    .local v7, barHeight:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mHeight:I

    sub-int v16, v1, v7

    .line 110
    .local v16, h:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .local v6, line_paint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mWidth:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v9, v1, 0x14

    .line 114
    .local v9, bar_width:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mHeight:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v8, v1, 0x30

    .line 115
    .local v8, bar_height:I
    const/4 v11, 0x0

    .local v11, c:I
    :goto_2
    const/16 v1, 0x14

    if-ge v11, v1, :cond_c

    .line 116
    mul-int v1, v9, v11

    add-int/lit8 v19, v1, 0x1

    .line 117
    .local v19, x:I
    add-int/lit8 v1, v19, -0x1

    int-to-float v2, v1

    const/4 v3, 0x0

    add-int/lit8 v1, v19, -0x1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mHeight:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mExcitations:[F

    aget v1, v1, v11

    const/high16 v2, 0x423c

    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->convertValue(FF)F

    move-result v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 119
    .local v13, excitation:I
    const/16 v17, 0x0

    .local v17, r:I
    :goto_3
    const/16 v1, 0x30

    move/from16 v0, v17

    if-ge v0, v1, :cond_a

    .line 120
    mul-int v1, v8, v17

    add-int/lit8 v20, v1, 0x1

    .line 121
    .local v20, y:I
    if-nez v11, :cond_4

    .line 122
    const/4 v2, 0x0

    add-int/lit8 v1, v20, -0x1

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mWidth:I

    int-to-float v4, v1

    add-int/lit8 v1, v20, -0x1

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    :cond_4
    if-eqz v12, :cond_9

    if-nez v18, :cond_9

    .line 126
    rsub-int/lit8 v1, v17, 0x2f

    if-ge v13, v1, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    .line 138
    .local v10, bmp:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 139
    move/from16 v0, v19

    int-to-float v1, v0

    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 128
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    const/16 v1, 0xc

    move/from16 v0, v17

    if-ge v0, v1, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 130
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_7
    const/16 v1, 0x12

    move/from16 v0, v17

    if-ge v0, v1, :cond_8

    .line 131
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 133
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 136
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 143
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v20           #y:I
    :cond_a
    if-eqz v12, :cond_b

    .line 144
    aget v1, v15, v11

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->convertValue(FF)F

    move-result v1

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 145
    .local v14, gainY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    move/from16 v0, v19

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mHeight:I

    sub-int/2addr v3, v7

    sub-int/2addr v3, v14

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    .end local v14           #gainY:I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 148
    .end local v13           #excitation:I
    .end local v17           #r:I
    .end local v19           #x:I
    :cond_c
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->barLock:Ljava/lang/Object;

    monitor-enter v3

    .line 154
    add-int/lit8 v2, p1, -0x1

    :try_start_0
    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v1, v2, -0x1

    .line 155
    .local v1, barw:I
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x30

    add-int/lit8 v0, v2, -0x1

    .line 157
    .local v0, barh:I
    if-lez v1, :cond_6

    if-lez v0, :cond_6

    .line 159
    iput p1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mWidth:I

    .line 160
    iput p2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mHeight:I

    .line 162
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 183
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    .line 187
    :cond_5
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v4, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mWidth:I

    const/4 v5, 0x1

    invoke-static {v2, v4, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBg:Landroid/graphics/Bitmap;

    .line 188
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarEmpty:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarEmpty:Landroid/graphics/Bitmap;

    .line 189
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarBlue:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlue:Landroid/graphics/Bitmap;

    .line 190
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarYellow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarYellow:Landroid/graphics/Bitmap;

    .line 191
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarRed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarRed:Landroid/graphics/Bitmap;

    .line 192
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mBarBlueLight:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mScaledBarBlueLight:Landroid/graphics/Bitmap;

    .line 194
    :cond_6
    monitor-exit v3

    .line 195
    return-void

    .line 194
    .end local v0           #barh:I
    .end local v1           #barw:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mEnabled:Z

    .line 215
    return-void
.end method

.method public setExcitations([F)V
    .locals 3
    .parameter "excitations"

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mExcitations:[F

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->mExcitations:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    return-void
.end method
