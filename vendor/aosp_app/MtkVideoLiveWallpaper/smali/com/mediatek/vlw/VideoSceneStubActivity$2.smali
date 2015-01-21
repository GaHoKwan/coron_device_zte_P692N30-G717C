.class Lcom/mediatek/vlw/VideoSceneStubActivity$2;
.super Ljava/lang/Object;
.source "VideoSceneStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoSceneStubActivity;->setVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoSceneStubActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$2;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    iput-boolean p2, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$2;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$2;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    #getter for: Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoSceneStubActivity;->access$100(Lcom/mediatek/vlw/VideoSceneStubActivity;)Lcom/mediatek/vlw/VideoScene;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$2;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/vlw/VideoScene;->setVisibility(Z)V

    .line 114
    return-void
.end method
