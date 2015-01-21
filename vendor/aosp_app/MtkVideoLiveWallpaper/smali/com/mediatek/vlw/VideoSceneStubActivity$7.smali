.class Lcom/mediatek/vlw/VideoSceneStubActivity$7;
.super Ljava/lang/Object;
.source "VideoSceneStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoSceneStubActivity;->seekPlayer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoSceneStubActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$7;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    iput-wide p2, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$7;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$7;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    #getter for: Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoSceneStubActivity;->access$100(Lcom/mediatek/vlw/VideoSceneStubActivity;)Lcom/mediatek/vlw/VideoScene;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$7;->val$pos:J

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vlw/VideoScene;->seekTo(J)V

    .line 174
    return-void
.end method
