.class public Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;
.super Landroid/view/View;
.source "HandwriteViewHeader.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;


# instance fields
.field private final topLine:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->topLine:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->getWidth()I

    move-result v4

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->HEADER_W:F

    float-to-int v5, v5

    div-int v1, v4, v5

    .line 48
    .local v1, k:I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->topLine:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->topLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .local v3, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RectF;

    sget v4, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->SPACING:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->getHeight()I

    move-result v5

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->topLine:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 54
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->getWidth()I

    move-result v6

    sget v7, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->SPACING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 53
    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    .local v0, dstRect:Landroid/graphics/RectF;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandwriteViewHeader;->topLine:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 57
    return-void
.end method
