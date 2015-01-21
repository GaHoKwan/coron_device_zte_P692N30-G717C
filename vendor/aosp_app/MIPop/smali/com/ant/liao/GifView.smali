.class public Lcom/ant/liao/GifView;
.super Landroid/view/View;

# interfaces
.implements Lcom/ant/liao/f;


# static fields
.field private static fo:Lcom/ant/liao/e;

.field private static fq:Z

.field private static fs:Lcom/ant/liao/d;

.field public static final lock:Ljava/lang/Object;


# instance fields
.field private dV:I

.field private dW:I

.field private fp:Landroid/graphics/Bitmap;

.field private fr:Z

.field private ft:Lcom/ant/liao/GifView$GifImageType;

.field private fu:Landroid/os/Handler;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    sput-object v1, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ant/liao/GifView;->fq:Z

    sput-object v1, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->fr:Z

    iput v1, p0, Lcom/ant/liao/GifView;->dV:I

    iput v1, p0, Lcom/ant/liao/GifView;->dW:I

    iput-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->fl:Lcom/ant/liao/GifView$GifImageType;

    iput-object v0, p0, Lcom/ant/liao/GifView;->ft:Lcom/ant/liao/GifView$GifImageType;

    new-instance v0, Lcom/ant/liao/c;

    invoke-direct {v0, p0}, Lcom/ant/liao/c;-><init>(Lcom/ant/liao/GifView;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->fu:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ant/liao/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->fr:Z

    iput v1, p0, Lcom/ant/liao/GifView;->dV:I

    iput v1, p0, Lcom/ant/liao/GifView;->dW:I

    iput-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->fl:Lcom/ant/liao/GifView$GifImageType;

    iput-object v0, p0, Lcom/ant/liao/GifView;->ft:Lcom/ant/liao/GifView$GifImageType;

    new-instance v0, Lcom/ant/liao/c;

    invoke-direct {v0, p0}, Lcom/ant/liao/c;-><init>(Lcom/ant/liao/GifView;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->fu:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    sget-object v1, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ant/liao/e;->status:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ant/liao/GifView;->fq:Z

    :try_start_0
    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->join()V

    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    invoke-virtual {v0}, Lcom/ant/liao/d;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    const-string v0, "GifView"

    const-string v2, "free all!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->free()V

    const-string v0, "GifView"

    const-string v2, "free complete!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ant/liao/GifView;->fq:Z

    sput-object v3, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    sput-object v3, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    :cond_1
    new-instance v0, Lcom/ant/liao/e;

    invoke-direct {v0, p1, p0}, Lcom/ant/liao/e;-><init>(Ljava/io/InputStream;Lcom/ant/liao/f;)V

    sput-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    const-string v1, "Decoder"

    invoke-virtual {v0, v1}, Lcom/ant/liao/e;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ant/liao/GifView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ant/liao/GifView;->fr:Z

    return v0
.end method

.method private aj()V
    .locals 2

    iget-object v0, p0, Lcom/ant/liao/GifView;->fu:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ant/liao/GifView;->fu:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/ant/liao/GifView;->fu:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic ak()Lcom/ant/liao/e;
    .locals 1

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    return-object v0
.end method

.method static synthetic al()Z
    .locals 1

    sget-boolean v0, Lcom/ant/liao/GifView;->fq:Z

    return v0
.end method

.method static synthetic b(Lcom/ant/liao/GifView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ant/liao/GifView;->fu:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ant/liao/GifView;->fq:Z

    return p0
.end method


# virtual methods
.method public a(ZI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ant/liao/b;->D:[I

    iget-object v1, p0, Lcom/ant/liao/GifView;->ft:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$GifImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->aI()I

    move-result v0

    if-le v0, v2, :cond_1

    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ant/liao/d;

    invoke-direct {v0, p0, v4}, Lcom/ant/liao/d;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/c;)V

    invoke-virtual {v0}, Lcom/ant/liao/d;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/GifView;->aj()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_2

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/ant/liao/GifView;->aj()V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_0

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->aI()I

    move-result v0

    if-le v0, v2, :cond_3

    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ant/liao/d;

    invoke-direct {v0, p0, v4}, Lcom/ant/liao/d;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/c;)V

    sput-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    invoke-virtual {v0}, Lcom/ant/liao/d;->start()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ant/liao/GifView;->aj()V

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_4

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/ant/liao/GifView;->aj()V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    invoke-direct {p0}, Lcom/ant/liao/GifView;->aj()V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ant/liao/d;

    invoke-direct {v0, p0, v4}, Lcom/ant/liao/d;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/c;)V

    sput-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    sget-object v0, Lcom/ant/liao/GifView;->fs:Lcom/ant/liao/d;

    invoke-virtual {v0}, Lcom/ant/liao/d;->start()V

    goto :goto_0

    :cond_6
    const-string v0, "gif"

    const-string v1, "parse error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public h(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ant/liao/GifView;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public l(II)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/ant/liao/GifView;->dV:I

    iput p2, p0, Lcom/ant/liao/GifView;->dW:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    invoke-virtual {v0}, Lcom/ant/liao/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/ant/liao/GifView;->dV:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ant/liao/GifView;->l(II)V

    :cond_3
    iget-object v1, p0, Lcom/ant/liao/GifView;->fp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingBottom()I

    move-result v5

    sget-object v1, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v4, v5

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Lcom/ant/liao/GifView;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/ant/liao/GifView;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/ant/liao/GifView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    iget v1, v0, Lcom/ant/liao/e;->width:I

    sget-object v0, Lcom/ant/liao/GifView;->fo:Lcom/ant/liao/e;

    iget v0, v0, Lcom/ant/liao/e;->height:I

    goto :goto_0
.end method
