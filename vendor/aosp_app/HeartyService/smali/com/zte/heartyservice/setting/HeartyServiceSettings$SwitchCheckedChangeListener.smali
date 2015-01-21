.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Lcom/zte/heartyservice/setting/HeartyServiceSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v9, 0x7f0a0608

    const v8, 0x7f0a0607

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 257
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    .line 258
    .local v2, id:I
    packed-switch v2, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 412
    return-void

    .line 261
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$300()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "do_not_disturb_switch"

    sget-boolean v5, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq p2, v3, :cond_0

    .line 264
    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setDoNotDisturbSetting(Z)V
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$400(Z)V

    .line 265
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setDoNotDisturbSwitch(Z)V
    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$500(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V

    .line 266
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$602(Z)Z

    goto :goto_0

    .line 270
    :pswitch_1
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$300()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "timing_save_electricity_switch"

    sget-boolean v5, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq p2, v3, :cond_0

    .line 273
    const-string v3, "settings"

    const-string v4, "time checked == sp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setTimingSaveElectricitySetting(Z)V
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$700(Z)V

    .line 275
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setTimingSaveElectricitySwitch(Z)V
    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$800(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V

    .line 276
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$902(Z)Z

    goto :goto_0

    .line 281
    :pswitch_2
    const-string v3, "hs_auto_check"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 282
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1002(Z)Z

    .line 283
    if-eqz p2, :cond_0

    .line 284
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v3, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->checkTimer(I)V

    goto :goto_0

    .line 288
    :pswitch_3
    const-string v3, "hs_virus_scan"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 289
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1102(Z)Z

    .line 290
    if-eqz p2, :cond_0

    .line 291
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->checkTimer(I)V

    goto :goto_0

    .line 295
    :pswitch_4
    const-string v3, "hs_auto_net_traffic_adjust"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 297
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1202(Z)Z

    .line 298
    if-eqz p2, :cond_0

    .line 299
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->checkTimer(I)V

    goto :goto_0

    .line 304
    :pswitch_5
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$300()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "smart_low_switch"

    sget-boolean v5, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq p2, v3, :cond_0

    .line 306
    const-string v3, "settings"

    const-string v4, "low checked == sp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setPowerSavingSetting(Z)V
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1300(Z)V

    .line 308
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setPowerSavingSwitch(Z)V
    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1400(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V

    .line 309
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1502(Z)Z

    goto/16 :goto_0

    .line 313
    :pswitch_6
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->isVipModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a038c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a038f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0173

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;

    invoke-direct {v5, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$1;

    invoke-direct {v5, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$1;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;Landroid/widget/CompoundButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 329
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 330
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 331
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 332
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    if-nez p2, :cond_2

    .line 333
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
    invoke-static {v3, p2, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1700(Lcom/zte/heartyservice/setting/HeartyServiceSettings;ZLandroid/widget/CompoundButton;)V

    goto/16 :goto_0

    .line 335
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-static {v3, p2}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 336
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1602(Z)Z

    goto/16 :goto_0

    .line 340
    :pswitch_7
    if-nez p2, :cond_3

    .line 341
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
    invoke-static {v3, p2, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1700(Lcom/zte/heartyservice/setting/HeartyServiceSettings;ZLandroid/widget/CompoundButton;)V

    goto/16 :goto_0

    .line 343
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-static {v3, p2}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 344
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1602(Z)Z

    goto/16 :goto_0

    .line 348
    :pswitch_8
    const-string v3, "hs_memory_optimize"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 350
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1802(Z)Z

    goto/16 :goto_0

    .line 353
    :pswitch_9
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const-string v4, "auto_clean_first_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const-string v4, "auto_clean_first_enabled"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 355
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0605

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0606

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$4;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$4;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$3;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 372
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 373
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 375
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_4
    const-string v3, "hs_clear_app"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 376
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1902(Z)Z

    .line 377
    if-eqz p2, :cond_0

    .line 378
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->checkTimer(I)V

    goto/16 :goto_0

    .line 382
    :pswitch_a
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const-string v4, "lock_screen_clean_first_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 383
    iget-object v3, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const-string v4, "lock_screen_clean_first_enabled"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 384
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a067e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a067f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$6;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$6;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$5;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$5;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 401
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 402
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 404
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_5
    const-string v3, "hs_lock_screen_clean"

    invoke-static {v3, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 406
    invoke-static {p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1902(Z)Z

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03e6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
