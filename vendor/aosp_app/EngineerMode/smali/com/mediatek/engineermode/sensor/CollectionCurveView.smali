.class public Lcom/mediatek/engineermode/sensor/CollectionCurveView;
.super Landroid/view/View;
.source "CollectionCurveView.java"


# static fields
.field private static final BOTTOM_GAP:I = 0x1e

.field private static final COUNT:I = 0x16

.field private static final FONT_SIZE:I = 0x8

.field private static final LEFT_GAP:I = 0x1

.field private static final LINE_LENGTH:I = 0x5

.field private static final MAX_DIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CollectionCurveView"

.field private static final TEXT_HEIGHT:I = 0xa

.field private static final TOP_GAP:I = 0x14

.field private static final Y_COUNT:I = 0xa

.field private static final data:[F


# instance fields
.field private mDis:[I

.field private mIsEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x16

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->data:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x60t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x90t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xb0t 0x40t
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0xd0t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0xf0t 0x40t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x8t 0x41t
        0x0t 0x0t 0x10t 0x41t
        0x0t 0x0t 0x18t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x28t 0x41t
        0x0t 0x0t 0x30t 0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    const/16 v0, 0x16

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mIsEmpty:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/16 v0, 0x16

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mIsEmpty:Z

    .line 75
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 91
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 101
    .local v14, height:I
    const-string v1, "CollectionCurveView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "CollectionCurveView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .local v6, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 110
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    const/high16 v2, 0x3f80

    add-int/lit8 v1, v14, -0x1e

    int-to-float v3, v1

    add-int/lit8 v1, v17, -0x1

    int-to-float v4, v1

    add-int/lit8 v1, v14, -0x1e

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    const/4 v15, 0x1

    .local v15, i:I
    :goto_0
    const/16 v1, 0x17

    if-ge v15, v1, :cond_0

    .line 114
    add-int/lit8 v1, v17, -0x1

    div-int/lit8 v1, v1, 0x16

    mul-int/2addr v1, v15

    add-int/lit8 v18, v1, 0x1

    .line 115
    .local v18, x:I
    add-int/lit8 v1, v14, -0x1e

    add-int/lit8 v1, v1, -0x5

    int-to-float v3, v1

    .line 116
    .local v3, y1:F
    add-int/lit8 v1, v14, -0x1e

    int-to-float v5, v1

    .line 117
    .local v5, y2:F
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 119
    .end local v3           #y1:F
    .end local v5           #y2:F
    .end local v18           #x:I
    :cond_0
    const/high16 v1, 0x4100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    const/4 v15, 0x1

    :goto_1
    const/16 v1, 0x17

    if-ge v15, v1, :cond_1

    .line 121
    add-int/lit8 v1, v17, -0x1

    div-int/lit8 v1, v1, 0x16

    mul-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v18, v1, -0x2

    .line 122
    .restart local v18       #x:I
    add-int/lit8 v1, v14, -0x1e

    add-int/lit8 v21, v1, 0xa

    .line 123
    .local v21, y:I
    sget-object v1, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->data:[F

    add-int/lit8 v2, v15, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 127
    .end local v18           #x:I
    .end local v21           #y:I
    :cond_1
    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    add-int/lit8 v1, v14, -0x1e

    int-to-float v11, v1

    move-object/from16 v7, p1

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    const/4 v15, 0x0

    :goto_2
    const/16 v1, 0xa

    if-ge v15, v1, :cond_2

    .line 129
    const/16 v19, 0x1

    .line 130
    .local v19, x1:I
    add-int/lit8 v20, v17, -0x1

    .line 131
    .local v20, x2:I
    add-int/lit8 v1, v14, -0x1e

    add-int/lit8 v1, v1, -0x14

    mul-int/2addr v1, v15

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v21, v1, 0x14

    .line 132
    .restart local v21       #y:I
    move/from16 v0, v19

    int-to-float v8, v0

    move/from16 v0, v21

    int-to-float v9, v0

    move/from16 v0, v20

    int-to-float v10, v0

    move/from16 v0, v21

    int-to-float v11, v0

    move-object/from16 v7, p1

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 135
    .end local v19           #x1:I
    .end local v20           #x2:I
    .end local v21           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mIsEmpty:Z

    if-eqz v1, :cond_4

    .line 167
    :cond_3
    return-void

    .line 138
    :cond_4
    const/16 v16, 0x0

    .line 139
    .local v16, max:F
    const/4 v15, 0x0

    :goto_3
    const/16 v1, 0x16

    if-ge v15, v1, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    aget v1, v1, v15

    int-to-float v1, v1

    cmpg-float v1, v16, v1

    if-gez v1, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    aget v1, v1, v15

    int-to-float v0, v1

    move/from16 v16, v0

    .line 139
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 145
    :cond_6
    const/4 v13, 0x0

    .line 146
    .local v13, disString:F
    const/4 v15, 0x1

    :goto_4
    const/16 v1, 0xb

    if-ge v15, v1, :cond_7

    .line 147
    const/16 v18, 0x6

    .line 148
    .restart local v18       #x:I
    add-int/lit8 v1, v14, -0x1e

    add-int/lit8 v1, v1, -0x14

    rsub-int/lit8 v2, v15, 0xa

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v21, v1, -0x2

    .line 149
    .restart local v21       #y:I
    int-to-float v1, v15

    mul-float v1, v1, v16

    const/high16 v2, 0x4120

    div-float v13, v1, v2

    .line 151
    float-to-int v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 155
    .end local v18           #x:I
    .end local v21           #y:I
    :cond_7
    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    const/4 v15, 0x1

    :goto_5
    const/16 v1, 0x16

    if-ge v15, v1, :cond_3

    .line 157
    div-int/lit8 v1, v17, 0x16

    mul-int v19, v1, v15

    .line 158
    .restart local v19       #x1:I
    const/high16 v1, 0x41a0

    add-int/lit8 v2, v14, -0x1e

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    add-int/lit8 v8, v15, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    div-float v7, v7, v16

    sub-float/2addr v4, v7

    mul-float/2addr v2, v4

    add-float v3, v1, v2

    .line 160
    .restart local v3       #y1:F
    div-int/lit8 v1, v17, 0x16

    add-int/lit8 v2, v15, 0x1

    mul-int v20, v1, v2

    .line 161
    .restart local v20       #x2:I
    const/high16 v1, 0x41a0

    add-int/lit8 v2, v14, -0x1e

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    aget v7, v7, v15

    int-to-float v7, v7

    div-float v7, v7, v16

    sub-float/2addr v4, v7

    mul-float/2addr v2, v4

    add-float v5, v1, v2

    .line 163
    .restart local v5       #y2:F
    const-string v1, "CollectionCurveView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x1 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x2="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "CollectionCurveView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "y2="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5
.end method

.method public setDistance([I)V
    .locals 4
    .parameter "distance"

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mIsEmpty:Z

    .line 86
    .end local v0           #i:I
    :goto_1
    return-void

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mIsEmpty:Z

    .line 84
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->mDis:[I

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
