.class public Lcom/iflytek/ui/A;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/iflytek/ui/a;

.field private b:Landroid/os/Handler;

.field private c:Lcom/iflytek/ui/q;

.field private d:Lcom/iflytek/ui/u;

.field private e:Lcom/iflytek/ui/c;

.field private f:Lcom/iflytek/ui/a;

.field private g:Lcom/iflytek/ui/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/ui/k;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/k;-><init>(Lcom/iflytek/ui/A;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/iflytek/ui/k;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/k;-><init>(Lcom/iflytek/ui/A;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/iflytek/ui/k;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/k;-><init>(Lcom/iflytek/ui/A;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/A;)Lcom/iflytek/ui/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/ui/A;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->c:Lcom/iflytek/ui/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/q;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "drawabledotnomal"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawabledothightlight"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/ui/q;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->c:Lcom/iflytek/ui/q;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->c:Lcom/iflytek/ui/q;

    invoke-virtual {v0}, Lcom/iflytek/ui/q;->c()V

    iget-object v0, p0, Lcom/iflytek/ui/A;->c:Lcom/iflytek/ui/q;

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iflytek/ui/A;->e:Lcom/iflytek/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/A;->e:Lcom/iflytek/ui/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/c;->a(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->d:Lcom/iflytek/ui/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/A;->d:Lcom/iflytek/ui/u;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/u;->a(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->g:Lcom/iflytek/ui/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/v;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "drawablewarning"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/ui/v;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->g:Lcom/iflytek/ui/v;

    iget-object v0, p0, Lcom/iflytek/ui/A;->g:Lcom/iflytek/ui/v;

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fontsizeerror"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/iflytek/msc/a/f;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/v;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->g:Lcom/iflytek/ui/v;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->g:Lcom/iflytek/ui/v;

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    const-string v1, "recordingframestyle"

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recordingframestyledefault"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/A;->d:Lcom/iflytek/ui/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/u;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->b(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/ui/u;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->d:Lcom/iflytek/ui/u;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->d:Lcom/iflytek/ui/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/u;->a(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->d:Lcom/iflytek/ui/u;

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/ui/A;->e:Lcom/iflytek/ui/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iflytek/ui/c;

    invoke-direct {v0}, Lcom/iflytek/ui/c;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/A;->e:Lcom/iflytek/ui/c;

    :cond_2
    iget-object v0, p0, Lcom/iflytek/ui/A;->e:Lcom/iflytek/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/c;->a(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->e:Lcom/iflytek/ui/c;

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    goto :goto_0
.end method

.method public c()V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->f:Lcom/iflytek/ui/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    const-string v1, "connectingframestyle"

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectingframestyledefault"

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/iflytek/ui/g;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "drawablepen"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/ui/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->f:Lcom/iflytek/ui/a;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/A;->f:Lcom/iflytek/ui/a;

    invoke-interface {v0}, Lcom/iflytek/ui/a;->c()V

    iget-object v0, p0, Lcom/iflytek/ui/A;->f:Lcom/iflytek/ui/a;

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/A;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :try_start_1
    const-string v1, "connectingframestylerotate"

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/iflytek/ui/f;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectingframestylerotate"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/ui/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->f:Lcom/iflytek/ui/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v0, Lcom/iflytek/ui/t;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectinganimationspeed"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/ui/t;-><init>([Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/iflytek/ui/A;->f:Lcom/iflytek/ui/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/ui/A;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    invoke-interface {v1, p1, v0}, Lcom/iflytek/ui/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/A;->a:Lcom/iflytek/ui/a;

    invoke-interface {v0}, Lcom/iflytek/ui/a;->d()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
