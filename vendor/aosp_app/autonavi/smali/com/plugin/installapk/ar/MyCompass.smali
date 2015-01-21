.class public Lcom/plugin/installapk/ar/MyCompass;
.super Landroid/view/View;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.MyCompass"


# instance fields
.field height:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/plugin/installapk/ar/MyCompass;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/plugin/installapk/ar/MyCompass;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/plugin/installapk/ar/MyCompass;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/plugin/installapk/ar/MyCompass;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/MyCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/plugin/installapk/ar/MyCompass;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/plugin/installapk/ar/MyCompass;->height:I

    iput-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/plugin/installapk/ar/MyCompass;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/plugin/installapk/ar/MyCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 3

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyCompass;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plugin/installapk/ar/MyCompass;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/plugin/installapk/ar/MyCompass;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/MyCompass;->invalidate()V

    return-void
.end method
