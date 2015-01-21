.class Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;
.super Landroid/view/View;
.source "PaintSliderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeftView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 97
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    .line 92
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->paint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getSliderValue()F
    .locals 4

    .prologue
    .line 100
    sget v1, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    .line 101
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->currentWidth()F
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)F

    move-result v2

    sget v3, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MAX_PAINT_WIDTH:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 102
    .local v0, width:F
    sget v1, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    sub-float v1, v0, v1

    .line 103
    sget v2, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MAX_PAINT_WIDTH:F

    sget v3, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    sub-float/2addr v2, v3

    .line 102
    div-float/2addr v1, v2

    .line 104
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 102
    mul-float/2addr v1, v2

    return v1
.end method

.method private updateCurrentWidth(F)V
    .locals 5
    .parameter "value"

    .prologue
    .line 108
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, p1, v2

    .line 109
    .local v0, factor:F
    sget v2, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    .line 110
    sget v3, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MAX_PAINT_WIDTH:F

    sget v4, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    .line 109
    add-float v1, v2, v3

    .line 112
    .local v1, width:F
    const-string v2, "PaintSliderView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the updated current paint width : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget v2, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 115
    sget v2, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MAX_PAINT_WIDTH:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 116
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    invoke-interface {v2, v1}, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;->setPaintWidth(F)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->invalidate()V

    .line 119
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mDstRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    new-instance v3, Landroid/graphics/RectF;

    .line 128
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    #setter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mDstRect:Landroid/graphics/RectF;
    invoke-static {v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$2(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/graphics/RectF;)V

    .line 131
    :cond_0
    const-string v2, "PaintSliderView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "slider rect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mDstRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->slider:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$3(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mSrcRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$4(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Rect;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mDstRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;

    move-result-object v4

    .line 133
    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    const/high16 v2, 0x3f80

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$5(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 138
    .local v0, block_width:F
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v1, v2, v3

    .line 139
    .local v1, real_top:F
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockDstRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;

    move-result-object v2

    .line 140
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getSliderValue()F

    move-result v3

    .line 142
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getSliderValue()F

    move-result v4

    add-float/2addr v4, v0

    .line 143
    add-float v5, v1, v0

    .line 139
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    const-string v2, "PaintSliderView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "slider block rect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockDstRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$5(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockSrcRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$7(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Rect;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockDstRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$6(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;

    move-result-object v4

    .line 147
    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 153
    const/4 v1, 0x1

    .line 154
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 180
    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 160
    .local v3, touch_x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 162
    .local v4, touch_y:F
    const/high16 v5, 0x3f80

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$5(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v0, v5, v6

    .line 163
    .local v0, block_width:F
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v2, v5, v0

    .line 164
    .local v2, right:F
    cmpl-float v5, v4, v7

    if-lez v5, :cond_0

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->SLIDER_VIEW_H:I
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$8(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 165
    cmpg-float v5, v3, v7

    if-gez v5, :cond_1

    .line 166
    invoke-direct {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->updateCurrentWidth(F)V

    .line 174
    :cond_0
    :goto_1
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->rightView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$9(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

    move-result-object v5

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->invalidate()V

    .line 177
    .end local v0           #block_width:F
    .end local v2           #right:F
    .end local v3           #touch_x:F
    .end local v4           #touch_y:F
    :pswitch_1
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->resetLastTouchTime()V

    goto :goto_0

    .line 167
    .restart local v0       #block_width:F
    .restart local v2       #right:F
    .restart local v3       #touch_x:F
    .restart local v4       #touch_y:F
    :cond_1
    cmpl-float v5, v3, v2

    if-lez v5, :cond_2

    .line 168
    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->updateCurrentWidth(F)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->updateCurrentWidth(F)V

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
