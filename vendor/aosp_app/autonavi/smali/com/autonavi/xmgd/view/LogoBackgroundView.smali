.class public Lcom/autonavi/xmgd/view/LogoBackgroundView;
.super Landroid/view/View;


# instance fields
.field private final APPNAME_CN:Ljava/lang/String;

.field private final APPNAME_EN:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mBackground:Landroid/graphics/Bitmap;

.field private mHasLogo:Z

.field private mHasTitle:Z

.field private mHasVersion:Z

.field private mLogo:Landroid/graphics/Bitmap;

.field private mTextSize:I

.field private mTitle:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/LogoBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/LogoBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mLogo:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTitle:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mAppVersion:Ljava/lang/String;

    const-string v0, "\u9ad8  \u5fb7  \u79fb  \u52a8  \u5bfc  \u822a  \u7cfb  \u7edf"

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->APPNAME_CN:Ljava/lang/String;

    const-string v0, "AutoNavi Mobile Navigation"

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->APPNAME_EN:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasLogo:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasTitle:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasVersion:Z

    const/16 v0, 0x19

    iput v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTextSize:I

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/LogoBackgroundView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTitle:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTextSize:I

    return-void

    :catch_0
    move-exception v0

    const-string v0, "v0.0.0.0"

    iput-object v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mAppVersion:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x4000

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/LogoBackgroundView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/LogoBackgroundView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasLogo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mLogo:Landroid/graphics/Bitmap;

    sub-int v3, v1, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sub-int v4, v2, v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v5, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasTitle:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTitle:Landroid/graphics/Bitmap;

    sub-int v3, v1, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-int/lit8 v6, v2, 0x3

    sub-int v4, v6, v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v5, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasVersion:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v3, 0x52

    const/16 v4, 0x5d

    const/16 v5, 0x66

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-int/lit8 v2, v2, 0x13

    div-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    const-string v3, "\u9ad8  \u5fb7  \u79fb  \u52a8  \u5bfc  \u822a  \u7cfb  \u7edf"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const-string v4, "\u9ad8  \u5fb7  \u79fb  \u52a8  \u5bfc  \u822a  \u7cfb  \u7edf"

    int-to-float v5, v1

    sub-float v3, v5, v3

    div-float/2addr v3, v7

    invoke-virtual {p1, v4, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v3, "AutoNavi Mobile Navigation"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const-string v4, "AutoNavi Mobile Navigation"

    int-to-float v5, v1

    sub-float v3, v5, v3

    div-float/2addr v3, v7

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const v6, 0x3f99999a

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    invoke-virtual {p1, v4, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mAppVersion:Ljava/lang/String;

    int-to-float v1, v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v7

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v5, 0x4019999a

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p1, v4, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setDrawConfig(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasLogo:Z

    iput-boolean p2, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasTitle:Z

    iput-boolean p3, p0, Lcom/autonavi/xmgd/view/LogoBackgroundView;->mHasVersion:Z

    return-void
.end method
