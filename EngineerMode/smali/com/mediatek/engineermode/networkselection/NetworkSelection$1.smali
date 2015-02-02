.class Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;
.super Ljava/lang/Object;
.source "NetworkSelection.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkselection/NetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 80
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-static {v1}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$000(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mCurrentType:I
    invoke-static {v1}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$100(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "NetworkSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode. slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$200(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mCurrentType:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$102(Lcom/mediatek/engineermode/networkselection/NetworkSelection;I)I

    .line 88
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-static {v1}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$000(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->setInternationalNetworkMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NetworkSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternationalNetworkMode failed. slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$200(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    const-string v2, "Failed to set International Network Mode"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-static {v1}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$000(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->setInternationalNetworkMode(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;->this$0:Lcom/mediatek/engineermode/networkselection/NetworkSelection;

    #getter for: Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-static {v1}, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->access$000(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->setInternationalNetworkMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
