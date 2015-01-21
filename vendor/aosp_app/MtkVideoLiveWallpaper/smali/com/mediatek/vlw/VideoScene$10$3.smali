.class Lcom/mediatek/vlw/VideoScene$10$3;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoScene$10;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/vlw/VideoScene$10;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$10$3;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$3;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$3;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1714
    :cond_0
    return-void
.end method
