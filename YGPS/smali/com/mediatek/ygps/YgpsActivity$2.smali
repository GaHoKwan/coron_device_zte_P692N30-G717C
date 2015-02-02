.class Lcom/mediatek/ygps/YgpsActivity$2;
.super Landroid/os/Handler;
.source "YgpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1003
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1005
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1010
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1015
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v4

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1016
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1017
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->setViewToStopState()V
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$400(Lcom/mediatek/ygps/YgpsActivity;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1015
    goto :goto_1

    .line 1022
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v5, 0x7f050062

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1029
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$500(Lcom/mediatek/ygps/YgpsActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1033
    :sswitch_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1036
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v1, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 1037
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->finishSavingAutoTestLog()V
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$700(Lcom/mediatek/ygps/YgpsActivity;)V

    .line 1038
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V

    .line 1039
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->setStartButtonEnable(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/ygps/YgpsActivity;->access$900(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 1041
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 1042
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z
    invoke-static {v1, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$1002(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 1043
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$2;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStartPressedHandling:Z
    invoke-static {v1, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$1102(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    goto/16 :goto_0

    .line 1003
    nop

    :sswitch_data_0
    .sparse-switch
        0x406 -> :sswitch_0
        0x410 -> :sswitch_2
        0x41a -> :sswitch_1
        0x42e -> :sswitch_4
        0x438 -> :sswitch_3
        0x442 -> :sswitch_5
    .end sparse-switch
.end method
