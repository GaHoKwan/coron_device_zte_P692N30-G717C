.class Lcom/android/mms/ui/DialogModeActivity$14;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3551
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1000(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 3552
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$1200(Lcom/android/mms/ui/DialogModeActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v0

    .line 3554
    .local v0, sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v2

    long-to-int v2, v2

    #setter for: Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/DialogModeActivity;->access$1302(Lcom/android/mms/ui/DialogModeActivity;I)I

    .line 3560
    .end local v0           #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->simSelection()V
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1400(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 3561
    return-void

    .line 3555
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1100(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3556
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonSlotIds:[I
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$1200(Lcom/android/mms/ui/DialogModeActivity;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v0

    .line 3558
    .restart local v0       #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$14;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v2

    long-to-int v2, v2

    #setter for: Lcom/android/mms/ui/DialogModeActivity;->send_sim_id:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/DialogModeActivity;->access$1302(Lcom/android/mms/ui/DialogModeActivity;I)I

    goto :goto_0
.end method
