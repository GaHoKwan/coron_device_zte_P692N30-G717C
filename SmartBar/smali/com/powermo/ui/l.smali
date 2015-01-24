.class Lcom/powermo/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final synthetic a:Lcom/powermo/ui/c;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/powermo/ui/c;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/powermo/ui/l;->a:Lcom/powermo/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    iput v1, p0, Lcom/powermo/ui/l;->c:I

    iput v1, p0, Lcom/powermo/ui/l;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/ui/c;Lcom/powermo/ui/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/ui/l;-><init>(Lcom/powermo/ui/c;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/powermo/ui/l;->d:I

    iput p2, p0, Lcom/powermo/ui/l;->c:I

    iget-object v0, p0, Lcom/powermo/ui/l;->a:Lcom/powermo/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/powermo/ui/c;->a(Lcom/powermo/ui/c;Landroid/graphics/SurfaceTexture;IIZ)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object v3, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    iput v1, p0, Lcom/powermo/ui/l;->d:I

    iput v1, p0, Lcom/powermo/ui/l;->c:I

    iget-object v0, p0, Lcom/powermo/ui/l;->a:Lcom/powermo/ui/c;

    invoke-static {v0, v3, v1, v1, v2}, Lcom/powermo/ui/c;->a(Lcom/powermo/ui/c;Landroid/graphics/SurfaceTexture;IIZ)V

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/powermo/ui/l;->d:I

    iput p2, p0, Lcom/powermo/ui/l;->c:I

    iget-object v0, p0, Lcom/powermo/ui/l;->a:Lcom/powermo/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/powermo/ui/c;->a(Lcom/powermo/ui/c;Landroid/graphics/SurfaceTexture;IIZ)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    iget-object v0, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/powermo/ui/l;->a:Lcom/powermo/ui/c;

    iget-object v1, p0, Lcom/powermo/ui/l;->b:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/powermo/ui/l;->c:I

    iget v3, p0, Lcom/powermo/ui/l;->d:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/powermo/ui/c;->a(Lcom/powermo/ui/c;Landroid/graphics/SurfaceTexture;IIZ)V

    :cond_0
    return-void
.end method
