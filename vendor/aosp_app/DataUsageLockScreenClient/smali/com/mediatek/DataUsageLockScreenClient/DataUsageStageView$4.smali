.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;
.super Lcom/mediatek/ngin3d/animation/Animation$Listener;
.source "DataUsageStageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->scaleTwoAnimation()V
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
    .line 518
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Animation$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 12
    .parameter "animation"

    .prologue
    const/16 v11, 0xdac

    const/16 v10, 0xff

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 520
    new-instance v2, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;
    invoke-static {v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$500(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Lcom/mediatek/ngin3d/Container;

    move-result-object v3

    const-string v4, "opacity"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v1

    .line 523
    .local v1, opacityRText2:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    new-instance v2, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #getter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;
    invoke-static {v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$600(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Lcom/mediatek/ngin3d/Image;

    move-result-object v3

    const-string v4, "opacity"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    .line 526
    .local v0, opacityRScale2:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 527
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 529
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    #setter for: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale2Run:Z
    invoke-static {v2, v7}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$702(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;Z)Z

    .line 530
    return-void
.end method
