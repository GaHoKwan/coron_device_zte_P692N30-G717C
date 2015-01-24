.class public abstract Lcom/android/mipop/cropimage/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/mipop/cropimage/w;


# instance fields
.field protected aQ:Landroid/graphics/Paint;

.field protected bX:I

.field protected bY:I

.field protected bZ:I

.field protected ca:I

.field protected cb:I

.field protected cc:I

.field protected cd:Landroid/graphics/Paint;

.field protected ce:Landroid/graphics/Paint;

.field protected cf:Landroid/graphics/Paint;

.field protected cg:Landroid/graphics/Rect;

.field protected ch:Landroid/graphics/Rect;

.field protected ci:Landroid/graphics/Rect;

.field protected cj:[Landroid/graphics/Rect;

.field protected ck:Landroid/graphics/Bitmap;

.field protected cl:Landroid/graphics/Bitmap;

.field protected cm:F

.field protected cn:[Landroid/graphics/Point;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mipop/cropimage/m;->mContext:Landroid/content/Context;

    new-array v0, v5, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    new-array v0, v5, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cn:[Landroid/graphics/Point;

    move v0, v1

    :goto_0
    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cn:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->ch:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->ci:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020014

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cl:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cl:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cl:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->cl:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cl:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cl:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    new-array v0, v4, [I

    const/high16 v2, -0x2000

    aput v2, v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->ck:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cd:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cd:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cd:Landroid/graphics/Paint;

    const v1, -0x59595a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cd:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cf:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cf:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cf:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->aQ:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 0

    iput p1, p0, Lcom/android/mipop/cropimage/m;->cm:F

    iput p2, p0, Lcom/android/mipop/cropimage/m;->cb:I

    iput p3, p0, Lcom/android/mipop/cropimage/m;->cc:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    return-void
.end method

.method public d(II)V
    .locals 5

    iput p1, p0, Lcom/android/mipop/cropimage/m;->bY:I

    iput p2, p0, Lcom/android/mipop/cropimage/m;->bX:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ci:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mipop/cropimage/m;->cb:I

    iget v2, p0, Lcom/android/mipop/cropimage/m;->cc:I

    iget v3, p0, Lcom/android/mipop/cropimage/m;->cb:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/mipop/cropimage/m;->cc:I

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->ci:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected z()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cn:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cn:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cn:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cn:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/mipop/cropimage/m;->bZ:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/android/mipop/cropimage/m;->cb:I

    iget v2, p0, Lcom/android/mipop/cropimage/m;->cc:I

    iget v3, p0, Lcom/android/mipop/cropimage/m;->bX:I

    iget v4, p0, Lcom/android/mipop/cropimage/m;->cb:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/mipop/cropimage/m;->cb:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/mipop/cropimage/m;->bY:I

    iget v5, p0, Lcom/android/mipop/cropimage/m;->cc:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/mipop/cropimage/m;->bY:I

    iget v5, p0, Lcom/android/mipop/cropimage/m;->cc:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/m;->cj:[Landroid/graphics/Rect;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/m;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/mipop/cropimage/m;->bX:I

    iget v4, p0, Lcom/android/mipop/cropimage/m;->cb:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/m;->bY:I

    iget v5, p0, Lcom/android/mipop/cropimage/m;->cc:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
