.class Lcom/mediatek/vlw/VideoSceneStubActivity$5;
.super Ljava/lang/Object;
.source "VideoSceneStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoSceneStubActivity;->startPlayer()V
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
    .line 145
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$5;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity$5;->this$0:Lcom/mediatek/vlw/VideoSceneStubActivity;

    #getter for: Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoSceneStubActivity;->access$100(Lcom/mediatek/vlw/VideoSceneStubActivity;)Lcom/mediatek/vlw/VideoScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 150
    return-void
.end method