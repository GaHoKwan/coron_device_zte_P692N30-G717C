.class Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;
.super Ljava/lang/Thread;
.source "TsVerifyShakingPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiversityThread"
.end annotation


# instance fields
.field private mCrossPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;Landroid/view/SurfaceHolder;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "s"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 180
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 174
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 175
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    .line 176
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    .line 177
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRect:Landroid/graphics/Rect;

    .line 178
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mCrossPaint:Landroid/graphics/Paint;

    .line 181
    iput-object p2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4110

    iget-object v2, p1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mZoom:I
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$100(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$200(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v1

    iget-object v2, p1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$300(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRect:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mCrossPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 191
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x41a0

    .line 213
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$400(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v1, v0

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v2, v0

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v3, v0

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v1, v0

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v2, v0

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v3, v0

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$700(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPointError:D
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$800(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$300(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 232
    :goto_1
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$400(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v2, v2, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmapPad:I
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$600(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v2, v2, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v3, v3, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmapPad:I
    invoke-static {v3}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$600(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Average shaking error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$900(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$300(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRun:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$000(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 199
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    if-eqz v0, :cond_1

    .line 201
    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->doDraw(Landroid/graphics/Canvas;)V

    .line 203
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 206
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    throw v1

    .line 210
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_3
    return-void
.end method
