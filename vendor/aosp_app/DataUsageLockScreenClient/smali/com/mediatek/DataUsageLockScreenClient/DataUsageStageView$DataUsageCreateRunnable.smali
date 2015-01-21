.class public Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;
.super Ljava/lang/Object;
.source "DataUsageStageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageCreateRunnable"
.end annotation


# instance fields
.field private mID:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSim:I

.field final synthetic this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;


# direct methods
.method public constructor <init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mID:I

    .line 250
    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mSim:I

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mServiceState:Landroid/telephony/ServiceState;

    .line 255
    invoke-static {}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$000()I

    move-result v0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mID:I

    .line 256
    invoke-static {}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$008()I

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] create, handleDataUsageLockScreenView() , mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mSim:I

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mServiceState:Landroid/telephony/ServiceState;

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->handleDataUsageView(ILandroid/telephony/ServiceState;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$100(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;ILandroid/telephony/ServiceState;)V

    .line 262
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] create, end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mServiceState:Landroid/telephony/ServiceState;

    .line 264
    return-void
.end method

.method public setSim(ILandroid/telephony/ServiceState;)V
    .locals 0
    .parameter "sim"
    .parameter "serviceState"

    .prologue
    .line 267
    iput p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mSim:I

    .line 268
    iput-object p2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->mServiceState:Landroid/telephony/ServiceState;

    .line 269
    return-void
.end method
