.class public Lcom/android/mipop/paintpad/view/PaintPad;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private context:Landroid/content/Context;

.field private d:F

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Paint;

.field private g:Z

.field private h:Lcom/android/mipop/paintpad/a/b;

.field private final i:Lcom/android/mipop/paintpad/a/b;

.field private icon:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Canvas;

.field private k:I

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Z

.field o:I

.field p:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->i:Lcom/android/mipop/paintpad/a/b;

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->n:Z

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->o:I

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->p:I

    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PaintPad;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->i:Lcom/android/mipop/paintpad/a/b;

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->n:Z

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->o:I

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->p:I

    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PaintPad;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->i:Lcom/android/mipop/paintpad/a/b;

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->n:Z

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->o:I

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->p:I

    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PaintPad;->init(Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->n:Z

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    iput-boolean v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->g:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->icon:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->k:I

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/view/PaintPad;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->k:I

    invoke-static {p1}, Lcom/android/mipop/paintpad/a/i;->n(I)Lcom/android/mipop/paintpad/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->o:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->p:I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->n:Z

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->b:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->k:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->i()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->i:Lcom/android/mipop/paintpad/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/a/b;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lcom/android/mipop/paintpad/a/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->i:Lcom/android/mipop/paintpad/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->i()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    :cond_3
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/a/b;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/a/b;->a(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->i()V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->i()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->i:Lcom/android/mipop/paintpad/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    return-void
.end method

.method public j()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/android/mipop/cropimage/n;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/mipop/cropimage/n;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/android/mipop/cropimage/n;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/mipop/cropimage/n;->c(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->n:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    instance-of v0, v0, Lcom/android/mipop/paintpad/a/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    invoke-virtual {v0, p1}, Lcom/android/mipop/paintpad/a/b;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    instance-of v0, v0, Lcom/android/mipop/paintpad/a/f;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->icon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->c:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->d:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iget v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->k:I

    invoke-static {v2}, Lcom/android/mipop/paintpad/a/i;->n(I)Lcom/android/mipop/paintpad/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bl()Lcom/android/mipop/paintpad/b/b;

    iput-boolean v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->g:Z

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mipop/paintpad/a/b;->a(FFLandroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->c:F

    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->d:F

    iput-boolean v5, p0, Lcom/android/mipop/paintpad/view/PaintPad;->g:Z

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mipop/paintpad/a/b;->b(FFLandroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->c:F

    iput v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->d:F

    iput-boolean v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->g:Z

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->j:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mipop/paintpad/a/b;->c(FFLandroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->h:Lcom/android/mipop/paintpad/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
