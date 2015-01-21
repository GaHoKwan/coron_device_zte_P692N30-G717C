.class public Lcom/android/dreams/basic/PreviewStubActivity;
.super Landroid/app/Activity;
.source "PreviewStubActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;

.field private mRendererHandler:Landroid/os/Handler;

.field private mRendererHandlerThread:Landroid/os/HandlerThread;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/dreams/basic/PreviewStubActivity;Lcom/android/dreams/basic/ColorsGLRenderer;)Lcom/android/dreams/basic/ColorsGLRenderer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/dreams/basic/PreviewStubActivity;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mTextureView:Landroid/view/TextureView;

    .line 38
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 39
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandler:Landroid/os/Handler;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 51
    const-string v0, "onSurfaceTextureAvailable(%s, %d, %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/dreams/basic/Colors;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dreams/basic/PreviewStubActivity$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/dreams/basic/PreviewStubActivity$1;-><init>(Lcom/android/dreams/basic/PreviewStubActivity;Landroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5
    .parameter "surface"

    .prologue
    const/4 v4, 0x1

    .line 82
    const-string v1, "onSurfaceTextureDestroyed(%s)"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/dreams/basic/Colors;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/dreams/basic/PreviewStubActivity$3;

    invoke-direct {v2, p0}, Lcom/android/dreams/basic/PreviewStubActivity$3;-><init>(Lcom/android/dreams/basic/PreviewStubActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return v4

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 68
    const-string v0, "onSurfaceTextureSizeChanged(%s, %d, %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/dreams/basic/Colors;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dreams/basic/PreviewStubActivity$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/dreams/basic/PreviewStubActivity$2;-><init>(Lcom/android/dreams/basic/PreviewStubActivity;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surface"

    .prologue
    .line 103
    const-string v0, "onSurfaceTextureUpdated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/dreams/basic/Colors;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method
