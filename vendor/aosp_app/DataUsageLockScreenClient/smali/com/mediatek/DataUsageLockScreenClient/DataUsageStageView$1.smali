.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$1;
.super Landroid/telephony/PhoneStateListener;
.source "DataUsageStageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;


# direct methods
.method constructor <init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$1;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$1;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->createInternal(ILandroid/telephony/ServiceState;)Landroid/view/View;

    .line 203
    return-void
.end method
