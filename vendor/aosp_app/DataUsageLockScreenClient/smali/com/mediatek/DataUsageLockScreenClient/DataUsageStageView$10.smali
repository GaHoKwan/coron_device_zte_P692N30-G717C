.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$10;
.super Landroid/os/Handler;
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
    .line 1684
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$10;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1687
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1692
    :goto_0
    return-void

    .line 1689
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$10;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$1500(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    goto :goto_0

    .line 1687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
