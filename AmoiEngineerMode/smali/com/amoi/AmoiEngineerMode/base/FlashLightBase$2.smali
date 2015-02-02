.class Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;
.super Landroid/os/Handler;
.source "FlashLightBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->inithandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->openFlashLight()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->closeFlashLight()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$100(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->changeFlashLight()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->closeFlashLight()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$100(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    .line 79
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->stopTimerAndTimerTask()V

    .line 80
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->tipsView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$300(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    const v2, 0x7f0600df

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->retestButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$400(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->showButton()V

    goto :goto_0

    .line 86
    :pswitch_4
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->retest()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
