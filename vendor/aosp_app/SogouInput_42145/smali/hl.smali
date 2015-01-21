.class public Lhl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x6

    sput v0, Lhl;->a:I

    return-void
.end method

.method private static a(Ljava/lang/String;ILandroid/graphics/Paint;F)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    .line 201
    add-int/lit8 v0, p1, 0x2

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 203
    :goto_0
    if-gt v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 205
    cmpl-float v2, v2, p3

    if-lez v2, :cond_2

    .line 208
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 209
    if-gt v0, v1, :cond_3

    .line 210
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 211
    cmpl-float v1, v1, p3

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 213
    :cond_1
    :goto_1
    return v0

    .line 203
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 212
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Ljq;)Lhn;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lhl;->b(Ljq;)Lhn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lhl;->a:I

    if-le v0, v1, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 184
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42b4

    mul-float/2addr v1, v2

    .line 186
    invoke-static {p3, v4, v0, v1}, Lhl;->a(Ljava/lang/String;ILandroid/graphics/Paint;F)I

    move-result v2

    .line 187
    invoke-virtual {p3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 190
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-static {p3, v2, v0, v1}, Lhl;->a(Ljava/lang/String;ILandroid/graphics/Paint;F)I

    move-result v0

    .line 192
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljq;

    .line 51
    invoke-static {v1}, Lhl;->a(Ljq;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    :cond_1
    invoke-static {p0}, Laox;->a(Landroid/view/View;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/widget/ImageView;Lhk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1}, Lhl;->b(Landroid/widget/ImageView;Lhk;)V

    return-void
.end method

.method public static a(Lhk;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    if-eqz p0, :cond_1

    .line 141
    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    iput-object v1, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_0
    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    iput-object v1, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_1
    return-void
.end method

.method static synthetic a(Lhk;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1}, Lhl;->b(Lhk;Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v0}, Lhl;->c(Lhk;)V

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 87
    if-eqz v0, :cond_1

    .line 88
    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    iput-object v3, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_2
    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    iput-object v3, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 103
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public static a(Ljq;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p0, :cond_0

    .line 65
    iget-object v0, p0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 66
    iput-object v1, p0, Ljq;->a:Landroid/widget/RelativeLayout;

    .line 67
    iget-object v0, p0, Ljq;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iput-object v1, p0, Ljq;->a:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Ljq;->d:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 73
    iput-object v1, p0, Ljq;->d:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Ljq;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 76
    iput-object v1, p0, Ljq;->b:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Ljq;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 79
    iput-object v1, p0, Ljq;->c:Landroid/widget/ImageView;

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic a(Lhk;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lhl;->b(Lhk;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljq;Lhk;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 391
    invoke-static {p0}, Lhl;->b(Ljq;)Lhn;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    invoke-static {v2}, Lhn;->a(Lhn;)Lhk;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 393
    if-eqz p1, :cond_0

    iget-object v3, p1, Lhk;->d:Ljava/lang/String;

    invoke-static {v2}, Lhn;->a(Lhn;)Lhk;

    move-result-object v4

    iget-object v4, v4, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 395
    :cond_0
    invoke-virtual {v2, v0}, Lhn;->cancel(Z)Z

    .line 396
    invoke-virtual {p0}, Ljq;->a()Lhk;

    move-result-object v3

    iput-boolean v1, v3, Lhk;->f:Z

    .line 397
    invoke-static {v2}, Lhn;->a(Lhn;)Lhk;

    move-result-object v1

    invoke-static {v1}, Lhl;->c(Lhk;)V

    .line 406
    :cond_1
    :goto_0
    return v0

    .line 399
    :cond_2
    invoke-virtual {v2}, Lhn;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 401
    goto :goto_0
.end method

.method private static b(Ljq;)Lhn;
    .locals 2
    .parameter

    .prologue
    .line 411
    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Ljq;->a()Lhk;

    move-result-object v0

    .line 413
    instance-of v1, v0, Lhm;

    if-eqz v1, :cond_0

    .line 414
    check-cast v0, Lhm;

    .line 415
    invoke-virtual {v0}, Lhm;->a()Lhn;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/widget/ImageView;Lhk;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 526
    if-eqz p0, :cond_0

    .line 527
    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The previewPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Ljava/lang/String;)V

    .line 534
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 536
    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    :cond_2
    sget v0, Laox;->a:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 540
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 541
    iput-object v1, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    .line 542
    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 547
    :cond_4
    const v0, 0x7f020159

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lhk;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lhl;->d(Lhk;)V

    return-void
.end method

.method private static b(Lhk;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 422
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhk;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const v1, 0x7f0b03e5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :try_start_1
    const-string v0, "skin.ini"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 431
    if-nez v0, :cond_2

    const-string v0, "Skin.ini"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 432
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/sogou/sga/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lhk;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "tmp.ini"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 435
    invoke-static {v4}, Lavi;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 437
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 438
    const/4 v4, 0x0

    invoke-static {v0, v5, v2, v4}, Lavi;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 441
    new-instance v0, Layx;

    invoke-direct {v0, v2}, Layx;-><init>(Ljava/lang/String;)V

    .line 442
    const-string v4, "General"

    const-string v5, "skin_name"

    invoke-static {v0, v4, v5, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lhk;->a:Ljava/lang/String;

    .line 443
    const-string v4, "General"

    const-string v5, "skin_author"

    invoke-static {v0, v4, v5, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lhk;->e:Ljava/lang/String;

    .line 444
    const-string v3, "General"

    const-string v4, "skin_id"

    const-string v5, ""

    invoke-static {v0, v3, v4, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lhk;->j:Ljava/lang/String;

    .line 445
    const-string v3, "General"

    const-string v4, "preview_square"

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lhk;->g:Ljava/lang/String;

    .line 447
    iget-object v3, p0, Lhk;->g:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    :cond_3
    const-string v3, "Scheme_V2"

    const-string v4, "zhongwen_pic"

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lhk;->g:Ljava/lang/String;

    .line 450
    :cond_4
    iget-object v3, p0, Lhk;->g:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 451
    :cond_5
    const-string v3, "Scheme_V1"

    const-string v4, "pic"

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk;->g:Ljava/lang/String;

    .line 453
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhk;->g:Z

    .line 456
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    :cond_8
    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 458
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 460
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 462
    :catchall_0
    move-exception v0

    .line 463
    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 462
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 458
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static b(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p0, :cond_1

    .line 137
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 124
    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 127
    iget-object v1, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    iput-object v3, v0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    .line 130
    :cond_3
    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    iput-object v3, v0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static b(Lhk;)Z
    .locals 2
    .parameter

    .prologue
    .line 521
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lhk;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lhk;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lhk;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 158
    if-nez p0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_1
    iput-object v1, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    :cond_2
    iput-object v1, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static d(Lhk;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 470
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhk;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 480
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 481
    iget-object v2, p0, Lhk;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 482
    iget-object v2, p0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk;->g:Ljava/lang/String;

    .line 483
    iget-object v2, p0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 484
    if-eqz v2, :cond_3

    .line 485
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 486
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 487
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 488
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 489
    sget v3, Laox;->a:I

    div-int/lit8 v3, v3, 0x4

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, v4, v0}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 490
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 491
    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    :cond_2
    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 493
    :cond_3
    :try_start_2
    iget-object v2, p0, Lhk;->g:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lhk;->g:Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lhk;->g:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhk;->g:Ljava/lang/String;

    .line 495
    iget-object v2, p0, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 498
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 499
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 500
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 501
    sget v3, Laox;->a:I

    div-int/lit8 v3, v3, 0x4

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, v4, v0}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 503
    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    .line 511
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 513
    :catchall_0
    move-exception v0

    .line 514
    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 513
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 509
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
