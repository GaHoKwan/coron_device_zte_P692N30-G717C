.class Lcom/hf/UI/InitDefaultActivity$1;
.super Landroid/os/Handler;
.source "InitDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/InitDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 80
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 83
    :sswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    goto :goto_0

    .line 91
    :sswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    .line 97
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hf/model/CityModel;

    .line 98
    .local v0, city:Lcom/hf/model/CityModel;
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #calls: Lcom/hf/UI/InitDefaultActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V
    invoke-static {v2, v0}, Lcom/hf/UI/InitDefaultActivity;->access$0(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/model/CityModel;)V

    goto :goto_0

    .line 102
    .end local v0           #city:Lcom/hf/model/CityModel;
    :sswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 108
    :goto_2
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const v3, 0x7f08004a

    invoke-static {v2, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :sswitch_3
    :try_start_3
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 116
    :goto_3
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const v3, 0x7f080010

    invoke-static {v2, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :sswitch_4
    :try_start_4
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 124
    :goto_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const-class v3, Lcom/hf/UI/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dialog_net_notice_switch"

    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mNetSwitch:Z
    invoke-static {v3}, Lcom/hf/UI/InitDefaultActivity;->access$1(Lcom/hf/UI/InitDefaultActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    invoke-virtual {v2, v1}, Lcom/hf/UI/InitDefaultActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    invoke-virtual {v2}, Lcom/hf/UI/InitDefaultActivity;->finish()V

    goto :goto_0

    .line 131
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "failed"

    const-string v3, "queryfailed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :try_start_5
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->dismissDialog(I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 140
    :goto_5
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$1;->this$0:Lcom/hf/UI/InitDefaultActivity;

    const v3, 0x7f080040

    invoke-static {v2, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 137
    :catch_1
    move-exception v2

    goto :goto_5

    .line 121
    :catch_2
    move-exception v2

    goto :goto_4

    .line 113
    :catch_3
    move-exception v2

    goto :goto_3

    .line 103
    :catch_4
    move-exception v2

    goto :goto_2

    .line 92
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_2
        0xca -> :sswitch_1
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
    .end sparse-switch
.end method
