.class final Lcom/zte/heartyservice/main/HeartyServiceApp$8;
.super Landroid/os/Handler;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 3270
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3360
    :cond_0
    :goto_0
    return-void

    .line 3272
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1300()Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3273
    invoke-static {}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethodAppLockUse()V

    .line 3274
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1300()Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->dismiss()V

    .line 3275
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1302(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    goto :goto_0

    .line 3281
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 3282
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "HeartyServiceApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW_APP_LOCK_MSG::packageName is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->needLockedApp(Ljava/lang/String;)Z

    move-result v2

    .line 3285
    .local v2, needLocked:Z
    if-eqz v2, :cond_0

    .line 3288
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1300()Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3289
    new-instance v4, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1302(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    .line 3291
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1300()Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->prepare(Ljava/lang/String;)V

    .line 3292
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1300()Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->show()V

    goto :goto_0

    .line 3297
    .end local v2           #needLocked:Z
    .end local v3           #packageName:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    const v6, 0x7f0a0449

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3302
    :pswitch_3
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    const v6, 0x7f0a044a

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3320
    :pswitch_4
    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->autoNetTrafficAdjust()V
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1400()V

    goto/16 :goto_0

    .line 3325
    :pswitch_5
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const v5, 0x7f0a03e8

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3330
    :pswitch_6
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const v5, 0x7f0a03e9

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3335
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;

    .line 3336
    .local v0, localAskArg:Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;
    iget-object v4, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->permission:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->enable:Z

    iget v7, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->slotId:I

    invoke-static {v4, v5, v6, v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showPermissionDialog(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 3341
    .end local v0           #localAskArg:Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;
    :pswitch_8
    const/4 v4, 0x1

    sput-boolean v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->donotShowTickAndSound:Z

    .line 3342
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3343
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$402(Lcom/zte/heartyservice/indicator/Notifier;)Lcom/zte/heartyservice/indicator/Notifier;

    .line 3345
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    goto/16 :goto_0

    .line 3350
    :pswitch_9
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3353
    new-instance v1, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 3354
    .local v1, mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->switchingSaveSetting()V

    .line 3355
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->clearSaveSetting()V

    goto/16 :goto_0

    .line 3270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
