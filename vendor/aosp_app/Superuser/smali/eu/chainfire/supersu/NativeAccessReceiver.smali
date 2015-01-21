.class public Leu/chainfire/supersu/NativeAccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static 櫯:J

.field private static 鷭:Ljava/lang/String;


# direct methods
.method static <clinit>()V
    .locals 2

    .line 0
    const-string v0, ""

    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->鷭:Ljava/lang/String;

    .line 18
    const-wide/16 v0, 0x0

    sput-wide v0, Leu/chainfire/supersu/NativeAccessReceiver;->櫯:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 0
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 37
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    const-string v0, "su_access"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 40
    const-string v0, "su_appname"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    const-string v0, "su_fromuid"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 42
    const-string v0, "su_touid"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 43
    const-string v0, "su_cmd"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 44
    const-string v0, "su_code"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 46
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 47
    if-eqz v14, :cond_0

    .line 49
    :try_start_0
    invoke-static {v14, v7}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 50
    if-eqz v15, :cond_0

    .line 51
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    move v13, v0

    .line 52
    move-object v8, v7

    .line 53
    invoke-static {v14, v7}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 60
    :catch_0
    :cond_0
    if-nez v7, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 61
    :cond_1
    if-nez v12, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 62
    :cond_2
    const-string v0, "INTERACTIVE"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 64
    const/16 v0, 0x2710

    if-lt v9, v0, :cond_5

    if-lez v13, :cond_5

    rem-int/lit16 v0, v9, 0x2710

    rem-int/lit16 v1, v13, 0x2710

    if-eq v0, v1, :cond_5

    .line 65
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 67
    new-instance v0, Leu/chainfire/supersu/Settings;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    .line 68
    if-eqz v8, :cond_3

    move-object v1, v8

    goto :goto_0

    :cond_3
    move-object v1, v7

    :goto_0
    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v15

    .line 69
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v11, v1}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 70
    iget-boolean v0, v15, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_4

    invoke-virtual {v15}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 71
    :cond_4
    return-void

    .line 74
    :cond_5
    const/4 v0, 0x2

    if-ne v6, v0, :cond_e

    .line 75
    if-eqz p2, :cond_6

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 79
    :cond_6
    new-instance v14, Leu/chainfire/supersu/Settings;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    .line 80
    if-eqz v8, :cond_7

    move-object v0, v8

    goto :goto_1

    :cond_7
    move-object v0, v7

    :goto_1
    invoke-virtual {v14, v0}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v15

    .line 83
    const/16 v0, 0x2710

    if-lt v9, v0, :cond_a

    .line 84
    iget-object v0, v14, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    const-string v1, "enforce_permission"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    if-eqz v8, :cond_8

    move-object v0, v8

    goto :goto_2

    :cond_8
    move-object v0, v7

    :goto_2
    move-object/from16 v1, p1

    invoke-static {v1, v0}, Leu/chainfire/supersu/Permission;->鷭(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 87
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v11, v1}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 88
    iget-boolean v0, v15, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_9

    invoke-virtual {v15}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 89
    :cond_9
    return-void

    .line 92
    :cond_a
    iget-boolean v0, v15, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-nez v0, :cond_b

    iget v0, v15, Leu/chainfire/supersu/Settings$App;->庸:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 93
    iget v6, v15, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v11, v6}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 95
    goto :goto_3

    .line 96
    :cond_b
    iget-boolean v0, v15, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_c

    invoke-virtual {v15}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 98
    :cond_c
    move v0, v11

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PromptQueue;->鷭(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    const-string v0, "power"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "SuperSU Receiver Wakelock"

    const v2, 0x3000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 100
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 103
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0}, Leu/chainfire/supersu/PromptQueue;->鷭(Landroid/content/Context;)Z

    .line 104
    return-void

    .line 108
    :cond_e
    :goto_3
    move-object/from16 v14, p1

    .line 110
    if-nez v8, :cond_11

    .line 113
    :try_start_1
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v9}, Leu/chainfire/supersu/Constants;->鷭(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-ne v6, v2, :cond_f

    const v15, 0x7f09000f

    goto :goto_4

    :cond_f
    const v15, 0x7f090010

    :goto_4
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    goto/16 :goto_8

    .line 116
    :catch_1
    const-string v0, "%s (%s) has been %s superuser permissions"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v9}, Leu/chainfire/supersu/Constants;->鷭(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-ne v6, v2, :cond_10

    const v15, 0x7f09000f

    goto :goto_5

    :cond_10
    const v15, 0x7f090010

    :goto_5
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 118
    goto/16 :goto_8

    .line 120
    :cond_11
    :try_start_2
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    if-ne v6, v2, :cond_12

    const v15, 0x7f09000f

    goto :goto_6

    :cond_12
    const v15, 0x7f090010

    :goto_6
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    goto :goto_8

    .line 123
    :catch_2
    const-string v0, "%s has been %s superuser permissions"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    if-ne v6, v2, :cond_13

    const v15, 0x7f09000f

    goto :goto_7

    :cond_13
    const v15, 0x7f090010

    :goto_7
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 126
    :goto_8
    if-eqz p2, :cond_14

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 128
    goto :goto_9

    .line 129
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 132
    :goto_9
    move-object/from16 p2, p1

    .line 133
    .line 135
    move-object v6, v15

    sget-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->鷭:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-wide v0, Leu/chainfire/supersu/NativeAccessReceiver;->櫯:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 136
    :cond_15
    sput-object v6, Leu/chainfire/supersu/NativeAccessReceiver;->鷭:Ljava/lang/String;

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Leu/chainfire/supersu/NativeAccessReceiver;->櫯:J

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    new-instance v1, Leu/chainfire/supersu/NativeAccessReceiver$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3, v6}, Leu/chainfire/supersu/NativeAccessReceiver$1;-><init>(Leu/chainfire/supersu/NativeAccessReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_16
    move-object/from16 v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Landroid/content/Context;I)V

    .line 148
    return-void
.end method
