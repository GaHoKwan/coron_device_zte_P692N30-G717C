.class public Lcom/farben/faq/ListActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static b:Landroid/os/Handler;


# instance fields
.field private A:Z

.field private B:Z

.field a:I

.field c:Lcom/farben/faq/a/f;

.field public d:Z

.field e:Ljava/util/List;

.field f:I

.field g:Landroid/widget/ListView;

.field h:I

.field i:I

.field j:I

.field k:I

.field public l:Lcom/farben/faq/c/d;

.field public m:Lcom/farben/faq/c/b;

.field n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Lcom/farben/faq/widget/ChannelGallery;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Landroid/view/WindowManager;

.field private w:Landroid/view/WindowManager$LayoutParams;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/RelativeLayout;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/farben/faq/ListActivity;->a:I

    iput-boolean v1, p0, Lcom/farben/faq/ListActivity;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->e:Ljava/util/List;

    iput v1, p0, Lcom/farben/faq/ListActivity;->f:I

    iput v2, p0, Lcom/farben/faq/ListActivity;->h:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/farben/faq/ListActivity;->i:I

    iput-object v3, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    iput-object v3, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    const-string v0, "hottest"

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->t:Ljava/lang/String;

    iput v2, p0, Lcom/farben/faq/ListActivity;->u:I

    iput-boolean v1, p0, Lcom/farben/faq/ListActivity;->A:Z

    iput-boolean v1, p0, Lcom/farben/faq/ListActivity;->B:Z

    return-void
.end method

.method private a()V
    .locals 4

    const-string v0, "index_tiao"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farben/faq/ListActivity;->k:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/farben/faq/ListActivity;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "index_page"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "index_pagetotal"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/farben/faq/ListActivity;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/farben/faq/ListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, -0x14

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x8

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x3c

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/farben/faq/ListActivity;->k:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/farben/faq/ListActivity;I)V
    .locals 0

    iput p1, p0, Lcom/farben/faq/ListActivity;->u:I

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/ListActivity;Ljava/lang/String;)V
    .locals 4

    const v3, 0x7f020037

    const v1, 0x7f020036

    const/4 v2, -0x1

    const-string v0, "hottest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    const-string v1, "#009eff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iput-object p1, p0, Lcom/farben/faq/ListActivity;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->c()I

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->a()V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    invoke-virtual {v0}, Lcom/farben/faq/a/f;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    const-string v1, "#009eff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/farben/faq/ListActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/farben/faq/ListActivity;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/ListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/farben/faq/ListActivity;->B:Z

    return v0
.end method

.method static synthetic b(Lcom/farben/faq/ListActivity;)Lcom/farben/faq/widget/ChannelGallery;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    return-object v0
.end method

.method private b()V
    .locals 9

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/farben/faq/c/b;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->m:Lcom/farben/faq/c/b;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->m:Lcom/farben/faq/c/b;

    invoke-virtual {v0}, Lcom/farben/faq/c/b;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    invoke-virtual {v0, v7}, Lcom/farben/faq/widget/ChannelGallery;->setVisibility(I)V

    iput-boolean v6, p0, Lcom/farben/faq/ListActivity;->B:Z

    :goto_2
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/b;

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    invoke-virtual {v0, v7}, Lcom/farben/faq/widget/ChannelGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/farben/faq/b/b;

    iget-object v8, p0, Lcom/farben/faq/ListActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/farben/faq/b/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/farben/faq/ListActivity;->z:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/farben/faq/ListActivity;->z:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/farben/faq/ListActivity;->z:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_4
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/farben/faq/ak;

    invoke-direct {v1, p0, v7}, Lcom/farben/faq/ak;-><init>(Lcom/farben/faq/ListActivity;Lcom/farben/faq/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v6, p0, Lcom/farben/faq/ListActivity;->B:Z

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/farben/faq/ListActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    invoke-virtual {v0, v1}, Lcom/farben/faq/widget/ChannelGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    invoke-virtual {v2, v0}, Lcom/farben/faq/widget/ChannelGallery;->a(I)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/farben/faq/ListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    new-instance v4, Lcom/farben/faq/a/a;

    iget-object v5, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    invoke-direct {v4, p0, v5, v2}, Lcom/farben/faq/a/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Lcom/farben/faq/widget/ChannelGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    const/4 v3, 0x2

    if-le v0, v3, :cond_6

    :goto_3
    invoke-virtual {v2, v6}, Lcom/farben/faq/widget/ChannelGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    new-instance v2, Lcom/farben/faq/al;

    invoke-direct {v2, p0}, Lcom/farben/faq/al;-><init>(Lcom/farben/faq/ListActivity;)V

    invoke-virtual {v0, v2}, Lcom/farben/faq/widget/ChannelGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-boolean v1, p0, Lcom/farben/faq/ListActivity;->B:Z

    goto/16 :goto_2

    :cond_6
    move v6, v1

    goto :goto_3
.end method

.method private c()I
    .locals 6

    const/16 v3, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v3, p0, Lcom/farben/faq/ListActivity;->i:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/farben/faq/ListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v1, 0x3df5c28f

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/farben/faq/ListActivity;->z:F

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x320

    if-le v1, v2, :cond_1

    const/16 v0, 0x19

    iput v0, p0, Lcom/farben/faq/ListActivity;->i:I

    :goto_0
    iput v4, p0, Lcom/farben/faq/ListActivity;->a:I

    iput v5, p0, Lcom/farben/faq/ListActivity;->f:I

    iput v5, p0, Lcom/farben/faq/ListActivity;->k:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->l:Lcom/farben/faq/c/d;

    invoke-virtual {v0}, Lcom/farben/faq/c/d;->a()I

    move-result v0

    iput v0, p0, Lcom/farben/faq/ListActivity;->j:I

    iget v0, p0, Lcom/farben/faq/ListActivity;->j:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/farben/faq/ListActivity;->j:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    div-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/farben/faq/ListActivity;->h:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/ListActivity;->l:Lcom/farben/faq/c/d;

    iget v1, p0, Lcom/farben/faq/ListActivity;->f:I

    iget v2, p0, Lcom/farben/faq/ListActivity;->i:I

    iget-object v3, p0, Lcom/farben/faq/ListActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/farben/faq/c/d;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    new-instance v0, Lcom/farben/faq/a/f;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    invoke-direct {v0, p0, v1, v5, v4}, Lcom/farben/faq/a/f;-><init>(Landroid/content/Context;Ljava/util/List;ZB)V

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    return v5

    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x1e0

    if-ge v0, v1, :cond_2

    const/16 v0, 0xa

    iput v0, p0, Lcom/farben/faq/ListActivity;->i:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/farben/faq/ListActivity;->i:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/farben/faq/ListActivity;->j:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/farben/faq/ListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/farben/faq/ListActivity;->A:Z

    return v0
.end method

.method static synthetic d(Lcom/farben/faq/ListActivity;)I
    .locals 1

    iget v0, p0, Lcom/farben/faq/ListActivity;->u:I

    return v0
.end method

.method static synthetic e(Lcom/farben/faq/ListActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/farben/faq/ListActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->c()I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/farben/faq/ListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->b()V

    return-void
.end method

.method static synthetic h(Lcom/farben/faq/ListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/farben/faq/ListActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->y:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->l:Lcom/farben/faq/c/d;

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/farben/faq/c/d;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const-string v0, "common_index"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/farben/faq/am;

    invoke-direct {v0, p0}, Lcom/farben/faq/am;-><init>(Lcom/farben/faq/ListActivity;)V

    sput-object v0, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->y:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->y:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const-string v0, "hottest"

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->t:Ljava/lang/String;

    new-instance v0, Lcom/farben/faq/c/d;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->l:Lcom/farben/faq/c/d;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    const-string v1, "index_newest"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    const-string v1, "index_hottest"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/ah;

    invoke-direct {v1, p0}, Lcom/farben/faq/ah;-><init>(Lcom/farben/faq/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/ai;

    invoke-direct {v1, p0}, Lcom/farben/faq/ai;-><init>(Lcom/farben/faq/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/farben/faq/aj;

    invoke-direct {v1, p0}, Lcom/farben/faq/aj;-><init>(Lcom/farben/faq/ListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/widget/ChannelGallery;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->p:Lcom/farben/faq/widget/ChannelGallery;

    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/farben/faq/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->q:Landroid/widget/ImageView;

    new-instance v0, Lcom/farben/faq/an;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farben/faq/an;-><init>(Lcom/farben/faq/ListActivity;B)V

    invoke-virtual {v0}, Lcom/farben/faq/an;->start()V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->c()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/farben/faq/ListActivity;->B:Z

    iput-boolean v0, p0, Lcom/farben/faq/ListActivity;->A:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/farben/faq/ListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/farben/faq/ListActivity;->B:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/farben/faq/ListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->v:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/farben/faq/ListActivity;->w:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->a()V

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    invoke-virtual {v0}, Lcom/farben/faq/a/f;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/farben/faq/ListActivity;->b()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/farben/faq/ListActivity;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int v0, p2, p3

    iput v0, p0, Lcom/farben/faq/ListActivity;->a:I

    iget v0, p0, Lcom/farben/faq/ListActivity;->a:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/farben/faq/ListActivity;->a:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    div-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lcom/farben/faq/ListActivity;->k:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/farben/faq/ListActivity;->k:I

    sget-object v0, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/farben/faq/ListActivity;->a:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->i:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/farben/faq/ListActivity;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/farben/faq/ListActivity;->a:I

    iget-object v1, p0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/farben/faq/ListActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/farben/faq/ListActivity;->f:I

    iget v1, p0, Lcom/farben/faq/ListActivity;->h:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/farben/faq/ListActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/farben/faq/ListActivity;->d:Z

    sget-object v0, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
