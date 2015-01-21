.class Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;
.super Landroid/os/Handler;
.source "PSensorChangeThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 113
    :pswitch_0
    const-string v0, "PSensorChangeThreshold"

    const-string v1, "set success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$000(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    const-string v1, "Set threshold succeed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$100(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v0, "PSensorChangeThreshold"

    const-string v1, "set fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$000(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    const-string v1, "Set threshold failed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$100(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v0, "PSensorChangeThreshold"

    const-string v1, "set fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$000(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    const-string v1, "Invalid value"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$100(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
