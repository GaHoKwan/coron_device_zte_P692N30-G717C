.class Lcom/android/dreams/basic/PreviewStubActivity$1;
.super Ljava/lang/Object;
.source "PreviewStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/basic/PreviewStubActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/basic/PreviewStubActivity;

.field final synthetic val$height:I

.field final synthetic val$surface:Landroid/graphics/SurfaceTexture;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/dreams/basic/PreviewStubActivity;Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    iput-object p2, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->val$surface:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->val$width:I

    iput p4, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dreams/basic/ColorsGLRenderer;->stop()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    new-instance v1, Lcom/android/dreams/basic/ColorsGLRenderer;

    iget-object v2, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->val$surface:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->val$width:I

    iget v4, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->val$height:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/dreams/basic/ColorsGLRenderer;-><init>(Landroid/graphics/SurfaceTexture;II)V

    #setter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0, v1}, Lcom/android/dreams/basic/PreviewStubActivity;->access$002(Lcom/android/dreams/basic/PreviewStubActivity;Lcom/android/dreams/basic/ColorsGLRenderer;)Lcom/android/dreams/basic/ColorsGLRenderer;

    .line 60
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$1;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dreams/basic/ColorsGLRenderer;->start()V

    .line 61
    return-void
.end method
