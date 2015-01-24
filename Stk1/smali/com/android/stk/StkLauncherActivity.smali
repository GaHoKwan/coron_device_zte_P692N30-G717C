.class public Lcom/android/stk/StkLauncherActivity;
.super Landroid/app/Activity;
.source "StkLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method isOnFlightMode()Z
    .locals 5

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, mode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    const-string v2, "Stk-LA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airlane mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Stk-LA"

    const-string v3, "fail to get airlane mode"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v3

    .line 81
    .local v3, service:Lcom/android/stk/StkAppService;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v9}, Lcom/android/stk/StkAppService;->StkQueryAvailable(I)I

    move-result v6

    if-eq v6, v10, :cond_3

    .line 83
    const-string v6, "Stk-LA"

    const-string v7, "Not available"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, resId:I
    const/4 v4, 0x0

    .line 88
    .local v4, simState:I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    .line 93
    const-string v6, "Stk-LA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not available simState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity;->isOnFlightMode()Z

    move-result v6

    if-ne v10, v6, :cond_0

    .line 95
    const v2, 0x7f060042

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 101
    .local v5, toast:Landroid/widget/Toast;
    const/16 v6, 0x50

    invoke-virtual {v5, v6, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 102
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 117
    .end local v2           #resId:I
    .end local v4           #simState:I
    .end local v5           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 96
    .restart local v2       #resId:I
    .restart local v4       #simState:I
    :cond_0
    if-eq v11, v4, :cond_1

    if-eq v12, v4, :cond_1

    const/4 v6, 0x4

    if-ne v6, v4, :cond_2

    .line 97
    :cond_1
    const v2, 0x7f060043

    goto :goto_0

    .line 99
    :cond_2
    const v2, 0x7f060005

    goto :goto_0

    .line 107
    .end local v2           #resId:I
    .end local v4           #simState:I
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v11, [I

    .line 109
    .local v1, op:[I
    aput v12, v1, v9

    .line 111
    aput v9, v1, v10

    .line 112
    const-string v6, "op"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 113
    const-string v6, "sim id"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/stk/StkAppService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
