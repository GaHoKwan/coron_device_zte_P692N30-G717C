.class public Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
.super Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;
.source "PaintSliderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;,
        Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;
    }
.end annotation


# static fields
.field private static final INITIAL_WIDTH:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "PaintSliderView"


# instance fields
.field private SLIDER_VIEW_H:I

.field private leftView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;

.field private mBlockDstRect:Landroid/graphics/RectF;

.field private mBlockSrcRect:Landroid/graphics/Rect;

.field private mDstRect:Landroid/graphics/RectF;

.field private mSrcRect:Landroid/graphics/Rect;

.field private rightView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

.field private slider:Landroid/graphics/Bitmap;

.field private sliderBlock:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x7f0200d0

    .line 45
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->slider:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    const v1, 0x7f0200d1

    .line 47
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;

    .line 49
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)F
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->currentWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mDstRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->slider:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mSrcRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockDstRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockSrcRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->SLIDER_VIEW_H:I

    return v0
.end method

.method static synthetic access$9(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;)Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->rightView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

    return-object v0
.end method

.method private currentWidth()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;->getPaintWidth()F

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->SLIDER_VIEW_H:I

    .line 58
    const-string v1, "PaintSliderView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "slider : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mSrcRect:Landroid/graphics/Rect;

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 61
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->sliderBlock:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockSrcRect:Landroid/graphics/Rect;

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->mBlockDstRect:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setOrientation(I)V

    .line 65
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setGravity(I)V

    .line 67
    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->rightView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

    .line 68
    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;Landroid/content/Context;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->leftView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->SLIDER_VIEW_H:I

    const/high16 v2, 0x4110

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 71
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->leftView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;

    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->SLIDER_VIEW_H:I

    const/high16 v2, 0x3f80

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 73
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->rightView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->leftView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$LeftView;

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->addView(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->rightView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView$RightView;

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->addView(Landroid/view/View;)V

    .line 77
    const v1, 0x7f020033

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setBackgroundResource(I)V

    .line 78
    return-void
.end method
