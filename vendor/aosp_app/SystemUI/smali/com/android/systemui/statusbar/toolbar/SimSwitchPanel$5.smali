.class Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;
.super Ljava/lang/Object;
.source "SimSwitchPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 457
    .local v3, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v1, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 458
    .local v1, simId:J
    iget v5, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v4

    .line 460
    .local v4, simState:I
    const-string v5, "SimSwitchPanelView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user clicked simIcon, simId is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-ne v4, v8, :cond_1

    .line 463
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mChooseSIMInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1202(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 464
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1300(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Landroid/app/AlertDialog;

    move-result-object v5

    if-nez v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #calls: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->createDialog(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/app/AlertDialog;
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/app/AlertDialog;

    move-result-object v6

    #setter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1302(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 475
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1300(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 479
    :goto_1
    return-void

    .line 469
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0028

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, mText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1300(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 477
    .end local v0           #mText:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #calls: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->changeDefaultSim(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1500(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_1
.end method
