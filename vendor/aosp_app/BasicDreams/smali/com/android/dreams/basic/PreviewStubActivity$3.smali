.class Lcom/android/dreams/basic/PreviewStubActivity$3;
.super Ljava/lang/Object;
.source "PreviewStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/basic/PreviewStubActivity;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/basic/PreviewStubActivity;


# direct methods
.method constructor <init>(Lcom/android/dreams/basic/PreviewStubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/dreams/basic/PreviewStubActivity$3;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$3;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$3;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dreams/basic/ColorsGLRenderer;->stop()V

    .line 88
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$3;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0, v1}, Lcom/android/dreams/basic/PreviewStubActivity;->access$002(Lcom/android/dreams/basic/PreviewStubActivity;Lcom/android/dreams/basic/ColorsGLRenderer;)Lcom/android/dreams/basic/ColorsGLRenderer;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$3;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRendererHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$100(Lcom/android/dreams/basic/PreviewStubActivity;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 91
    return-void
.end method
