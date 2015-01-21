.class Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;
.super Landroid/os/Handler;
.source "CdsRadioInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsRadioInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 294
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 296
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePhoneState()V
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$700(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    goto :goto_0

    .line 300
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateSignalStrength()V
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$800(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    goto :goto_0

    .line 304
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateServiceState()V
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$900(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePowerState()V
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1000(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    goto :goto_0

    .line 309
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 310
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 311
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataCallList(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1100(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 316
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 317
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 318
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateNeighboringCids(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1200(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNeighboringCids:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1300(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 326
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    invoke-virtual {v1, v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->handleAtCmdResponse(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_5
    .end sparse-switch
.end method
