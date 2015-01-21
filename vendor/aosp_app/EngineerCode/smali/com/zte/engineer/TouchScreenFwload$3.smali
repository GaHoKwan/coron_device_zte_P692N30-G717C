.class Lcom/zte/engineer/TouchScreenFwload$3;
.super Landroid/os/Handler;
.source "TouchScreenFwload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchScreenFwload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TouchScreenFwload;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenFwload;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "paramMessage"

    .prologue
    const v10, 0x7f0600e5

    const/4 v9, 0x3

    const-wide/16 v7, 0x1388

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    const-string v1, "TouchScreenFwload"

    const-string v2, ">>>>>>>>>>handleMessage()>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "TouchScreenFwload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------msg.what()===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :pswitch_0
    const-string v1, "TouchScreenFwload"

    const-string v2, "------default--------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    const-string v1, "TouchScreenFwload"

    const-string v2, "<<<<<<<<<<handleMessage()<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    return-void

    .line 80
    :pswitch_1
    const-string v1, "TouchScreenFwload"

    const-string v2, "------MESSAGE_SHOW_WAIT_WINDOW--------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Lcom/zte/engineer/TouchScreenFwload;->lastTime:J
    invoke-static {v1, v2, v3}, Lcom/zte/engineer/TouchScreenFwload;->access$002(Lcom/zte/engineer/TouchScreenFwload;J)J

    .line 82
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/zte/engineer/TouchScreenFwload;->access$102(Lcom/zte/engineer/TouchScreenFwload;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 86
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 90
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v2, v2, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v1, "TouchScreenFwload"

    const-string v2, "------MESSAGE_CHECK_UPDATE_RESULT--------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->lastTime:J
    invoke-static {v3}, Lcom/zte/engineer/TouchScreenFwload;->access$000(Lcom/zte/engineer/TouchScreenFwload;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1194

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v2, v2, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->totalTime:I
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwload;->access$200(Lcom/zte/engineer/TouchScreenFwload;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    #setter for: Lcom/zte/engineer/TouchScreenFwload;->totalTime:I
    invoke-static {v1, v2}, Lcom/zte/engineer/TouchScreenFwload;->access$202(Lcom/zte/engineer/TouchScreenFwload;I)I

    .line 100
    const-string v1, "TouchScreenFwload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------totalTime ======= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->totalTime:I
    invoke-static {v3}, Lcom/zte/engineer/TouchScreenFwload;->access$200(Lcom/zte/engineer/TouchScreenFwload;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwload;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/zte/engineer/TouchScreenFwload;->isUpdateSuccess:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/zte/engineer/TouchScreenFwload;->access$302(Lcom/zte/engineer/TouchScreenFwload;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    const-string v1, "TouchScreenFwload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----isUpdateSuccess = touchscreenfwloader(4)----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->isUpdateSuccess:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/engineer/TouchScreenFwload;->access$300(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->isUpdateSuccess:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$300(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "TPUpdateRebootCount"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #calls: Lcom/zte/engineer/TouchScreenFwload;->setAirplaneModeOn(Z)V
    invoke-static {v1, v5}, Lcom/zte/engineer/TouchScreenFwload;->access$400(Lcom/zte/engineer/TouchScreenFwload;Z)V

    .line 110
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 112
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/engineer/TouchScreenFwload$3$1;

    invoke-direct {v3, p0}, Lcom/zte/engineer/TouchScreenFwload$3$1;-><init>(Lcom/zte/engineer/TouchScreenFwload$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->totalTime:I
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$200(Lcom/zte/engineer/TouchScreenFwload;)I

    move-result v1

    const/16 v2, 0x78

    if-lt v1, v2, :cond_4

    .line 136
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$800(Lcom/zte/engineer/TouchScreenFwload;)I

    move-result v1

    if-lt v1, v9, :cond_3

    .line 137
    const-string v1, "TouchScreenFwload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--totalTime >= 120-----mTPUpdateRebootCount >= 3----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I
    invoke-static {v3}, Lcom/zte/engineer/TouchScreenFwload;->access$800(Lcom/zte/engineer/TouchScreenFwload;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emode_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    const-string v1, "TouchScreenFwload"

    const-string v2, "---------emode_status = 0---------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "TPUpdateRebootCount"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 145
    :cond_3
    const-string v1, "TouchScreenFwload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--totalTime >= 120-----mTPUpdateRebootCount < 3----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I
    invoke-static {v3}, Lcom/zte/engineer/TouchScreenFwload;->access$800(Lcom/zte/engineer/TouchScreenFwload;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v3, 0x7f0600e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v2, v2, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Lcom/zte/engineer/TouchScreenFwload;->lastTime:J
    invoke-static {v1, v2, v3}, Lcom/zte/engineer/TouchScreenFwload;->access$002(Lcom/zte/engineer/TouchScreenFwload;J)J

    .line 152
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v2, v2, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 158
    :pswitch_3
    const-string v1, "TouchScreenFwload"

    const-string v2, "------MESSAGE_UPDATE_FAILED_REBOOT--------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emode_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    const-string v1, "TouchScreenFwload"

    const-string v2, "---------emode_status = 0---------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "TPUpdate"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, localIntent:Landroid/content/Intent;
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v1, "interval"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v1, "window"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
