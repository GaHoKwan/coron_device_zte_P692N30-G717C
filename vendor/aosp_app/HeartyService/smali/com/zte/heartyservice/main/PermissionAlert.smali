.class public Lcom/zte/heartyservice/main/PermissionAlert;
.super Landroid/app/Activity;
.source "PermissionAlert.java"


# static fields
.field private static final INVALID_SIM_VALUE:I = -0x270f


# instance fields
.field private appName:Ljava/lang/String;

.field private enable:Z

.field private packageName:Ljava/lang/String;

.field private permission:Ljava/lang/String;

.field private slotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert;->packageName:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/main/PermissionAlert;->enable:Z

    .line 28
    const/16 v0, -0x270f

    iput v0, p0, Lcom/zte/heartyservice/main/PermissionAlert;->slotId:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/PermissionAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/heartyservice/main/PermissionAlert;->doWhenChooseAllow()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/PermissionAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/heartyservice/main/PermissionAlert;->doWhenChooseNotAllow()V

    return-void
.end method

.method private doWhenChooseAllow()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 125
    new-instance v2, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, localSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    iget-object v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    iget-boolean v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->enable:Z

    if-ne v3, v5, :cond_1

    .line 129
    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/power/SwitchTools;->setWifi(I)V

    .line 159
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v8}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->insertPermissionLogRecord(Ljava/lang/String;Ljava/lang/String;I)J

    .line 161
    return-void

    .line 131
    :cond_1
    invoke-virtual {v2, v8}, Lcom/zte/heartyservice/power/SwitchTools;->setWifi(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    iget-boolean v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->enable:Z

    if-ne v3, v5, :cond_3

    .line 135
    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/power/SwitchTools;->setBluetooth(I)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v2, v8}, Lcom/zte/heartyservice/power/SwitchTools;->setBluetooth(I)V

    goto :goto_0

    .line 139
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->slotId:I

    const/16 v4, -0x270f

    if-ne v3, v4, :cond_6

    .line 141
    iget-boolean v3, p0, Lcom/zte/heartyservice/main/PermissionAlert;->enable:Z

    if-ne v3, v5, :cond_5

    .line 142
    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/power/SwitchTools;->setRelNetdate(I)V

    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v2, v8}, Lcom/zte/heartyservice/power/SwitchTools;->setRelNetdate(I)V

    goto :goto_0

    .line 148
    :cond_6
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/PermissionAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    const-string v4, "setMobileDataEnabledGemini"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->slotId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doWhenChooseNotAllow()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionAlert;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->insertPermissionLogRecord(Ljava/lang/String;Ljava/lang/String;I)J

    .line 170
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/PermissionAlert;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 37
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->packageName:Ljava/lang/String;

    .line 38
    const-string v4, "permission"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    .line 39
    const-string v4, "enable"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->enable:Z

    .line 40
    const-string v4, "slotId"

    const/16 v5, -0x270f

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->slotId:I

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/PermissionAlert;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/main/PermissionAlert;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 45
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/PermissionAlert;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v3, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v3, permissionBuilder:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    const v4, 0x7f0a0453

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setTitle(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 53
    iget-boolean v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->enable:Z

    if-ne v4, v9, :cond_3

    .line 54
    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v5, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const v4, 0x7f0a0454

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 71
    :cond_0
    :goto_1
    const v4, 0x7f0a045a

    new-instance v5, Lcom/zte/heartyservice/main/PermissionAlert$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/main/PermissionAlert$1;-><init>(Lcom/zte/heartyservice/main/PermissionAlert;)V

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 78
    const v4, 0x7f0a045b

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zte/heartyservice/main/PermissionAlert$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/main/PermissionAlert$2;-><init>(Lcom/zte/heartyservice/main/PermissionAlert;)V

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 85
    new-instance v4, Lcom/zte/heartyservice/main/PermissionAlert$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/main/PermissionAlert$3;-><init>(Lcom/zte/heartyservice/main/PermissionAlert;)V

    invoke-virtual {v3, v10, v9, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setAutoChooseButton(IILcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    .line 107
    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->create()Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-result-object v1

    .line 108
    .local v1, dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/main/PermissionAlert;->setFinishOnTouchOutside(Z)V

    .line 109
    invoke-virtual {v1, v8}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    new-instance v4, Lcom/zte/heartyservice/main/PermissionAlert$4;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/main/PermissionAlert$4;-><init>(Lcom/zte/heartyservice/main/PermissionAlert;)V

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->show()V

    .line 120
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->collapseStatusBar()V

    .line 121
    return-void

    .line 56
    .end local v1           #dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    const v4, 0x7f0a0455

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto :goto_1

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v5, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const v4, 0x7f0a0456

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto/16 :goto_1

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v5, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 63
    const v4, 0x7f0a0457

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto/16 :goto_1

    .line 64
    :cond_4
    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    const v4, 0x7f0a0458

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto/16 :goto_1

    .line 66
    :cond_5
    iget-object v4, p0, Lcom/zte/heartyservice/main/PermissionAlert;->permission:Ljava/lang/String;

    const-string v5, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const v4, 0x7f0a0459

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/PermissionAlert;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    goto/16 :goto_1

    .line 46
    .end local v3           #permissionBuilder:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method
