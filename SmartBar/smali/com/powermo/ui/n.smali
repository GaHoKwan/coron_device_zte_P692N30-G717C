.class Lcom/powermo/ui/n;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/powermo/ui/SmartShowThumbnailView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/powermo/ui/c;

.field private h:Landroid/view/ViewGroup$LayoutParams;

.field private i:Z


# direct methods
.method private constructor <init>(Lcom/powermo/ui/SmartShowThumbnailView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/ui/n;->b:I

    iput v1, p0, Lcom/powermo/ui/n;->c:I

    iput v1, p0, Lcom/powermo/ui/n;->d:I

    iput v1, p0, Lcom/powermo/ui/n;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/ui/n;->f:Z

    iput-object v2, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    iput-object v2, p0, Lcom/powermo/ui/n;->h:Landroid/view/ViewGroup$LayoutParams;

    iput-boolean v1, p0, Lcom/powermo/ui/n;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/ui/SmartShowThumbnailView;Lcom/powermo/ui/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/ui/n;-><init>(Lcom/powermo/ui/SmartShowThumbnailView;)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/ui/n;)I
    .locals 1

    iget v0, p0, Lcom/powermo/ui/n;->c:I

    return v0
.end method

.method static synthetic b(Lcom/powermo/ui/n;)I
    .locals 1

    iget v0, p0, Lcom/powermo/ui/n;->d:I

    return v0
.end method

.method static synthetic c(Lcom/powermo/ui/n;)Lcom/powermo/ui/c;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/ui/n;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/n;->h:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method private g()V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/powermo/ui/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/powermo/ui/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/powermo/ui/c;

    iget-object v1, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-virtual {v1}, Lcom/powermo/ui/SmartShowThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v2}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v2

    iget v2, v2, Lcom/powermo/ui/n;->b:I

    iget v3, p0, Lcom/powermo/ui/n;->c:I

    iget v4, p0, Lcom/powermo/ui/n;->d:I

    iget v5, p0, Lcom/powermo/ui/n;->e:I

    iget-object v6, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v6}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/a;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/powermo/ui/c;-><init>(Landroid/content/Context;IIIILcom/powermo/ui/a;)V

    iput-object v0, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    iget-object v0, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/ui/c;->setOpaque(Z)V

    iget-object v0, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    invoke-virtual {v0}, Lcom/powermo/ui/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->c(Lcom/powermo/ui/SmartShowThumbnailView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    invoke-virtual {v1, v0}, Lcom/powermo/ui/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v1}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v1

    iput-object v0, v1, Lcom/powermo/ui/n;->h:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/ui/n;->i:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    invoke-virtual {v0}, Lcom/powermo/ui/c;->d()V

    :cond_3
    iput-object v1, p0, Lcom/powermo/ui/n;->g:Lcom/powermo/ui/c;

    iget-object v0, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    iput-object v1, v0, Lcom/powermo/ui/n;->h:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    iget v0, p0, Lcom/powermo/ui/n;->b:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/powermo/ui/n;->c:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/powermo/ui/n;->d:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/powermo/ui/n;->e:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/powermo/ui/n;->f:Z

    iput p1, p0, Lcom/powermo/ui/n;->b:I

    iput p2, p0, Lcom/powermo/ui/n;->c:I

    iput p3, p0, Lcom/powermo/ui/n;->d:I

    iput p4, p0, Lcom/powermo/ui/n;->e:I

    invoke-direct {p0}, Lcom/powermo/ui/n;->g()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/powermo/ui/n;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/powermo/ui/n;->b:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/ui/n;->d()V

    :goto_0
    invoke-direct {p0}, Lcom/powermo/ui/n;->g()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/ui/a;->a()Landroid/view/Display;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/powermo/ui/n;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/ui/n;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powermo/ui/a;->a(I)Landroid/view/Display;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/powermo/ui/n;->a(IIII)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/ui/n;->f:Z

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/ui/n;->f:Z

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/powermo/ui/n;->b:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/powermo/ui/n;->f:Z

    iput v2, p0, Lcom/powermo/ui/n;->b:I

    iput v1, p0, Lcom/powermo/ui/n;->c:I

    iput v1, p0, Lcom/powermo/ui/n;->d:I

    iput v1, p0, Lcom/powermo/ui/n;->e:I

    invoke-direct {p0}, Lcom/powermo/ui/n;->g()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/ui/n;->i:Z

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/ui/n;->i:Z

    return-void
.end method
