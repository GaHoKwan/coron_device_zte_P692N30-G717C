.class public Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;
.super Landroid/view/View;
.source "TsRateReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsRateReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    }
.end annotation


# instance fields
.field private mPointerNumDetected:I

.field private final mPtsStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsRateReport;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsRateReport;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsRateReport;

    .line 89
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    .line 90
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 197
    return-void
.end method

.method getPaint(II)Landroid/graphics/Paint;
    .locals 6
    .parameter "idx"
    .parameter "textsize"

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0xff

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 201
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    sget-object v1, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 203
    sget-object v1, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    aget-object v1, v1, p1

    aget v1, v1, v2

    sget-object v2, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->RGB:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 208
    :goto_0
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 94
    const-string v7, "EM/TouchScreen/RR"

    const-string v8, "-->onDraw"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v4, 0xf

    .line 96
    .local v4, textsize:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pointer number detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x4040

    const/16 v9, 0x19

    int-to-float v9, v9

    const/4 v10, 0x4

    invoke-virtual {p0, v10, v4}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->getPaint(II)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    const-string v7, "EM/TouchScreen/RR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pointer number detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;

    .line 102
    .local v1, pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    invoke-virtual {v1}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->setUTimeStamp()V

    .line 103
    invoke-virtual {v1}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->calculateRate()V

    .line 104
    const-string v7, "pid=%2d, X=%3d, Y=%3d."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mPid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mLastX:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mLastY:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, s:Ljava/lang/String;
    const-string v7, "Rate=%dHz, Count=%d, Time=%dms"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mRate:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mCnt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mMills:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, ss:Ljava/lang/String;
    const/4 v5, 0x3

    .line 110
    .local v5, x:I
    iget v7, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mPid:I

    mul-int/lit8 v7, v7, 0x3

    mul-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x37

    .line 112
    .local v6, y:I
    int-to-float v7, v5

    int-to-float v8, v6

    iget v9, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mPid:I

    invoke-virtual {p0, v9, v4}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->getPaint(II)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    int-to-float v7, v5

    add-int v8, v6, v4

    int-to-float v8, v8

    iget v9, v1, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mPid:I

    invoke-virtual {p0, v9, v4}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->getPaint(II)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 115
    .end local v1           #pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #ss:Ljava/lang/String;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x6

    const/4 v10, 0x1

    .line 155
    const-string v7, "EM/TouchScreen/RR"

    const-string v8, "-->onTouchEvent"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 158
    .local v1, actionCode:I
    shr-int/lit8 v3, v0, 0x8

    .line 159
    .local v3, idx:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 161
    .local v4, pid:I
    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    if-nez v1, :cond_3

    .line 163
    :cond_0
    new-instance v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;-><init>(Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;Lcom/mediatek/engineermode/touchscreen/TsRateReport$1;)V

    .line 164
    .local v6, pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    iput v4, v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mPid:I

    .line 165
    invoke-virtual {v6}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->setDTimeStamp()V

    .line 166
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    .line 173
    .end local v6           #pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    :cond_1
    :goto_0
    if-ne v1, v9, :cond_5

    .line 174
    iget v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    .line 179
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 180
    .local v5, pointCt:I
    const-string v7, "EM/TouchScreen/RR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pointer counts = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPtsStatus.size()= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 184
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;

    .line 185
    .restart local v6       #pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    iget v7, v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mCnt:I

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mLastX:I

    .line 187
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mLastY:I

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 168
    .end local v2           #i:I
    .end local v5           #pointCt:I
    .end local v6           #pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    :cond_3
    if-eq v1, v9, :cond_4

    if-ne v1, v10, :cond_1

    .line 170
    :cond_4
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPtsStatus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;

    .line 171
    .restart local v6       #pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    invoke-virtual {v6}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->setUTimeStamp()V

    goto :goto_0

    .line 175
    .end local v6           #pt:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
    :cond_5
    if-ne v1, v10, :cond_2

    .line 176
    const/4 v7, 0x0

    iput v7, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;->mPointerNumDetected:I

    goto :goto_1

    .line 190
    .restart local v2       #i:I
    .restart local v5       #pointCt:I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 191
    return v10
.end method
