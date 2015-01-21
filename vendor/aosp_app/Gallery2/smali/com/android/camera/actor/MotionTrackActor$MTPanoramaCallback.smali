.class final Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;
.super Ljava/lang/Object;
.source "MotionTrackActor.java"

# interfaces
.implements Landroid/hardware/Camera$AUTORAMACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MotionTrackActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MTPanoramaCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MotionTrackActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/actor/MotionTrackActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    return-void
.end method


# virtual methods
.method public onBlended([BII)V
    .locals 3
    .parameter "data"
    .parameter "imageIndex"
    .parameter "totalIndex"

    .prologue
    .line 242
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBlended, imageindex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totoalIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez p3, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->access$802(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #calls: Lcom/android/camera/actor/MotionTrackActor;->savingDoneThread()V
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$900(Lcom/android/camera/actor/MotionTrackActor;)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/MotionTrackActor;->showMotionFailedAlterDialog()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 251
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->access$802(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 252
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/camera/actor/MotionTrackActor;->setSaveRequest([BIII)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1100(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v2}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FileSaver;->copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    move-result-object v1

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1002(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    .line 254
    if-ne p2, p3, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #calls: Lcom/android/camera/actor/MotionTrackActor;->savingDoneThread()V
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$900(Lcom/android/camera/actor/MotionTrackActor;)V

    goto :goto_0
.end method

.method public onCapture()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "MotionTrack"

    const-string v1, "onCapture().do notiong"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onCapture([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 269
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapture callback, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurrentNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v2}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z
    invoke-static {v0, v3}, Lcom/android/camera/actor/MotionTrackActor;->access$1202(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 271
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$508(Lcom/android/camera/actor/MotionTrackActor;)I

    .line 275
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    if-gt v0, v4, :cond_3

    .line 276
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$600(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/manager/MotionTrackViewManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/MotionTrackViewManager;->setProgress(I)V

    .line 284
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v1}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/camera/actor/MotionTrackActor;->setSaveRequest([BIII)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1100(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v2}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FileSaver;->copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    move-result-object v1

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1002(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    .line 287
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z
    invoke-static {v0, v3}, Lcom/android/camera/actor/MotionTrackActor;->access$1202(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 289
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/actor/MotionTrackActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    goto :goto_0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$600(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/manager/MotionTrackViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v1}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/MotionTrackViewManager;->setProgress(I)V

    goto :goto_1
.end method

.method public onIntermediate([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 260
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIntermediate, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/camera/actor/MotionTrackActor;->setSaveRequest([BIII)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1100(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v2}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FileSaver;->copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    move-result-object v1

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1002(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    goto :goto_0
.end method
