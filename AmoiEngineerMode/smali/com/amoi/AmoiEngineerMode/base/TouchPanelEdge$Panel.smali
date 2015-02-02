.class Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;
.super Landroid/view/View;
.source "TouchPanelEdge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Panel"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

.field private traceCounter:I


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter "context"

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x64

    .line 177
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    .line 178
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p1}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->getTestPoint()Ljava/util/ArrayList;

    move-result-object v3

    .line 181
    .local v3, localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;>;"
    iput-object v3, p1, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    .line 182
    new-array v0, v8, [Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

    .line 183
    .local v0, arrayOfTouchData1:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

    .line 184
    const/4 v6, 0x0

    iput v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->traceCounter:I

    .line 185
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 186
    .local v4, localPaint:Landroid/graphics/Paint;
    iput-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 191
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

    .line 192
    .local v1, arrayOfTouchData2:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    new-instance v5, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

    invoke-direct {v5, p1}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)V

    .line 193
    .local v5, localTouchData:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    aput-object v5, v1, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 195
    goto :goto_0

    .line 196
    .end local v1           #arrayOfTouchData2:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    .end local v5           #localTouchData:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    :cond_0
    return-void
.end method

.method private getNext(I)I
    .locals 2
    .parameter "paramInt"

    .prologue
    .line 199
    add-int/lit8 v0, p1, 0x1

    .line 200
    .local v0, i:I
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 203
    :cond_0
    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "paramCanvas"

    .prologue
    const/high16 v13, -0x1

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    const/high16 v10, 0x41a0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "W: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->w:F
    invoke-static {v10}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$000(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, str1:Ljava/lang/String;
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I
    invoke-static {v9}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$100(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/lit16 v9, v9, -0x96

    int-to-float v0, v9

    .line 213
    .local v0, f2:F
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I
    invoke-static {v9}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$200(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x64

    int-to-float v1, v9

    .line 214
    .local v1, f3:F
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "H: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->h:F
    invoke-static {v10}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$300(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, str2:Ljava/lang/String;
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I
    invoke-static {v9}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$100(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/lit16 v9, v9, -0x96

    int-to-float v2, v9

    .line 218
    .local v2, f5:F
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I
    invoke-static {v9}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$200(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x50

    int-to-float v3, v9

    .line 219
    .local v3, f6:F
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 221
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I
    invoke-static {v10}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$400(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, i:I
    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    iget-object v9, v9, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 225
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    iget-object v9, v9, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    .line 227
    .local v5, localEdgePoint:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget v9, v5, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->x:I

    int-to-float v9, v9

    iget v10, v5, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->y:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    iget-object v12, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    .end local v5           #localEdgePoint:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/16 v9, 0x1e

    if-ge v4, v9, :cond_2

    .line 232
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

    aget-object v6, v9, v4

    .line 233
    .local v6, localTouchData:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget v9, v6, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;->r:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 235
    iget v9, v6, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;->x:F

    iget v10, v6, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;->y:F

    const/high16 v11, 0x4000

    iget-object v12, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    .end local v6           #localTouchData:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    :cond_2
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->invalidate()V

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "paramMotionEvent"

    .prologue
    const/4 v11, 0x1

    .line 243
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    #setter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->w:F
    invoke-static {v9, v10}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$002(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;F)F

    .line 244
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    #setter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->h:F
    invoke-static {v9, v10}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$302(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;F)F

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 246
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 248
    .local v8, y:F
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I
    invoke-static {v9}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->access$400(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I

    move-result v6

    .line 250
    .local v6, radius:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v11, :cond_4

    .line 253
    :cond_0
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    iget-object v9, v9, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 254
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    iget-object v9, v9, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 255
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    iget-object v9, v9, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    .line 257
    .local v2, localEdgePoint:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    iget v9, v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->x:I

    int-to-float v4, v9

    .line 258
    .local v4, point_x:F
    iget v9, v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->y:I

    int-to-float v5, v9

    .line 259
    .local v5, point_y:F
    int-to-float v9, v6

    sub-float v9, v4, v9

    cmpg-float v9, v9, v7

    if-gez v9, :cond_1

    int-to-float v9, v6

    add-float/2addr v9, v4

    cmpl-float v9, v9, v7

    if-lez v9, :cond_1

    int-to-float v9, v6

    sub-float v9, v5, v9

    cmpg-float v9, v9, v8

    if-gez v9, :cond_1

    int-to-float v9, v6

    add-float/2addr v9, v5

    cmpl-float v9, v9, v8

    if-lez v9, :cond_1

    .line 261
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    iget-object v9, v9, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 254
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1           #i:I
    .end local v2           #localEdgePoint:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    .end local v4           #point_x:F
    .end local v5           #point_y:F
    :cond_2
    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    invoke-static {v9}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->next(Landroid/app/Activity;)V

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->mTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;

    .line 268
    .local v0, arrayOfTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    iget v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->traceCounter:I

    aget-object v3, v0, v9

    .line 269
    .local v3, localTouchData:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    iput v7, v3, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;->x:F

    .line 270
    iput v8, v3, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;->y:F

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    const/high16 v10, 0x43fa

    mul-float/2addr v9, v10

    iput v9, v3, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;->r:F

    .line 272
    iget v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->traceCounter:I

    invoke-direct {p0, v9}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->getNext(I)I

    move-result v9

    iput v9, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->traceCounter:I

    .line 274
    .end local v0           #arrayOfTouchData:[Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    .end local v3           #localTouchData:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;
    :cond_4
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;->invalidate()V

    .line 275
    return v11
.end method
