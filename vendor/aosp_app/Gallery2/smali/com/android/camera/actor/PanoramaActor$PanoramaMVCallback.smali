.class final Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Landroid/hardware/Camera$AUTORAMAMVCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaMVCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/actor/PanoramaActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    return-void
.end method


# virtual methods
.method public onFrame(II)V
    .locals 2
    .parameter "xy"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 304
    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1400(Lcom/android/camera/actor/PanoramaActor;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1200(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 305
    .local v0, shown:Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/camera/manager/PanoramaViewManager;->updateMovingUI(IIZ)V

    .line 306
    return-void

    .line 304
    .end local v0           #shown:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrame(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    .line 310
    return-void
.end method
