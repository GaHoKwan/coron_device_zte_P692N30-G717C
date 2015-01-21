.class public Lcom/farben/faq/widget/ChannelGallery;
.super Landroid/widget/Gallery;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/farben/faq/widget/a;

    invoke-direct {v0, p0}, Lcom/farben/faq/widget/a;-><init>(Lcom/farben/faq/widget/ChannelGallery;)V

    iput-object v0, p0, Lcom/farben/faq/widget/ChannelGallery;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/farben/faq/widget/a;

    invoke-direct {v0, p0}, Lcom/farben/faq/widget/a;-><init>(Lcom/farben/faq/widget/ChannelGallery;)V

    iput-object v0, p0, Lcom/farben/faq/widget/ChannelGallery;->b:Landroid/os/Handler;

    new-instance v0, Lcom/farben/faq/widget/b;

    invoke-direct {v0, p0}, Lcom/farben/faq/widget/b;-><init>(Lcom/farben/faq/widget/ChannelGallery;)V

    invoke-virtual {p0, v0}, Lcom/farben/faq/widget/ChannelGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/widget/ChannelGallery;)I
    .locals 1

    iget v0, p0, Lcom/farben/faq/widget/ChannelGallery;->a:I

    return v0
.end method

.method static synthetic b(Lcom/farben/faq/widget/ChannelGallery;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/widget/ChannelGallery;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/farben/faq/widget/ChannelGallery;->a:I

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/farben/faq/widget/ChannelGallery;->playSoundEffect(I)V

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/farben/faq/widget/ChannelGallery;->playSoundEffect(I)V

    goto :goto_1
.end method
