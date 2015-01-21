.class Lcom/powermo/ui/c;
.super Landroid/view/TextureView;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/IBinder;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/powermo/ui/a;

.field private h:Lcom/powermo/ui/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartShowMirrorTextureView"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/ui/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILcom/powermo/ui/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/powermo/ui/c;->b:Landroid/os/IBinder;

    iput v0, p0, Lcom/powermo/ui/c;->c:I

    iput v0, p0, Lcom/powermo/ui/c;->d:I

    iput v0, p0, Lcom/powermo/ui/c;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/ui/c;->f:I

    iput-object v1, p0, Lcom/powermo/ui/c;->g:Lcom/powermo/ui/a;

    new-instance v0, Lcom/powermo/ui/l;

    invoke-direct {v0, p0, v1}, Lcom/powermo/ui/l;-><init>(Lcom/powermo/ui/c;Lcom/powermo/ui/k;)V

    iput-object v0, p0, Lcom/powermo/ui/c;->h:Lcom/powermo/ui/l;

    iput p2, p0, Lcom/powermo/ui/c;->f:I

    iput p3, p0, Lcom/powermo/ui/c;->c:I

    iput p4, p0, Lcom/powermo/ui/c;->d:I

    iput p5, p0, Lcom/powermo/ui/c;->e:I

    iput-object p6, p0, Lcom/powermo/ui/c;->g:Lcom/powermo/ui/a;

    iget-object v0, p0, Lcom/powermo/ui/c;->h:Lcom/powermo/ui/l;

    invoke-virtual {p0, v0}, Lcom/powermo/ui/c;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/ui/c;->g:Lcom/powermo/ui/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/ui/c;->b:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/ui/c;->g:Lcom/powermo/ui/a;

    iget-object v1, p0, Lcom/powermo/ui/c;->b:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/powermo/ui/a;->a(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/ui/c;->b:Landroid/os/IBinder;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/powermo/ui/c;->setVisibility(I)V

    :cond_2
    if-nez p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/powermo/ui/c;->setVisibility(I)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/powermo/ui/c;->g:Lcom/powermo/ui/a;

    iget v2, p0, Lcom/powermo/ui/c;->f:I

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/powermo/ui/a;->a(ILandroid/view/Surface;II)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/ui/c;->b:Landroid/os/IBinder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/powermo/ui/c;Landroid/graphics/SurfaceTexture;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/powermo/ui/c;->a(Landroid/graphics/SurfaceTexture;IIZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/powermo/ui/c;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/powermo/ui/c;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/powermo/ui/c;->e:I

    return v0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/powermo/ui/c;->a(Landroid/graphics/SurfaceTexture;IIZ)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/powermo/ui/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/powermo/ui/c;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/c;->g:Lcom/powermo/ui/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    iget v0, p0, Lcom/powermo/ui/c;->c:I

    iget v1, p0, Lcom/powermo/ui/c;->d:I

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/powermo/ui/c;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/powermo/ui/c;->a(Landroid/graphics/SurfaceTexture;IIZ)V

    goto :goto_0
.end method
