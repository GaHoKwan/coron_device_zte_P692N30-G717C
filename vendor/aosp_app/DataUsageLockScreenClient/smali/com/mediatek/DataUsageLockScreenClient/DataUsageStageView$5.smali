.class Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;
.super Lcom/mediatek/ngin3d/animation/Animation$Listener;
.source "DataUsageStageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveOneFloating(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

.field final synthetic val$cardCount:I


# direct methods
.method constructor <init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    iput p2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;->val$cardCount:I

    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Animation$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;->this$0:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;->val$cardCount:I

    #calls: Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V
    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->access$800(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    .line 649
    return-void
.end method
