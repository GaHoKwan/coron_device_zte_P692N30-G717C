.class Lcom/android/dreams/basic/PreviewStubActivity$2;
.super Ljava/lang/Object;
.source "PreviewStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/basic/PreviewStubActivity;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/basic/PreviewStubActivity;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/dreams/basic/PreviewStubActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    iput p2, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->val$width:I

    iput p3, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->this$0:Lcom/android/dreams/basic/PreviewStubActivity;

    #getter for: Lcom/android/dreams/basic/PreviewStubActivity;->mRenderer:Lcom/android/dreams/basic/ColorsGLRenderer;
    invoke-static {v0}, Lcom/android/dreams/basic/PreviewStubActivity;->access$000(Lcom/android/dreams/basic/PreviewStubActivity;)Lcom/android/dreams/basic/ColorsGLRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->val$width:I

    iget v2, p0, Lcom/android/dreams/basic/PreviewStubActivity$2;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/dreams/basic/ColorsGLRenderer;->setSize(II)V

    .line 76
    :cond_0
    return-void
.end method
