.class Lcom/mediatek/ngin3d/VideoPlayer$6;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/VideoPlayer;->initialize(I)V
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
    .line 434
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer$6;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer$6;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/mediatek/ngin3d/VideoPlayer;->access$1300(Lcom/mediatek/ngin3d/VideoPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 437
    return-void
.end method
