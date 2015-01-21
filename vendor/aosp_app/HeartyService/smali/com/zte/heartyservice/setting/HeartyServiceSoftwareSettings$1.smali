.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    .line 106
    .local v2, id:I
    packed-switch v2, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->isVipModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a038c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a038f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0173

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$2;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$1;

    invoke-direct {v5, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$1;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Landroid/widget/CompoundButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 123
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    new-instance v3, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$3;

    invoke-direct {v3, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$3;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 133
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 134
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 135
    :cond_1
    if-nez p2, :cond_2

    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0556

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0390

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00eb

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$5;

    invoke-direct {v5, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$5;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Landroid/widget/CompoundButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00ea

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;

    invoke-direct {v5, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 153
    .restart local v1       #dialog:Landroid/app/Dialog;
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    new-instance v3, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$6;

    invoke-direct {v3, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$6;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 163
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 164
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 166
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-static {v3, p2}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 173
    :pswitch_2
    if-nez p2, :cond_3

    .line 174
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
    invoke-static {v3, p2, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$000(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;ZLandroid/widget/CompoundButton;)V

    goto/16 :goto_0

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-static {v3, p2}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 177
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$102(Z)Z

    goto/16 :goto_0

    .line 221
    :pswitch_3
    const-string v3, "hs_auto_update"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->setOption(Ljava/lang/String;Z)V

    .line 222
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$202(Z)Z

    .line 223
    if-eqz p2, :cond_0

    .line 224
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->checkTimer(I)V

    goto/16 :goto_0

    .line 229
    :pswitch_4
    invoke-static {p2}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->setMonitor(Z)V

    .line 230
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 233
    :pswitch_5
    invoke-static {p2}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->setMarkMonitor(Z)V

    .line 234
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 237
    :pswitch_6
    invoke-static {p2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowPermNotice(Z)V

    .line 239
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 242
    :pswitch_7
    if-nez p2, :cond_4

    .line 243
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeShoppingSafeDlg(ZLandroid/widget/CompoundButton;)V
    invoke-static {v3, p2, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$300(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;ZLandroid/widget/CompoundButton;)V

    goto/16 :goto_0

    .line 245
    :cond_4
    invoke-static {p2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShoppingSafe(Z)V

    .line 246
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 250
    :pswitch_8
    if-nez p2, :cond_5

    .line 251
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeUrlSafeDlg(ZLandroid/widget/CompoundButton;)V
    invoke-static {v3, p2, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$400(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;ZLandroid/widget/CompoundButton;)V

    goto/16 :goto_0

    .line 253
    :cond_5
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->canOpenUrlSafe()Z

    move-result v3

    if-nez v3, :cond_6

    .line 254
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->downloadUmewebDlg(Landroid/widget/CompoundButton;)V
    invoke-static {v3, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$500(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    goto/16 :goto_0

    .line 256
    :cond_6
    invoke-static {v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setUrlSafeDefault(Z)V

    .line 257
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 262
    :pswitch_9
    if-eqz p2, :cond_7

    .line 264
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const-class v6, Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #getter for: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setFloaterOpen(Z)V

    .line 271
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 268
    :cond_7
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const-class v6, Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->stopService(Landroid/content/Intent;)Z

    .line 269
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #getter for: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setFloaterOpen(Z)V

    goto :goto_1

    .line 274
    :pswitch_a
    if-eqz p2, :cond_8

    .line 276
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const-class v6, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 277
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #getter for: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setScreenLockMonitor(Z)V

    .line 283
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 280
    :cond_8
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const-class v6, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->stopService(Landroid/content/Intent;)Z

    .line 281
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #getter for: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setScreenLockMonitor(Z)V

    goto :goto_2

    .line 286
    :pswitch_b
    if-eqz p2, :cond_9

    .line 288
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #getter for: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setFloaterFix(Z)V

    .line 294
    :goto_3
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 292
    :cond_9
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #getter for: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setFloaterFix(Z)V

    goto :goto_3

    .line 297
    :pswitch_c
    if-nez p2, :cond_a

    .line 298
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const-string v4, "show_battery_notice"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 302
    :goto_4
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.zte.heartyservice.intent.action.update_battery_notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 300
    :cond_a
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const-string v4, "show_battery_notice"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f0e03ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
