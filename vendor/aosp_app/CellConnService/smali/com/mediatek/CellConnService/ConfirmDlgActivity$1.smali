.class Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmDlgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/ConfirmDlgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x191

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "BroadcastReceiver onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "BroadcastReceiver AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    .local v0, airplaneModeON:Z
    const-string v5, "ConfirmDlgActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AIRPLANE_MODE_CHANGED ,airplaneModeON = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v0, :cond_1

    .line 111
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 112
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    .line 191
    .end local v0           #airplaneModeON:Z
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0       #airplaneModeON:Z
    :cond_1
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v10, v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 115
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto :goto_0

    .line 119
    .end local v0           #airplaneModeON:Z
    :cond_2
    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "BroadcastReceiver ACTION_DUAL_SIM_MODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v5, "mode"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, dualSimMode:I
    const-string v5, "ConfirmDlgActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver duslSimMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    shr-int v5, v1, v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v9, :cond_3

    .line 126
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v10, v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 131
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto :goto_0

    .line 133
    .end local v1           #dualSimMode:I
    :cond_4
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 135
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "BroadcastReceiver ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, reason:Ljava/lang/String;
    const-string v5, "recentapps"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "homekey"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    :cond_5
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "Dismiss dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 141
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto/16 :goto_0

    .line 143
    .end local v2           #reason:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action_pin_dismiss"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 146
    const-string v5, "simslot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 147
    .local v3, slot:I
    const-string v5, "ConfirmDlgActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver action_pin_dismiss"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 150
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto/16 :goto_0

    .line 152
    .end local v3           #slot:I
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action_melock_dismiss"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 153
    const-string v5, "simslot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 154
    .restart local v3       #slot:I
    const-string v5, "ConfirmDlgActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver action_melock_dismiss"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 157
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto/16 :goto_0

    .line 159
    .end local v3           #slot:I
    :cond_8
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const-string v5, "ConfirmDlgActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, stateExtra:Ljava/lang/String;
    const/4 v3, 0x0

    .line 165
    .restart local v3       #slot:I
    const-string v5, "simId"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 168
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v3, v5, :cond_9

    .line 169
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "BroadcastReceiver SIM State changed slot is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :cond_9
    const-string v5, "ConfirmDlgActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,request slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I
    invoke-static {v7}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 175
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v10, v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 179
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto/16 :goto_0

    .line 181
    :cond_a
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v5}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v5

    if-eq v10, v5, :cond_b

    const/16 v5, 0x192

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    if-eq v5, v6, :cond_b

    const/16 v5, 0x193

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 185
    :cond_b
    const-string v5, "ConfirmDlgActivity"

    const-string v6, "ICC card absent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v5, v9}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 187
    iget-object v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v6}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v6

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v5, v6, v8}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    goto/16 :goto_0
.end method
