.class Lcom/mediatek/vlw/VideoSceneStubActivity$1;
.super Ljava/lang/Object;
.source "VideoSceneStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoSceneStubActivity;->setFixedSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoSceneStubActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$1;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    iput p2, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$1;->val$width:I

    iput p3, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$1;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    #getter for: Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoSceneStubActivity;->access$000(Lcom/mediatek/vlw/VideoSceneStubActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$1;->val$width:I

    iget v2, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$1;->val$height:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 102
    return-void
.end method
