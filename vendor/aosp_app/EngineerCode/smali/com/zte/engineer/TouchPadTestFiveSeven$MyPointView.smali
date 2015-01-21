.class public Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;
.super Landroid/view/View;
.source "TouchPadTestFiveSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchPadTestFiveSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPointView"
.end annotation


# instance fields
.field private dxy:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mX:F

.field private mY:F

.field positionx:[F

.field positiony:[F

.field private r:I

.field final synthetic this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

.field private times:[I

.field private wandh:[I

.field x1:I

.field x2:I

.field x3:I

.field y1:I

.field y2:I

.field y3:I


# direct methods
.method public constructor <init>(Lcom/zte/engineer/TouchPadTestFiveSeven;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "c"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    iput-object p1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    .line 98
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->times:[I

    .line 81
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #calls: Lcom/zte/engineer/TouchPadTestFiveSeven;->getWidthAndHeight()[I
    invoke-static {v1}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$000(Lcom/zte/engineer/TouchPadTestFiveSeven;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    .line 82
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    aget v1, v1, v4

    div-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    .line 83
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    aget v1, v1, v4

    div-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->dxy:I

    .line 85
    iget v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->dxy:I

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x1:I

    .line 86
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    aget v1, v1, v4

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->dxy:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x3:I

    .line 87
    iget v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x3:I

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x1:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x1:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x2:I

    .line 89
    iget v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->dxy:I

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y1:I

    .line 90
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->dxy:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y3:I

    .line 91
    iget v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y3:I

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y1:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y1:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y2:I

    .line 93
    new-array v1, v6, [F

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x1:I

    int-to-float v2, v2

    aput v2, v1, v4

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x2:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->x3:I

    int-to-float v2, v2

    aput v2, v1, v5

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    .line 95
    new-array v1, v6, [F

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y1:I

    int-to-float v2, v2

    aput v2, v1, v4

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y2:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->y3:I

    int-to-float v2, v2

    aput v2, v1, v5

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    .line 100
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->wandh:[I

    aget v2, v2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mBitmap:Landroid/graphics/Bitmap;

    .line 102
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mCanvas:Landroid/graphics/Canvas;

    .line 103
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 106
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->times:[I

    aput v4, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method private countLength(FFFF)D
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 214
    sub-float v3, p1, p3

    sub-float v4, p1, p3

    mul-float/2addr v3, v4

    sub-float v4, p2, p4

    sub-float v5, p2, p4

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 215
    .local v2, s:F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 216
    .local v0, b:D
    return-wide v0
.end method

.method private touch_start(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 136
    iput p1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    .line 137
    iput p2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    .line 138
    return-void
.end method

.method private touch_up()V
    .locals 25

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;
    invoke-static/range {v23 .. v23}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$200(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v23

    invoke-virtual/range {v20 .. v23}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->countLength(FFFF)D

    move-result-wide v7

    .line 146
    .local v7, length1:D
    move-wide v5, v7

    .line 147
    .local v5, length:D
    const/16 v17, 0x1

    .line 149
    .local v17, point:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->countLength(FFFF)D

    move-result-wide v9

    .line 150
    .local v9, length2:D
    cmpg-double v20, v9, v5

    if-gez v20, :cond_0

    .line 151
    move-wide v5, v9

    .line 152
    const/16 v17, 0x2

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->countLength(FFFF)D

    move-result-wide v11

    .line 156
    .local v11, length3:D
    cmpg-double v20, v11, v5

    if-gez v20, :cond_1

    .line 157
    move-wide v5, v11

    .line 158
    const/16 v17, 0x3

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->countLength(FFFF)D

    move-result-wide v13

    .line 162
    .local v13, length4:D
    cmpg-double v20, v13, v5

    if-gez v20, :cond_2

    .line 163
    move-wide v5, v13

    .line 164
    const/16 v17, 0x4

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->countLength(FFFF)D

    move-result-wide v15

    .line 168
    .local v15, length5:D
    cmpg-double v20, v15, v5

    if-gez v20, :cond_3

    .line 169
    move-wide v5, v15

    .line 170
    const/16 v17, 0x5

    .line 173
    :cond_3
    const/16 v18, 0x0

    .line 174
    .local v18, pos_x:F
    const/16 v19, 0x0

    .line 176
    .local v19, pos_y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v20, v5, v20

    if-ltz v20, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v20

    const/high16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->times:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v17, -0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 183
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v20

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    packed-switch v17, :pswitch_data_0

    .line 208
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    move-object/from16 v22, v0

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static/range {v22 .. v22}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    return-void

    .line 180
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v20

    const v21, -0xff0100

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->times:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v17, -0x1

    const/16 v22, 0x1

    aput v22, v20, v21

    goto :goto_0

    .line 186
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v18, v20, v21

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v19, v20, v21

    .line 188
    goto :goto_1

    .line 190
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v18, v20, v21

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v19, v20, v21

    .line 192
    goto :goto_1

    .line 194
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v18, v20, v21

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v19, v20, v21

    .line 196
    goto/16 :goto_1

    .line 198
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v18, v20, v21

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v19, v20, v21

    .line 200
    goto/16 :goto_1

    .line 202
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v18, v20, v21

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v19, v20, v21

    .line 204
    goto/16 :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 118
    const v0, 0xaaaa

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 120
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    aget v1, v1, v6

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    aget v1, v1, v5

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positionx:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->positiony:[F

    aget v1, v1, v5

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 114
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 221
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 223
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return v8

    .line 225
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->touch_start(FF)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->touch_up()V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 231
    const-string v4, "Emode.TouchPadTestFiveSeven"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, item:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 235
    iget-object v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->times:[I

    aget v4, v4, v1

    if-ne v4, v8, :cond_1

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_2
    if-ne v0, v7, :cond_0

    .line 240
    iget-object v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    new-instance v5, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;

    iget-object v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    iget-object v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;-><init>(Lcom/zte/engineer/TouchPadTestFiveSeven;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/zte/engineer/TouchPadTestFiveSeven;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
