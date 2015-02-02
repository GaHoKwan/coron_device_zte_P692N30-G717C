.class Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;
.super Landroid/os/Handler;
.source "ReceiverCircuitBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    const v2, 0x7f0600d2

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    const v1, 0x7f0600d3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startTest()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
