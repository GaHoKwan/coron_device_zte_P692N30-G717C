.class final Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 725
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4602(Lcom/mediatek/engineermode/cameranew/Camera;J)J

    .line 726
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4600(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureStartTime:J
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4800(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterLag:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4702(Lcom/mediatek/engineermode/cameranew/Camera;J)J

    .line 727
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterLag:J
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4700(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method
