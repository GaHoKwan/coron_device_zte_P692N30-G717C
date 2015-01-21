.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

.field final synthetic val$item:Lcom/zte/heartyservice/main/ShortCutItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Lcom/zte/heartyservice/main/ShortCutItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->val$item:Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 1198
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->val$item:Lcom/zte/heartyservice/main/ShortCutItem;

    iget-object v0, v3, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    .line 1199
    .local v0, action:Ljava/lang/String;
    const-string v3, "HeartyServiceRealActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    const-string v3, "TENCENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1205
    new-instance v2, Lcom/zte/heartyservice/main/MarketApi;

    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/heartyservice/main/MarketApi;-><init>(Landroid/content/Context;)V

    .line 1206
    .local v2, m:Lcom/zte/heartyservice/main/MarketApi;
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSumRead(I)V

    .line 1208
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$1500(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 1209
    invoke-virtual {v2, v4}, Lcom/zte/heartyservice/main/MarketApi;->sendTencentAction(Z)V

    goto :goto_0

    .line 1214
    .end local v2           #m:Lcom/zte/heartyservice/main/MarketApi;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->val$item:Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/main/ShortCutItem;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    .line 1215
    const-string v3, "com.zte.heartyservice.intent.action.startApk.CLOUDBACKUP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1217
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :cond_3
    :goto_1
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.ad_intercept"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1236
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.zte.heartyservice.intent.action.clean_ad_notice"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1218
    :cond_4
    :try_start_1
    const-string v3, "com.zte.heartyservice.intent.action.startApk.RETRIEVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1220
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1222
    :catch_0
    move-exception v1

    .line 1223
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "com.zte.heartyservice.intent.action.startApk.CLOUDBACKUP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1225
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$700(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.zte.backup.mmi"

    invoke-static {v3, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1227
    :cond_5
    const-string v3, "com.zte.heartyservice.intent.action.startApk.RETRIEVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1229
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$700(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.zte.retrieve"

    invoke-static {v3, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1237
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_6
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.PERMISSION_SCANNER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.zte.heartyservice.intent.action.clean_permission_notice"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
