.class public Lcom/android/mipop/cropimage/CropImageEx;
.super Landroid/app/Activity;


# static fields
.field public static az:Landroid/graphics/Bitmap;


# instance fields
.field aA:Landroid/view/View$OnClickListener;

.field aB:Landroid/view/View$OnClickListener;

.field aC:Landroid/view/View$OnClickListener;

.field private ai:Lcom/android/mipop/cropimage/CropView;

.field private aj:Landroid/widget/Button;

.field private ak:Landroid/widget/Button;

.field private al:Landroid/widget/Button;

.field private am:Landroid/widget/Button;

.field private an:Landroid/widget/Button;

.field private ao:Landroid/widget/Button;

.field private ap:Landroid/widget/Button;

.field private aq:Landroid/widget/ImageView;

.field private ar:Landroid/widget/LinearLayout;

.field private as:Landroid/widget/LinearLayout;

.field private at:Landroid/widget/Button;

.field private au:Lcom/android/mipop/cropimage/y;

.field private av:Lcom/android/mipop/cropimage/ab;

.field private aw:Lcom/android/mipop/cropimage/k;

.field private ax:Z

.field private ay:Z

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ax:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ay:Z

    new-instance v0, Lcom/android/mipop/cropimage/ad;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/ad;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aA:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/cropimage/ac;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/ac;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aB:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/cropimage/ae;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/ae;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aC:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/cropimage/CropImageEx;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx;->at:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->as:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropImageEx;->o()V

    return-void
.end method

.method static synthetic d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropImageEx;->n()V

    return-void
.end method

.method static synthetic f(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->at:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/y;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->au:Lcom/android/mipop/cropimage/y;

    return-object v0
.end method

.method static synthetic h(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/ab;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->av:Lcom/android/mipop/cropimage/ab;

    return-object v0
.end method

.method static synthetic i(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/k;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aw:Lcom/android/mipop/cropimage/k;

    return-object v0
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x42b4

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    new-instance v0, Lcom/android/mipop/cropimage/n;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/CropView;->W()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/mipop/cropimage/n;->c(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private o()V
    .locals 2

    new-instance v0, Lcom/android/mipop/cropimage/n;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/CropView;->W()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/mipop/cropimage/n;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ax:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ax:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "backuri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "backuri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v6, v3, :cond_0

    if-le v7, v2, :cond_4

    :cond_0
    if-le v6, v7, :cond_3

    div-int v2, v6, v2

    div-int v3, v7, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ay:Z

    if-nez v0, :cond_7

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->setContentView(I)V

    :goto_3
    new-instance v0, Lcom/android/mipop/cropimage/y;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->au:Lcom/android/mipop/cropimage/y;

    new-instance v0, Lcom/android/mipop/cropimage/ab;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->av:Lcom/android/mipop/cropimage/ab;

    new-instance v0, Lcom/android/mipop/cropimage/k;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aw:Lcom/android/mipop/cropimage/k;

    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/CropView;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ay:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/mipop/cropimage/CropView;->g(I)V

    :goto_4
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropImageEx;->m()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/mipop/cropimage/CropView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx;->au:Lcom/android/mipop/cropimage/y;

    invoke-virtual {v0, v2}, Lcom/android/mipop/cropimage/CropView;->a(Lcom/android/mipop/cropimage/w;)V

    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aq:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aq:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx;->aA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ar:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->as:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ak:Landroid/widget/Button;

    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aj:Landroid/widget/Button;

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->al:Landroid/widget/Button;

    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->am:Landroid/widget/Button;

    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->an:Landroid/widget/Button;

    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ao:Landroid/widget/Button;

    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ap:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->an:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->at:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->at:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->at:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ak:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->aj:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->al:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->am:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->an:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ao:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ap:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    new-instance v1, Lcom/android/mipop/cropimage/z;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/z;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->a(Lcom/android/mipop/cropimage/a;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "frommipop"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    :try_start_2
    div-int v3, v6, v3

    div-int v2, v7, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "csx"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    const/16 v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v2, "csx"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :cond_5
    :try_start_5
    const-string v0, "csx"

    const-string v2, "nouri?"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/mipop/cropimage/n;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/n;->start()V

    sget-object v0, Lcom/android/mipop/cropimage/n;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_6
    sget-object v0, Lcom/android/mipop/cropimage/n;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :cond_7
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImageEx;->setContentView(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->g(I)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_fcreen_shot_clicked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "screen_shot_first_in"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "huangwei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mfirstIn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->aq()Lcom/android/mipop/api/MyApplication;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mipop/api/MyApplication;->i(I)V

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screen_shot_first_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->ai:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->postInvalidate()V

    return-void
.end method
