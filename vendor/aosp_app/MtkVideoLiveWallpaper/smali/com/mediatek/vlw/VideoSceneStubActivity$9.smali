.class Lcom/mediatek/vlw/VideoSceneStubActivity$9;
.super Ljava/lang/Object;
.source "VideoSceneStubActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoSceneStubActivity;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$9;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$9;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VideoSceneStubActivity;->mCompletionCalled:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoSceneStubActivity;->access$202(Lcom/mediatek/vlw/VideoSceneStubActivity;Z)Z

    .line 250
    return-void
.end method
