.class public Lcom/mediatek/vlw/VideoChooser;
.super Landroid/app/Activity;
.source "VideoChooser.java"


# static fields
.field private static final COVER_EXTEND_IMAGE:F = 0.5f

.field private static final COVER_MULTIPLE_IMAGE:F = 0.25f

.field private static final DEBUG:Z = false

.field static final DEFAULT_SCALE:F = 1.0f

.field private static final IMAGE_REFLECTION:F = 0.25f

.field private static final MAX_VIDEO_COUNT:I = 0x4

.field private static final MAX_ZOOM_OUT:F = 350.0f

.field private static final PATH:Ljava/lang/String; = "/raw/"

.field private static final SCHEMA:Ljava/lang/String; = "android.resource://"

.field private static final TAG:Ljava/lang/String; = "VideoChooser"


# instance fields
.field private mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

.field private mBookmark:Lcom/mediatek/widget/BookmarkView;

.field private mBookmarkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/widget/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mImgHeight:I

.field private mImgWidth:I

.field private final mLock:Ljava/lang/Object;

.field private final mSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSelectedPos:I

.field private final mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbIndex:I

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/mediatek/vlw/VideoChooser$1;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoChooser$1;-><init>(Lcom/mediatek/vlw/VideoChooser;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mTask:Landroid/os/AsyncTask;

    .line 154
    new-instance v0, Lcom/mediatek/vlw/VideoChooser$2;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VideoChooser$2;-><init>(Lcom/mediatek/vlw/VideoChooser;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/VideoChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/vlw/VideoChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmarkItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/vlw/VideoChooser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VideoChooser;->mImgWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/vlw/VideoChooser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VideoChooser;->mImgHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/vlw/VideoChooser;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/vlw/VideoChooser;->createVideoThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/vlw/VideoChooser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/vlw/VideoChooser;->mThumbIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/vlw/VideoChooser;)Lcom/mediatek/widget/BookmarkAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/vlw/VideoChooser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/vlw/VideoChooser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/vlw/VideoChooser;)Lcom/mediatek/widget/BookmarkView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    return-object v0
.end method

.method private addVideo(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 10
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 307
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, extras:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 309
    .local v6, uri:Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/raw/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, uriString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 312
    .local v5, tmp:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 313
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 316
    iget-object v8, p0, Lcom/mediatek/vlw/VideoChooser;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    .end local v1           #extra:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createVideoThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 230
    if-nez p1, :cond_0

    .line 284
    .end local p1
    :goto_0
    return-object p1

    .line 234
    .restart local p1
    :cond_0
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p1, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 239
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 240
    .local v3, newbm:Landroid/graphics/Bitmap;
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 241
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v0, c:Landroid/graphics/Canvas;
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 243
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 244
    .local v6, targetRect:Landroid/graphics/Rect;
    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 245
    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 249
    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v7

    .line 250
    .local v2, deltaw:I
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v7

    .line 257
    .local v1, deltah:I
    const/high16 v5, 0x3f80

    .line 258
    .local v5, scale:F
    if-gtz v2, :cond_1

    if-lez v1, :cond_3

    .line 259
    :cond_1
    if-le v2, v1, :cond_2

    .line 260
    int-to-float v7, p2

    iget v8, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 272
    :goto_1
    iget v7, v6, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 273
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 274
    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v7

    .line 275
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v7

    .line 277
    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 278
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 279
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 280
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 281
    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v3

    .line 284
    goto :goto_0

    .line 262
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_2
    int-to-float v7, p3

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    div-float v5, v7, v8

    goto :goto_1

    .line 265
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 266
    int-to-float v7, p2

    iget v8, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    div-float v5, v7, v8

    goto :goto_1

    .line 268
    :cond_4
    int-to-float v7, p3

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    div-float v5, v7, v8

    goto :goto_1
.end method

.method private findVideo()V
    .locals 10

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 289
    .local v5, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, packageName:Ljava/lang/String;
    const/high16 v8, 0x7f06

    invoke-direct {p0, v5, v4, v8}, Lcom/mediatek/vlw/VideoChooser;->addVideo(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 292
    const v8, 0x7f060001

    invoke-direct {p0, v5, v4, v8}, Lcom/mediatek/vlw/VideoChooser;->addVideo(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 295
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020009

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/vlw/VideoChooser;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 299
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, info:Ljava/lang/String;
    new-instance v3, Lcom/mediatek/widget/BookmarkItem;

    invoke-direct {v3, v0, v7, v2}, Lcom/mediatek/widget/BookmarkItem;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v3, item:Lcom/mediatek/widget/BookmarkItem;
    iget-object v8, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v2           #info:Ljava/lang/String;
    .end local v3           #item:Lcom/mediatek/widget/BookmarkItem;
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/high16 v4, 0x3e80

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mUris:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmarkItems:Ljava/util/ArrayList;

    .line 201
    const v1, 0x7f0a0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/widget/BookmarkView;

    iput-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    .line 202
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/vlw/VideoChooser;->mImgWidth:I

    .line 203
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/vlw/VideoChooser;->mImgHeight:I

    .line 206
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoChooser;->findVideo()V

    .line 207
    new-instance v1, Lcom/mediatek/widget/BookmarkAdapter;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/widget/BookmarkAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    .line 208
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v1, v2}, Lcom/mediatek/widget/BookmarkView;->setBookmarkAdapter(Lcom/mediatek/widget/BookmarkAdapter;)V

    .line 209
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    invoke-virtual {v1}, Lcom/mediatek/widget/BookmarkView;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    iget v2, p0, Lcom/mediatek/vlw/VideoChooser;->mImgWidth:I

    iget v3, p0, Lcom/mediatek/vlw/VideoChooser;->mImgHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/widget/BookmarkView;->setImageDispSize(II)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    iget v2, p0, Lcom/mediatek/vlw/VideoChooser;->mImgWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mediatek/widget/BookmarkView;->setCoverFlowSpacing(I)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    invoke-virtual {v1, v4}, Lcom/mediatek/widget/BookmarkView;->setImageReflection(F)V

    .line 216
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;

    invoke-virtual {v1}, Lcom/mediatek/widget/BookmarkView;->getCoverFlow()Landroid/widget/BounceCoverFlow;

    move-result-object v0

    .line 217
    .local v0, gallery:Landroid/widget/BounceCoverFlow;
    iget v1, p0, Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 219
    const/high16 v1, 0x43af

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setMaxZoomOut(F)V

    .line 220
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser;->mTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method


# virtual methods
.method public getRetrievedThumbIndex()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/mediatek/vlw/VideoChooser;->mThumbIndex:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 175
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 176
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoChooser;->initViews()V

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 181
    iget-object v3, p0, Lcom/mediatek/vlw/VideoChooser;->mTask:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/mediatek/vlw/VideoChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/BookmarkItem;

    .line 185
    .local v2, item:Lcom/mediatek/widget/BookmarkItem;
    invoke-virtual {v2}, Lcom/mediatek/widget/BookmarkItem;->getContentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 190
    .end local v2           #item:Lcom/mediatek/widget/BookmarkItem;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    return-void
.end method

.method public selectVideo(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, result:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/vlw/VideoChooser;->mUris:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 330
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 331
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 332
    iget-object v2, p0, Lcom/mediatek/vlw/VideoChooser;->mTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 334
    return-void
.end method
