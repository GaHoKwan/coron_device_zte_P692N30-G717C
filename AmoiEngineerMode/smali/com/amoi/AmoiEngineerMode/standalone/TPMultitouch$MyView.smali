.class public Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;
.super Landroid/view/View;
.source "TPMultitouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field public mInputIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mMinPtrId:I

.field public mPtsStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    .line 206
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    .line 208
    return-void
.end method

.method private calcMinId(I)V
    .locals 2
    .parameter "currentId"

    .prologue
    .line 368
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 369
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    .line 373
    .end local p1
    :goto_0
    return-void

    .line 371
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    if-ge v0, p1, :cond_1

    iget p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    .end local p1
    :cond_1
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    goto :goto_0
.end method


# virtual methods
.method public Clear()V
    .locals 5

    .prologue
    .line 376
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 377
    .local v2, inputId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 378
    .local v3, m:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    goto :goto_1

    .line 380
    .end local v3           #m:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    goto :goto_0

    .line 382
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inputId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;>;"
    :cond_1
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 383
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->invalidate()V

    .line 384
    return-void
.end method

.method getPaint(I)Landroid/graphics/Paint;
    .locals 10
    .parameter "idx"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x3

    .line 387
    const/4 v3, 0x7

    new-array v0, v3, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v9

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v5

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_6

    aput-object v4, v0, v3

    .line 390
    .local v0, RGB:[[I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 391
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 392
    const/4 v3, 0x7

    if-ge p1, v3, :cond_0

    .line 393
    aget-object v3, v0, p1

    aget v3, v3, v7

    aget-object v4, v0, p1

    aget v4, v4, v8

    aget-object v5, v0, p1

    aget v5, v5, v9

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 398
    :goto_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iget v3, v3, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    int-to-double v3, v3

    const-wide v5, 0x400d0a3d70a3d70aL

    mul-double/2addr v3, v5

    const-wide v5, 0x401d7ae147ae147bL

    add-double/2addr v3, v5

    double-to-int v2, v3

    .line 399
    .local v2, textsize:I
    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 400
    return-object v1

    .line 395
    .end local v2           #textsize:I
    :cond_0
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    .line 387
    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 213
    .local v8, fingerNum:I
    const/4 v10, 0x0

    .local v10, idx:I
    :goto_0
    if-ge v10, v8, :cond_8

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Vector;

    .line 216
    .local v11, inputIdx:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v18

    .line 217
    .local v18, targetPaint:Landroid/graphics/Paint;
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v6

    .line 218
    .local v6, N0:I
    const-string v21, "MTXXP"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "input size: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v5, 0x0

    .local v5, N:I
    :goto_1
    if-ge v5, v6, :cond_7

    .line 220
    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Vector;

    .line 221
    .local v15, line:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v7

    .line 222
    .local v7, Nx:I
    const-string v21, "MTXXP"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Line"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " size "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v7, v0, :cond_4

    .line 224
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;

    move-object/from16 v0, v21

    iget v13, v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    .line 225
    .local v13, lastX:I
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;

    move-object/from16 v0, v21

    iget v14, v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    .line 227
    .local v14, lastY:I
    const/4 v9, 0x1

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_1

    .line 228
    invoke-virtual {v15, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    move/from16 v19, v0

    .line 229
    .local v19, x:I
    invoke-virtual {v15, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    move/from16 v20, v0

    .line 236
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mDisplayHistory:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 237
    int-to-float v0, v13

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    :cond_0
    move/from16 v13, v19

    .line 243
    move/from16 v14, v20

    .line 227
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 245
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_1
    add-int/lit8 v21, v7, -0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;

    .line 246
    .local v12, last:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
    add-int/lit8 v21, v6, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_4

    .line 248
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "pid "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " x="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", y="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 251
    .local v17, s:Ljava/lang/String;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v16, rect:Landroid/graphics/Rect;
    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 254
    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 255
    .restart local v19       #x:I
    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v22

    mul-int/lit8 v22, v22, 0x3

    sub-int v20, v21, v22

    .line 257
    .restart local v20       #y:I
    if-gez v19, :cond_5

    .line 258
    const/16 v19, 0x0

    .line 263
    :cond_2
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 264
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 269
    :cond_3
    :goto_4
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    .end local v9           #i:I
    .end local v12           #last:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
    .end local v13           #lastX:I
    .end local v14           #lastY:I
    .end local v16           #rect:Landroid/graphics/Rect;
    .end local v17           #s:Ljava/lang/String;
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 259
    .restart local v9       #i:I
    .restart local v12       #last:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
    .restart local v13       #lastX:I
    .restart local v14       #lastY:I
    .restart local v16       #rect:Landroid/graphics/Rect;
    .restart local v17       #s:Ljava/lang/String;
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->me:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->me:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v19, v21, v22

    goto/16 :goto_3

    .line 265
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->me:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->me:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    goto/16 :goto_4

    .line 213
    .end local v7           #Nx:I
    .end local v9           #i:I
    .end local v12           #last:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
    .end local v13           #lastX:I
    .end local v14           #lastY:I
    .end local v15           #line:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    .end local v16           #rect:Landroid/graphics/Rect;
    .end local v17           #s:Ljava/lang/String;
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 278
    .end local v5           #N:I
    .end local v6           #N0:I
    .end local v11           #inputIdx:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;>;"
    .end local v18           #targetPaint:Landroid/graphics/Paint;
    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 283
    .local v1, action:I
    and-int/lit16 v2, v1, 0xff

    .line 285
    .local v2, actionCode:I
    shr-int/lit8 v13, v1, 0x8

    .line 286
    .local v13, ptIdx:I
    const/4 v15, 0x5

    if-eq v2, v15, :cond_0

    if-nez v2, :cond_5

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v13, v15, :cond_4

    .line 290
    new-instance v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;

    invoke-direct {v12}, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;-><init>()V

    .line 291
    .local v12, pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    const/4 v15, 0x1

    iput-boolean v15, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isDown:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v12           #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .local v6, idx:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_9

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;

    .line 312
    .local v14, st:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    iget-boolean v15, v14, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isDown:Z

    if-eqz v15, :cond_8

    .line 313
    iget-boolean v15, v14, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isNewLine:Z

    if-nez v15, :cond_3

    .line 314
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 315
    .local v8, newLine:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v6, v15, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Vector;

    invoke-virtual {v15, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 320
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isNewLine:Z

    .line 310
    .end local v8           #newLine:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 294
    .end local v6           #idx:I
    .end local v14           #st:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;

    .line 295
    .restart local v12       #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    const/4 v15, 0x1

    iput-boolean v15, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isDown:Z

    goto :goto_0

    .line 297
    .end local v12           #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    :cond_5
    const/4 v15, 0x6

    if-eq v2, v15, :cond_6

    const/4 v15, 0x1

    if-ne v2, v15, :cond_1

    .line 299
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v13, v15, :cond_7

    .line 301
    new-instance v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;

    invoke-direct {v12}, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;-><init>()V

    .line 302
    .restart local v12       #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    const/4 v15, 0x0

    iput-boolean v15, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isDown:Z

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    .end local v12           #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mPtsStatus:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;

    .line 306
    .restart local v12       #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    const/4 v15, 0x0

    iput-boolean v15, v12, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isDown:Z

    goto/16 :goto_0

    .line 323
    .end local v12           #pt:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    .restart local v6       #idx:I
    .restart local v14       #st:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    :cond_8
    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isNewLine:Z

    goto :goto_2

    .line 327
    .end local v14           #st:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 329
    .local v11, pointCt:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v11, :cond_c

    .line 330
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 331
    .local v9, notZeroBasedPid:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->calcMinId(I)V

    .line 332
    move-object/from16 v0, p0

    iget v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mMinPtrId:I

    sub-int v10, v9, v15

    .line 335
    .local v10, pid:I
    new-instance v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;

    invoke-direct {v7}, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;-><init>()V

    .line 337
    .local v7, n:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
    iput v2, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->action:I

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    float-to-int v15, v15

    iput v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    .line 339
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    float-to-int v15, v15

    iput v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    .line 340
    iput v10, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->pid:I

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    iput v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->pressure:F

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v15

    iput v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->fat_size:F

    .line 345
    iget v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->fat_size:F

    const v16, 0x3c23d70a

    cmpl-float v15, v15, v16

    if-lez v15, :cond_b

    iget v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->fat_size:F

    :goto_4
    iput v15, v7, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->fat_size:F

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v10, v15, :cond_a

    .line 347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 349
    .local v4, dataStructs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    if-lt v10, v15, :cond_a

    .line 350
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    .line 353
    .end local v4           #dataStructs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->mInputIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Vector;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 354
    .local v3, currentline:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    invoke-virtual {v3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 345
    .end local v3           #currentline:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;>;"
    :cond_b
    const v15, 0x3c23d70a

    goto :goto_4

    .line 361
    .end local v7           #n:Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
    .end local v9           #notZeroBasedPid:I
    .end local v10           #pid:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->invalidate()V

    .line 362
    const/4 v15, 0x1

    return v15
.end method
