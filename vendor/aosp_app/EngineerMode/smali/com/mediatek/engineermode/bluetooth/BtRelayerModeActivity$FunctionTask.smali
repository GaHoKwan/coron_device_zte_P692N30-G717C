.class public Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;
.super Landroid/os/AsyncTask;
.source "BtRelayerModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, result:I
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    new-instance v3, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v3}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$102(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 202
    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    .local v0, paraValue:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v2}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mPortNumber:I
    invoke-static {v3}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBaudrate:I
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/engineermode/bluetooth/BtTest;->relayerStart(II)I

    move-result v1

    .line 206
    const-string v2, "EM/BT/RelayerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->relayerStart-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBaudrate:I
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mPortNumber:I
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "result 0 success,-1 fail: result= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 209
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v2}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->relayerExit()I

    .line 211
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartFlag:Z
    invoke-static {v2, v4}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$402(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;Z)Z

    .line 212
    const/16 v1, 0xa

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "END Test"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartFlag:Z
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$402(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;Z)Z

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->mStartBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity$FunctionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
