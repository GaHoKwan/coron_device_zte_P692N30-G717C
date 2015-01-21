.class public Lcom/android/mipop/paintpad/view/PenPreview;
.super Landroid/view/View;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fg:Landroid/graphics/Path;

.field private fh:Z

.field private fi:Lcom/android/mipop/paintpad/a/h;

.field private fj:I

.field private j:Landroid/graphics/Canvas;

.field private paint:Landroid/graphics/Paint;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fh:Z

    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PenPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/b/b;->reset()V

    new-instance v0, Lcom/android/mipop/paintpad/a/h;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/h;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fi:Lcom/android/mipop/paintpad/a/h;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x4120

    const/high16 v5, 0x4000

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fh:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PenPreview;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PenPreview;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fg:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fg:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fg:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fg:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v2, 0x40e0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/high16 v4, 0x4110

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fi:Lcom/android/mipop/paintpad/a/h;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fg:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/a/h;->a(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fi:Lcom/android/mipop/paintpad/a/h;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/a/h;->a(Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->j:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fi:Lcom/android/mipop/paintpad/a/h;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/a/h;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fh:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public reset()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fj:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fi:Lcom/android/mipop/paintpad/a/h;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/a/h;->a(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->fi:Lcom/android/mipop/paintpad/a/h;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/a/h;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PenPreview;->invalidate()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mipop/paintpad/b/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
