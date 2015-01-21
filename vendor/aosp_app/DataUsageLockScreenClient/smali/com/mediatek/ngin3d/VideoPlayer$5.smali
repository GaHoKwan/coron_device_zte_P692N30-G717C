.class Lcom/mediatek/ngin3d/VideoPlayer$5;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/VideoPlayer;->prepareLoopTimer(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/VideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer$5;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer$5;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$5;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mLoopStartMs:I
    invoke-static {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$1000(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer$5;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mLoopEndMs:I
    invoke-static {v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$1100(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v2

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->seekToAndStart(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$1200(Lcom/mediatek/ngin3d/VideoPlayer;II)V

    .line 271
    return-void
.end method
