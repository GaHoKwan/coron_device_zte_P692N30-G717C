.class Lcom/android/camera/actor/PhotoActor$12;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 552
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutterCallback onShutter mContinuousShotPerformed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v3}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mStreamID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget v3, v3, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerPhotoDataGrip()V

    .line 555
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->calculateShutterTime()V

    .line 557
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget v0, v0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1300(Lcom/android/camera/actor/PhotoActor;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotStartTime:J
    invoke-static {v0, v3, v4}, Lcom/android/camera/actor/PhotoActor;->access$1402(Lcom/android/camera/actor/PhotoActor;J)J

    .line 559
    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1300(Lcom/android/camera/actor/PhotoActor;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSoundID:I
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$1500(Lcom/android/camera/actor/PhotoActor;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const v6, 0x3f4ccccd

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, v7, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    .line 561
    :cond_0
    return-void
.end method
