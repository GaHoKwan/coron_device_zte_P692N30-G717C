.class Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    return-void
.end method

.method private handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v3, 0x190

    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 650
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_1

    .line 651
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 655
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 656
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_2

    .line 657
    const-string v1, "Settings/CellBroadcastSettings"

    const-string v2, "handleGetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 659
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_0

    .line 660
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 661
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 697
    :cond_0
    :goto_1
    return-void

    .line 653
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 665
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 667
    const-string v1, "Settings/CellBroadcastSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 670
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_0

    .line 671
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 672
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_1

    .line 676
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 677
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 679
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 680
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    #setter for: Lcom/mediatek/settings/CellBroadcastSettings;->mList:Ljava/util/ArrayList;
    invoke-static {v2, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1902(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 681
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 682
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 683
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #setter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v1, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2002(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    .line 685
    :cond_5
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    new-instance v2, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V

    #setter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v1, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2002(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    .line 686
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 688
    :cond_6
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 689
    const-string v1, "Settings/CellBroadcastSettings"

    const-string v2, "handleGetCellBroadcastConfigResponse: ar.result is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_0

    .line 691
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 692
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 700
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 701
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 702
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 703
    const-string v1, "Settings/CellBroadcastSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 706
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 708
    const-string v1, "Settings/CellBroadcastSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2200(Lcom/mediatek/settings/CellBroadcastSettings;Z)V

    .line 715
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 647
    :goto_0
    return-void

    .line 634
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "handleMessage, activity is finished, do nothing"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 642
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
