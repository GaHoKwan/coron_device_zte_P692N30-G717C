.class Lcom/mediatek/phone/vt/VTInCallScreen$4;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DIALOG_ITEM_FOUR:I = 0x4

.field private static final DIALOG_ITEM_THREE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v2, 0x7f08004f

    .line 1478
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1100(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1100(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1480
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1102(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1482
    :cond_0
    if-nez p2, :cond_2

    .line 1484
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 0 "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1486
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1528
    :goto_0
    return-void

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1200(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0

    .line 1492
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_4

    .line 1494
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 1 "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1496
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1498
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1300(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0

    .line 1502
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p2, :cond_6

    .line 1504
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 2 "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1506
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1508
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    :cond_5
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1400(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0

    .line 1512
    :cond_6
    const/4 v0, 0x3

    if-ne v0, p2, :cond_7

    .line 1514
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 3 "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1500(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0

    .line 1517
    :cond_7
    const/4 v0, 0x4

    if-ne v0, p2, :cond_8

    .line 1519
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 4 "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1521
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1600(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto/16 :goto_0

    .line 1524
    :cond_8
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 5 "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$4;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1700(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto/16 :goto_0
.end method
