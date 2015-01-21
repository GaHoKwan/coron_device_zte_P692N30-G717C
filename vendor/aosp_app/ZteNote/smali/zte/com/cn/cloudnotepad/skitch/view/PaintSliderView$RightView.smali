.class Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;
.super Landroid/view/View;
.source "PaintSliderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RightView"
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
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 206
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    .line 200
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->paint:Landroid/graphics/Paint;

    .line 202
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 210
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;->getPaintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 214
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->currentWidth()F
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->paint:Landroid/graphics/Paint;

    .line 213
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method
