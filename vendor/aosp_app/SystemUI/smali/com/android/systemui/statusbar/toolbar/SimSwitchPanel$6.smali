.class Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;
.super Ljava/lang/Object;
.source "SimSwitchPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 505
    iput-object p1, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1300(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1300(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 511
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 521
    :goto_0
    :pswitch_0
    return-void

    .line 513
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mChooseSIMInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1200(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    #calls: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->radioOnBySlot(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1600(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;I)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel$6;->this$0:Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->mChooseSIMInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1200(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    #calls: Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->changeDefaultSim(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;->access$1500(Lcom/android/systemui/statusbar/toolbar/SimSwitchPanel;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
