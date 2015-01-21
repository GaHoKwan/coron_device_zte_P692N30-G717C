.class public Lcom/mediatek/ngin3d/Image;
.super Lcom/mediatek/ngin3d/Plane;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Image$BitmapLoader;
    }
.end annotation


# static fields
.field public static final FILTER_QUALITY_HIGH:I = 0x2

.field public static final FILTER_QUALITY_LOW:I = 0x0

.field public static final FILTER_QUALITY_MEDIUM:I = 0x1

.field static final PROP_ENABLE_MIPMAP:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_FILTER_QUALITY:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/presentation/ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_KEEP_ASPECT_RATIO:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_REPEAT_X:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_REPEAT_Y:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "image_source"

    const/4 v2, 0x0

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    .line 72
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "filter_quality"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Image;->PROP_FILTER_QUALITY:Lcom/mediatek/ngin3d/Property;

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "keep_aspect_ratio"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Image;->PROP_KEEP_ASPECT_RATIO:Lcom/mediatek/ngin3d/Property;

    .line 80
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "repeat_x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_X:Lcom/mediatek/ngin3d/Property;

    .line 84
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "repeat_y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_Y:Lcom/mediatek/ngin3d/Property;

    .line 88
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "enable_mipmap"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Image;->PROP_ENABLE_MIPMAP:Lcom/mediatek/ngin3d/Property;

    .line 91
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    new-array v1, v5, [Lcom/mediatek/ngin3d/Property;

    sget-object v2, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Property;->addDependsOn([Lcom/mediatek/ngin3d/Property;)V

    .line 92
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_SRC_RECT:Lcom/mediatek/ngin3d/Property;

    new-array v1, v5, [Lcom/mediatek/ngin3d/Property;

    sget-object v2, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Property;->addDependsOn([Lcom/mediatek/ngin3d/Property;)V

    .line 516
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ngin3d/Image;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    .line 97
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .parameter "isYUp"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    .line 101
    return-void
.end method

.method public static createEmptyImage()Lcom/mediatek/ngin3d/Image;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ngin3d/Image;->createEmptyImage(Z)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createEmptyImage(II)Lcom/mediatek/ngin3d/Image;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 175
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 176
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/ngin3d/Image;->setEmptyImage(II)V

    .line 177
    return-object v0
.end method

.method public static createEmptyImage(Z)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 185
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 186
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Image;->setEmptyImage()V

    .line 187
    return-object v0
.end method

.method public static createFromAsset(Ljava/lang/String;)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "assetName"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Image;->createFromAsset(Ljava/lang/String;Z)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Ljava/lang/String;Z)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "assetName"
    .parameter "isYUp"

    .prologue
    .line 314
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 315
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Image;->setImageFromAsset(Ljava/lang/String;)V

    .line 316
    return-object v0
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Image;->createFromBitmap(Landroid/graphics/Bitmap;Z)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;Z)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "bitmap"
    .parameter "isYUp"

    .prologue
    .line 233
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 234
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Image;->setImageFromBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    return-object v0
.end method

.method public static createFromBitmapGenerator(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "bitmapGenerator"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Image;->createFromBitmapGenerator(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;Z)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmapGenerator(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;Z)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "bitmapGenerator"
    .parameter "isYUp"

    .prologue
    .line 264
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 265
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Image;->setImageFromBitmapGenerator(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;)V

    .line 266
    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "filename"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Image;->createFromFile(Ljava/lang/String;Z)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;Z)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "filename"
    .parameter "isYUp"

    .prologue
    .line 208
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 209
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/Image;->setImageFromFile(Ljava/lang/String;)V

    .line 210
    return-object v0
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;IZ)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResource(Landroid/content/res/Resources;IZ)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "resources"
    .parameter "resId"
    .parameter "isYUp"

    .prologue
    .line 289
    new-instance v0, Lcom/mediatek/ngin3d/Image;

    invoke-direct {v0, p2}, Lcom/mediatek/ngin3d/Image;-><init>(Z)V

    .line 290
    .local v0, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/ngin3d/Image;->setImageFromResource(Landroid/content/res/Resources;I)V

    .line 291
    return-object v0
.end method

.method private setPropImgSrc(Lcom/mediatek/ngin3d/presentation/ImageSource;)V
    .locals 1
    .parameter "imgSrc"

    .prologue
    .line 427
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 428
    return-void
.end method


# virtual methods
.method protected applyBatchValues()V
    .locals 5

    .prologue
    .line 154
    sget-object v2, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_X:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 155
    .local v0, repeatX:Ljava/lang/Integer;
    sget-object v2, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_Y:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 156
    .local v1, repeatY:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setRepeat(II)V

    .line 157
    return-void
.end method

.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 7
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 112
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Plane;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 146
    :cond_0
    :goto_0
    return v4

    .line 116
    :cond_1
    sget-object v6, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, p2

    .line 117
    check-cast v3, Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 118
    .local v3, src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    .line 123
    sget-object v4, Lcom/mediatek/ngin3d/Image;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v4}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ngin3d/Dimension;

    iget v4, v4, Lcom/mediatek/ngin3d/Dimension;->width:F

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->getSize()Lcom/mediatek/ngin3d/Dimension;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ngin3d/Plane;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    :cond_2
    move v4, v5

    .line 126
    goto :goto_0

    .line 127
    .end local v3           #src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    :cond_3
    sget-object v6, Lcom/mediatek/ngin3d/Image;->PROP_FILTER_QUALITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, p2

    .line 128
    check-cast v2, Ljava/lang/Integer;

    .line 129
    .local v2, quality:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setFilterQuality(I)V

    move v4, v5

    .line 130
    goto :goto_0

    .line 131
    .end local v2           #quality:Ljava/lang/Integer;
    :cond_4
    sget-object v6, Lcom/mediatek/ngin3d/Image;->PROP_KEEP_ASPECT_RATIO:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, p2

    .line 132
    check-cast v1, Ljava/lang/Boolean;

    .line 133
    .local v1, kar:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->setKeepAspectRatio(Z)V

    move v4, v5

    .line 134
    goto :goto_0

    .line 135
    .end local v1           #kar:Ljava/lang/Boolean;
    :cond_5
    sget-object v6, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_X:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    move v4, v5

    .line 137
    goto :goto_0

    .line 138
    :cond_6
    sget-object v6, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_Y:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 139
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    move v4, v5

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    sget-object v6, Lcom/mediatek/ngin3d/Image;->PROP_ENABLE_MIPMAP:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, p2

    .line 142
    check-cast v0, Ljava/lang/Boolean;

    .line 143
    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Plane;->getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/mediatek/ngin3d/presentation/ImageDisplay;->enableMipmap(Z)V

    move v4, v5

    .line 144
    goto/16 :goto_0
.end method

.method public enableMipmap(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 504
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_ENABLE_MIPMAP:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public getFilterQuality()I
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_FILTER_QUALITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRepeatX()I
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_X:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRepeatY()I
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_Y:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isKeepAspectRatio()Z
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_KEEP_ASPECT_RATIO:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMipmapEnable()Z
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_ENABLE_MIPMAP:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadAsync()V
    .locals 4

    .prologue
    .line 537
    sget-object v2, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 538
    .local v1, src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget v2, v1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 542
    iget-object v0, v1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;

    .line 543
    .local v0, generator:Lcom/mediatek/ngin3d/presentation/BitmapGenerator;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 544
    sget-object v2, Lcom/mediatek/ngin3d/Image;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/mediatek/ngin3d/Image$BitmapLoader;

    invoke-direct {v3, p0, v1}, Lcom/mediatek/ngin3d/Image$BitmapLoader;-><init>(Lcom/mediatek/ngin3d/Image;Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public setEmptyImage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 323
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v2, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public setEmptyImage(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 331
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v2, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public setFilterQuality(I)V
    .locals 3
    .parameter "quality"

    .prologue
    .line 436
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_FILTER_QUALITY:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public setImageFromAsset(Ljava/lang/String;)V
    .locals 3
    .parameter "assetName"

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "asset name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public setImageFromBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bitmap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public setImageFromBitmapGenerator(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;)V
    .locals 3
    .parameter "bitmapGenerator"

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bitmapGenerator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method public setImageFromFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public setImageFromResource(Landroid/content/res/Resources;I)V
    .locals 7
    .parameter "resources"
    .parameter "resId"

    .prologue
    const/4 v5, 0x3

    const/high16 v4, -0x4080

    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "resources cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_0
    new-instance v3, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    invoke-direct {v3, p1, p2}, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;-><init>(Landroid/content/res/Resources;I)V

    .line 389
    .local v3, res:Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;
    new-instance v1, Lcom/mediatek/ngin3d/Box;

    invoke-direct {v1}, Lcom/mediatek/ngin3d/Box;-><init>()V

    .line 390
    .local v1, box:Lcom/mediatek/ngin3d/Box;
    new-instance v2, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v2, v4, v4}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    .line 393
    .local v2, dim:Lcom/mediatek/ngin3d/Dimension;
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->beginPropertiesModification()Lcom/mediatek/ngin3d/BatchPropertyModification;

    .line 394
    invoke-static {}, Lcom/mediatek/ngin3d/TextureAtlas;->getDefault()Lcom/mediatek/ngin3d/TextureAtlas;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Lcom/mediatek/ngin3d/TextureAtlas;->getFrame(Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;Lcom/mediatek/ngin3d/Box;Lcom/mediatek/ngin3d/Dimension;)Lcom/mediatek/ngin3d/TextureAtlas$Atlas;

    move-result-object v0

    .line 395
    .local v0, atlas:Lcom/mediatek/ngin3d/TextureAtlas$Atlas;
    if-nez v0, :cond_1

    .line 396
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/mediatek/ngin3d/Plane;->setSourceRect(Lcom/mediatek/ngin3d/Box;)V

    .line 397
    new-instance v4, Lcom/mediatek/ngin3d/presentation/ImageSource;

    invoke-direct {v4, v5, v3}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/mediatek/ngin3d/Image;->setPropImgSrc(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    .line 409
    :goto_0
    sget-object v4, Lcom/mediatek/ngin3d/Image;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v4, v2}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 410
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->commit()V

    .line 411
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Plane;->setSourceRect(Lcom/mediatek/ngin3d/Box;)V

    .line 401
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->getAssetName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 402
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->getResourceId()I

    move-result v4

    iput v4, v3, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    .line 403
    new-instance v4, Lcom/mediatek/ngin3d/presentation/ImageSource;

    invoke-direct {v4, v5, v3}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/mediatek/ngin3d/Image;->setPropImgSrc(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    goto :goto_0

    .line 405
    :cond_2
    new-instance v4, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v5, 0x6

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->getAssetName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/mediatek/ngin3d/Image;->setPropImgSrc(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    goto :goto_0
.end method

.method public setKeepAspectRatio(Z)V
    .locals 2
    .parameter "kar"

    .prologue
    .line 457
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_KEEP_ASPECT_RATIO:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public setRepeat(II)V
    .locals 2
    .parameter "repeatX"
    .parameter "repeatY"

    .prologue
    .line 476
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_X:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/mediatek/ngin3d/Image;->PROP_REPEAT_Y:Lcom/mediatek/ngin3d/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 478
    return-void
.end method
