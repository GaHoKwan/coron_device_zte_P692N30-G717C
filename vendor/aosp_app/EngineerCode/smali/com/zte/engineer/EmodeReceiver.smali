.class public Lcom/zte/engineer/EmodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmodeReceiver.java"


# static fields
.field private static final Lcd_Set_ACTION:Ljava/lang/String; = "zte.com.cn.emode.action.LcdSet"

.field private static final SECURITY_SMS_ACTION:Ljava/lang/String; = "zte.com.cn.emode.action.secusmssend"

.field private static final TAG:Ljava/lang/String; = "Emode.EmodeReceiver"


# instance fields
.field mContext:Landroid/content/Context;

.field private mTPUpdate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private backEmodeData()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    .line 86
    const-string v11, "Emode.EmodeReceiver"

    const-string v12, "backEmodeData:MASTER_CLEAR"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v9, 0x0

    .line 91
    .local v9, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 100
    const/16 v11, 0x31

    new-array v4, v11, [B

    .line 101
    .local v4, emodeData:[B
    const/4 v6, 0x0

    .line 104
    .local v6, index:I
    const-string v11, "is_Security_Sms_Send_OK"

    const-string v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 107
    .local v1, bLastSendOK:Z
    if-eqz v1, :cond_0

    .line 108
    const/4 v11, 0x0

    aput-byte v14, v4, v11

    .line 109
    aput-byte v13, v4, v13

    .line 113
    :cond_0
    const-string v11, "beyound_times"

    const-string v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 116
    .local v8, nStandyTimes:I
    const/4 v11, 0x2

    int-to-byte v12, v8

    aput-byte v12, v4, v11

    .line 119
    const-string v11, "send_sms_access_type"

    const-string v12, "2"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 122
    .local v7, nSatisfiedMode:I
    int-to-byte v11, v7

    aput-byte v11, v4, v14

    .line 125
    const-string v11, "antifakesms"

    const-string v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 127
    .local v2, bOnUsed:Z
    if-eqz v2, :cond_1

    .line 128
    const/4 v11, 0x4

    aput-byte v13, v4, v11

    .line 132
    :cond_1
    const-string v11, "IsFactorModal"

    const-string v12, "1"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    .local v0, bFactory:Z
    if-eqz v0, :cond_2

    .line 135
    const/4 v11, 0x5

    aput-byte v13, v4, v11

    .line 139
    :cond_2
    const-string v11, "sensor"

    const-string v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, sensor:Ljava/lang/String;
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_3

    .line 143
    add-int/lit8 v11, v6, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v12

    aput-byte v12, v4, v11

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 92
    .end local v0           #bFactory:Z
    .end local v1           #bLastSendOK:Z
    .end local v2           #bOnUsed:Z
    .end local v4           #emodeData:[B
    .end local v6           #index:I
    .end local v7           #nSatisfiedMode:I
    .end local v8           #nStandyTimes:I
    .end local v10           #sensor:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 93
    .local v3, e:Ljava/io/IOException;
    const-string v11, "Emode.EmodeReceiver"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 95
    :catch_1
    move-exception v3

    .line 96
    .local v3, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v3           #e:Lcom/zte/engineer/EmodeException;
    .restart local v0       #bFactory:Z
    .restart local v1       #bLastSendOK:Z
    .restart local v2       #bOnUsed:Z
    .restart local v4       #emodeData:[B
    .restart local v6       #index:I
    .restart local v7       #nSatisfiedMode:I
    .restart local v8       #nStandyTimes:I
    .restart local v10       #sensor:Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v6, 0x6

    const/4 v12, -0x1

    aput-byte v12, v4, v11

    .line 149
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v5

    .line 150
    .local v5, emodeSvr:Lcom/zte/engineer/EmodeSvrManager;
    invoke-virtual {v5, v4}, Lcom/zte/engineer/EmodeSvrManager;->updateSmsSecurityState([B)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, intentAction:Ljava/lang/String;
    const-string v7, "Emode.EmodeReceiver"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "SECURITY_SMS_ACTION received"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {p0}, Lcom/zte/engineer/EmodeReceiver;->backEmodeData()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "TPUpdate"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/zte/engineer/EmodeReceiver;->mTPUpdate:I

    .line 37
    const-string v7, "Emode.EmodeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----------mTPUpdate ========= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/zte/engineer/EmodeReceiver;->mTPUpdate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget v7, p0, Lcom/zte/engineer/EmodeReceiver;->mTPUpdate:I

    if-ne v7, v11, :cond_2

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "TPUpdate"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "-----------kl.disableKeyguard()---jie chu suo ping-------------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 42
    .local v5, km:Landroid/app/KeyguardManager;
    const-string v7, "Emode.EmodeReceiver"

    invoke-virtual {v5, v7}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v4

    .line 43
    .local v4, kl:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v4}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 44
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "-----------context.startService(new Intent(context, TouchScreenFwload.class))----------------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/engineer/TouchScreenFwload;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v6, mTPUpdateIntent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    const-string v7, "RbootForTPUpdate"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "-----------return----------------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v4           #kl:Landroid/app/KeyguardManager$KeyguardLock;
    .end local v5           #km:Landroid/app/KeyguardManager;
    .end local v6           #mTPUpdateIntent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/zte/engineer/CopySensorDataService;

    invoke-direct {v1, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, copySensorDataService:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "-----------context.startService(copySensorDataService)----------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 70
    .end local v1           #copySensorDataService:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "zte.com.cn.emode.action.LcdSet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "Lcd_Set_ACTION received"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v7, "ColorType"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, ColorType:I
    const-string v7, "Emode.EmodeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ColorType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v2

    .line 76
    .local v2, emodeSvr:Lcom/zte/engineer/EmodeSvrManager;
    if-eqz v2, :cond_4

    .line 77
    const/16 v7, 0x1000

    invoke-virtual {v2, v7, v0}, Lcom/zte/engineer/EmodeSvrManager;->setDownloadFlagState(II)I

    goto/16 :goto_0

    .line 79
    :cond_4
    const-string v7, "Emode.EmodeReceiver"

    const-string v8, "emodeSvr:null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
