.class public Lcom/powermo/ui/SmartShowThumbnailView;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/powermo/input/a;

.field private c:Lcom/powermo/input/c;

.field private final d:Landroid/graphics/RectF;

.field private e:Lcom/powermo/ui/a;

.field private f:Landroid/os/Handler;

.field private g:Lcom/powermo/ui/o;

.field private h:Lcom/powermo/ui/n;

.field private i:I

.field private j:I

.field private k:Lcom/powermo/ui/d;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartShowThumbnailView"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/ui/SmartShowThumbnailView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    new-instance v0, Lcom/powermo/input/c;

    invoke-direct {v0}, Lcom/powermo/input/c;-><init>()V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->d:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->f:Landroid/os/Handler;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->g:Lcom/powermo/ui/o;

    new-instance v0, Lcom/powermo/ui/n;

    invoke-direct {v0, p0, v1}, Lcom/powermo/ui/n;-><init>(Lcom/powermo/ui/SmartShowThumbnailView;Lcom/powermo/ui/m;)V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->j:I

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->k:Lcom/powermo/ui/d;

    iput-boolean v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->l:Z

    iput-boolean v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->m:Z

    invoke-direct {p0, p1}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    new-instance v0, Lcom/powermo/input/c;

    invoke-direct {v0}, Lcom/powermo/input/c;-><init>()V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->d:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->f:Landroid/os/Handler;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->g:Lcom/powermo/ui/o;

    new-instance v0, Lcom/powermo/ui/n;

    invoke-direct {v0, p0, v1}, Lcom/powermo/ui/n;-><init>(Lcom/powermo/ui/SmartShowThumbnailView;Lcom/powermo/ui/m;)V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->j:I

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->k:Lcom/powermo/ui/d;

    iput-boolean v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->l:Z

    iput-boolean v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->m:Z

    invoke-direct {p0, p1}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    new-instance v0, Lcom/powermo/input/c;

    invoke-direct {v0}, Lcom/powermo/input/c;-><init>()V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->d:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->f:Landroid/os/Handler;

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->g:Lcom/powermo/ui/o;

    new-instance v0, Lcom/powermo/ui/n;

    invoke-direct {v0, p0, v1}, Lcom/powermo/ui/n;-><init>(Lcom/powermo/ui/SmartShowThumbnailView;Lcom/powermo/ui/m;)V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->j:I

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->k:Lcom/powermo/ui/d;

    iput-boolean v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->l:Z

    iput-boolean v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->m:Z

    invoke-direct {p0, p1}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/a;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->g:Lcom/powermo/ui/o;

    invoke-static {v0, v1, v2}, Lcom/powermo/ui/a;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/powermo/ui/b;)Lcom/powermo/ui/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    const v0, -0x78775433

    invoke-static {v0}, Lcom/powermo/input/b;->a(I)Lcom/powermo/input/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    invoke-virtual {v0}, Lcom/powermo/input/c;->clear()V

    iget v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->i:I

    invoke-direct {p0, v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(I)V

    return-void
.end method

.method private a(II)V
    .locals 3

    const/high16 v1, 0x4000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-static {v2}, Lcom/powermo/ui/n;->c(Lcom/powermo/ui/n;)Lcom/powermo/ui/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/powermo/ui/c;->measure(II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->f:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/ui/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powermo/ui/o;-><init>(Lcom/powermo/ui/SmartShowThumbnailView;Lcom/powermo/ui/m;)V

    iput-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->g:Lcom/powermo/ui/o;

    return-void
.end method

.method private a(Lcom/powermo/ui/c;IIII)V
    .locals 10

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingBottom()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p1}, Lcom/powermo/ui/c;->a()I

    move-result v6

    invoke-virtual {p1}, Lcom/powermo/ui/c;->b()I

    move-result v1

    iget v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->j:I

    and-int/lit8 v2, v0, 0xf

    and-int/lit16 v7, v0, 0x300

    and-int/lit16 v8, v0, 0xc00

    packed-switch v2, :pswitch_data_0

    mul-int v0, v1, v5

    div-int/2addr v0, v6

    if-le v0, v3, :cond_0

    mul-int v0, v6, v3

    div-int/2addr v0, v1

    move v2, v3

    move v4, v0

    :goto_0
    int-to-float v0, v4

    int-to-float v6, v6

    div-float v6, v0, v6

    int-to-float v0, v2

    int-to-float v1, v1

    div-float v9, v0, v1

    sparse-switch v7, :sswitch_data_0

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingLeft()I

    move-result v0

    sub-int v1, v5, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    :goto_1
    add-int/2addr v4, v1

    sparse-switch v8, :sswitch_data_1

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    :goto_2
    add-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v3, v5, v7, v8}, Lcom/powermo/ui/c;->setPadding(IIII)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/powermo/ui/c;->setPivotX(F)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/powermo/ui/c;->setPivotY(F)V

    invoke-virtual {p1, v6}, Lcom/powermo/ui/c;->setScaleX(F)V

    invoke-virtual {p1, v9}, Lcom/powermo/ui/c;->setScaleY(F)V

    int-to-float v3, v1

    invoke-virtual {p1, v3}, Lcom/powermo/ui/c;->setX(F)V

    int-to-float v3, v0

    invoke-virtual {p1, v3}, Lcom/powermo/ui/c;->setY(F)V

    iget-object v3, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    invoke-virtual {v3}, Lcom/powermo/input/c;->clear()V

    iget-object v3, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    invoke-virtual {p1}, Lcom/powermo/ui/c;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/powermo/input/c;->a(I)V

    iget-object v3, p0, Lcom/powermo/ui/SmartShowThumbnailView;->d:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    iget-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->d:Landroid/graphics/RectF;

    sget-object v2, Lcom/powermo/input/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/input/c;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :pswitch_0
    mul-int v0, v1, v5

    div-int/2addr v0, v6

    if-ge v0, v3, :cond_0

    mul-int v0, v6, v3

    div-int/2addr v0, v1

    move v2, v3

    move v4, v0

    goto :goto_0

    :pswitch_1
    move v2, v3

    move v4, v5

    goto :goto_0

    :pswitch_2
    move v2, v1

    move v4, v6

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingLeft()I

    move-result v0

    move v1, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingRight()I

    move-result v0

    sub-int v0, v5, v0

    sub-int/2addr v0, v4

    move v1, v0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingTop()I

    move-result v0

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingBottom()I

    move-result v0

    sub-int v0, v3, v0

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_0
    move v2, v0

    move v4, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x400 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(IIII)Z
    .locals 3

    sub-int v0, p3, p1

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-virtual {v0}, Lcom/powermo/ui/n;->d()V

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    invoke-virtual {v0}, Lcom/powermo/input/c;->clear()V

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    invoke-static {v0}, Lcom/powermo/input/b;->a(Lcom/powermo/input/a;)V

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    :cond_0
    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->a(Lcom/powermo/ui/a;)V

    iput-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->e:Lcom/powermo/ui/a;

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-virtual {v0, p1}, Lcom/powermo/ui/n;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/powermo/ui/SmartShowThumbnailView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-virtual {v0}, Lcom/powermo/ui/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-virtual {v0}, Lcom/powermo/ui/n;->c()V

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->requestLayout()V

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->k:Lcom/powermo/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->k:Lcom/powermo/ui/d;

    iget-object v1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-static {v1}, Lcom/powermo/ui/n;->a(Lcom/powermo/ui/n;)I

    move-result v1

    iget-object v2, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-static {v2}, Lcom/powermo/ui/n;->b(Lcom/powermo/ui/n;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/powermo/ui/d;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/powermo/ui/SmartShowThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->i:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->l:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->m:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->a()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/powermo/ui/SmartShowThumbnailView;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-virtual {v0}, Lcom/powermo/ui/n;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->removeAllViewsInLayout()V

    :cond_0
    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-static {v0}, Lcom/powermo/ui/n;->c(Lcom/powermo/ui/n;)Lcom/powermo/ui/c;

    move-result-object v1

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-static {v0}, Lcom/powermo/ui/n;->d(Lcom/powermo/ui/n;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/powermo/ui/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/powermo/ui/SmartShowThumbnailView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :cond_1
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Lcom/powermo/ui/c;IIII)V

    invoke-virtual {v1}, Lcom/powermo/ui/c;->a()I

    move-result v0

    invoke-virtual {v1}, Lcom/powermo/ui/c;->b()I

    move-result v2

    invoke-virtual {v1, v7, v7, v0, v2}, Lcom/powermo/ui/c;->layout(IIII)V

    :cond_2
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-virtual {v0}, Lcom/powermo/ui/n;->f()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/powermo/ui/SmartShowThumbnailView;->setMeasuredDimension(II)V

    invoke-direct {p0, v0, v1}, Lcom/powermo/ui/SmartShowThumbnailView;->a(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->h:Lcom/powermo/ui/n;

    invoke-static {v0}, Lcom/powermo/ui/n;->c(Lcom/powermo/ui/n;)Lcom/powermo/ui/c;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/powermo/ui/SmartShowThumbnailView;->b:Lcom/powermo/input/a;

    iget-object v4, p0, Lcom/powermo/ui/SmartShowThumbnailView;->c:Lcom/powermo/input/c;

    invoke-interface {v3, p1, v4, v1, v0}, Lcom/powermo/input/a;->a(Landroid/view/MotionEvent;Lcom/powermo/input/c;II)V

    iget-boolean v0, p0, Lcom/powermo/ui/SmartShowThumbnailView;->l:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setFitMode(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->j:I

    invoke-virtual {p0}, Lcom/powermo/ui/SmartShowThumbnailView;->requestLayout()V

    return-void
.end method

.method public setListener(Lcom/powermo/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/ui/SmartShowThumbnailView;->k:Lcom/powermo/ui/d;

    return-void
.end method
