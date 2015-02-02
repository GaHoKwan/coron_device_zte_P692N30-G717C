.class Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$1;
.super Ljava/lang/Object;
.source "BtRelayerModeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 102
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBauSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBauSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/BT/RelayerMode"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
