.class public Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;
.super Landroid/view/View;
.source "TsMultiTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private mCurrPoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field private mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    .line 235
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mCurrPoints:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mHistory:Ljava/util/ArrayList;

    .line 236
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mCurrPoints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 304
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 306
    return-void
.end method

.method getPaint(I)Landroid/graphics/Paint;
    .locals 7
    .parameter "idx"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0xff

    .line 309
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 310
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 311
    sget-object v2, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 312
    sget-object v2, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    aget-object v2, v2, p1

    aget v2, v2, v3

    sget-object v3, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget v2, v2, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    int-to-double v2, v2

    const-wide v4, 0x400d0a3d70a3d70aL

    mul-double/2addr v2, v4

    const-wide v4, 0x401d7ae147ae147bL

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 317
    .local v1, textsize:I
    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 318
    return-object v0

    .line 314
    .end local v1           #textsize:I
    :cond_0
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 240
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget-boolean v8, v8, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mDisplayHistory:Z

    if-eqz v8, :cond_0

    .line 241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 242
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;

    .line 243
    .local v2, point:Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;
    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateX()I

    move-result v6

    .line 244
    .local v6, x:I
    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateY()I

    move-result v7

    .line 245
    .local v7, y:I
    int-to-float v8, v6

    int-to-float v9, v7

    iget-object v10, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget v10, v10, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    int-to-float v10, v10

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmPid()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0           #i:I
    .end local v2           #point:Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_0
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mCurrPoints:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;

    .line 250
    .restart local v2       #point:Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;
    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmPid()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 251
    .local v5, targetPaint:Landroid/graphics/Paint;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateX()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateY()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, s:Ljava/lang/String;
    const-string v8, "EM/TouchScreen/MT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Touch pos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v3, rect:Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v4, v8, v9, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateX()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 260
    .restart local v6       #x:I
    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateY()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    sub-int v7, v8, v9

    .line 262
    .restart local v7       #y:I
    if-gez v6, :cond_3

    .line 263
    const/4 v6, 0x0

    .line 268
    :cond_1
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 269
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 274
    :cond_2
    :goto_3
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v4, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->getmCoordinateY()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget v10, v10, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    mul-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    invoke-virtual {p1, v8, v9, v10, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 264
    :cond_3
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget-object v8, v8, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_1

    .line 265
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget-object v8, v8, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v6, v8, v9

    goto :goto_2

    .line 270
    :cond_4
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget-object v8, v8, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_2

    .line 271
    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget-object v8, v8, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mMetrics:Landroid/util/DisplayMetrics;

    iget v7, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3

    .line 279
    .end local v2           #point:Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #targetPaint:Landroid/graphics/Paint;
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 283
    const-string v3, "EM/TouchScreen/MT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent: Pointer counts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 287
    const-string v3, "EM/TouchScreen/MT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent: idx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 290
    .local v2, pid:I
    new-instance v1, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;

    invoke-direct {v1}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;-><init>()V

    .line 291
    .local v1, n:Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->setmCoordinateX(I)V

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->setmCoordinateY(I)V

    .line 293
    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;->setmPid(I)V

    .line 294
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mCurrPoints:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v1           #n:Lcom/mediatek/engineermode/touchscreen/TsPointDataStruct;
    .end local v2           #pid:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 299
    const/4 v3, 0x1

    return v3
.end method
