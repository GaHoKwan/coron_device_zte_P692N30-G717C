.class public Lcom/mediatek/engineermode/DailyUseSettingService;
.super Landroid/app/Service;
.source "DailyUseSettingService.java"


# static fields
.field private static final DATA_SIZE:I = 0x5a4

.field private static final IPO_DISABLE:I = 0x0

.field private static final IPO_ENABLE:I = 0x1

.field private static final KEY_IVSR:Ljava/lang/String; = "ivsr"

.field private static final KEY_QUICK_BOOT:Ljava/lang/String; = "quick_boot"

.field private static final KEY_VM_LOG:Ljava/lang/String; = "vm_log"

.field private static final SET_SPEECH_VM_ENABLE:I = 0x60

.field private static final SYSTEM_PROP_NAME:Ljava/lang/String; = "ril.em.dailyuse"

.field private static final TAG:Ljava/lang/String; = "EM/SettingService"

.field private static final VALUE_0:Ljava/lang/String; = "0"

.field private static final VALUE_1:Ljava/lang/String; = "1"

.field private static final VM_ENABLE:I = 0x0

.field private static final VM_EPL_ENABLE:I = 0x1

.field private static final VM_LOG_POS:I = 0x5a0


# instance fields
.field private mIvsr:Z

.field private mQuickBoot:Z

.field private mVmLog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mQuickBoot:Z

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mIvsr:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mVmLog:Z

    return-void
.end method

.method private doSettings()V
    .locals 12

    .prologue
    .line 63
    const-string v7, "EM/SettingService"

    const-string v8, "Quick boot: %1$s, IVSR: %2$s, VM Log: %3$s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mQuickBoot:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mIvsr:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-boolean v11, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mVmLog:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x1

    .line 66
    .local v1, ipoSetOk:Z
    const/4 v4, 0x1

    .line 67
    .local v4, ivsrSetOk:Z
    const/4 v6, 0x1

    .line 69
    .local v6, vmSetOk:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ipo_setting"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    .line 71
    .local v2, ipoSettingEnabled:Z
    :goto_0
    iget-boolean v7, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mQuickBoot:Z

    if-ne v2, v7, :cond_1

    .line 72
    const-string v7, "EM/SettingService"

    const-string v8, "Skip quick boot setting"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ivsr_setting"

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    const/4 v3, 0x1

    .line 82
    .local v3, ivsrEnabled:Z
    :goto_2
    iget-boolean v7, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mIvsr:Z

    if-ne v3, v7, :cond_4

    .line 83
    const-string v7, "EM/SettingService"

    const-string v8, "Skip IVSR setting"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_3
    const/16 v7, 0x5a4

    new-array v0, v7, [B

    .line 92
    .local v0, audioData:[B
    const/16 v7, 0x5a4

    invoke-static {v0, v7}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    move-result v5

    .line 93
    .local v5, ret:I
    if-nez v5, :cond_8

    .line 94
    iget-boolean v7, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mVmLog:Z

    if-eqz v7, :cond_6

    .line 95
    const/16 v7, 0x5a0

    aget-byte v8, v0, v7

    or-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 99
    :goto_4
    const/16 v7, 0x5a4

    invoke-static {v0, v7}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v5

    .line 100
    if-nez v5, :cond_7

    iget-boolean v7, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mVmLog:Z

    if-eqz v7, :cond_7

    .line 101
    const/16 v7, 0x60

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v5

    .line 109
    :goto_5
    if-nez v5, :cond_9

    const/4 v6, 0x1

    .line 110
    :goto_6
    if-eqz v6, :cond_a

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    const-string v7, "Daily Use Setting Succeed"

    :goto_7
    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 114
    const-string v7, "EM/SettingService"

    const-string v8, "Quick boot set: %1$s, IVSR set: %2$s, VM Log set: %3$s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v8, "ril.em.dailyuse"

    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const-string v7, "1"

    :goto_8
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 69
    .end local v0           #audioData:[B
    .end local v2           #ipoSettingEnabled:Z
    .end local v3           #ivsrEnabled:Z
    .end local v5           #ret:I
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 74
    .restart local v2       #ipoSettingEnabled:Z
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ipo_setting"

    iget-boolean v7, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mQuickBoot:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_9
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_9

    .line 79
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 85
    .restart local v3       #ivsrEnabled:Z
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ivsr_setting"

    iget-boolean v7, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mIvsr:Z

    if-eqz v7, :cond_5

    const-wide/16 v7, 0x1

    :goto_a
    invoke-static {v9, v10, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v4

    goto/16 :goto_3

    :cond_5
    const-wide/16 v7, 0x0

    goto :goto_a

    .line 97
    .restart local v0       #audioData:[B
    .restart local v5       #ret:I
    :cond_6
    const/16 v7, 0x5a0

    aget-byte v8, v0, v7

    and-int/lit8 v8, v8, -0x2

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    goto/16 :goto_4

    .line 104
    :cond_7
    const-string v7, "EM/SettingService"

    const-string v8, "Set EM parameter fail"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 107
    :cond_8
    const-string v7, "EM/SettingService"

    const-string v8, "Get EM parameter fail"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 109
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 110
    :cond_a
    const-string v7, "Daily Use Setting Fail"

    goto/16 :goto_7

    .line 117
    :cond_b
    const-string v7, "0"

    goto :goto_8
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, "quick_boot"

    iget-boolean v2, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mQuickBoot:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mQuickBoot:Z

    .line 44
    const-string v1, "ivsr"

    iget-boolean v2, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mIvsr:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mIvsr:Z

    .line 45
    const-string v1, "vm_log"

    iget-boolean v2, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mVmLog:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/DailyUseSettingService;->mVmLog:Z

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/DailyUseSettingService;->doSettings()V

    .line 48
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 49
    const/4 v1, 0x2

    return v1
.end method
