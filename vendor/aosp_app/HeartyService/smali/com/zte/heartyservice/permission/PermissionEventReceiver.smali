.class public Lcom/zte/heartyservice/permission/PermissionEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PermissionEventReceiver.java"


# static fields
.field private static final Debug:Z = false

.field private static final EXTRA_SIM_ID:Ljava/lang/String; = "permission.intent.action.simID"

.field private static final EXTRA_SLOT_ID:Ljava/lang/String; = "permission.intent.action.slotID"

.field private static final INVALID_SIM_VALUE:I = -0x270f

.field private static final TAG:Ljava/lang/String; = "PermissionEventReceiver"

.field private static sHasSet:Z


# instance fields
.field private mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->sHasSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 50
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 57
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 56
    .restart local p0
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static isDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 78
    .local v1, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 80
    .local v0, dataState:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 83
    :cond_0
    return v2
.end method

.method private static isNetworkPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permName"

    .prologue
    .line 69
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAntiPhoneRecordingToast(Ljava/lang/String;)V
    .locals 10
    .parameter "pkg"

    .prologue
    const/4 v9, 0x0

    .line 270
    new-instance v2, Landroid/widget/Toast;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 271
    .local v2, toast:Landroid/widget/Toast;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 273
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 274
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0e002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    .local v1, title:Landroid/widget/TextView;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const v5, 0x7f0a03d1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v2, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 278
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method

.method public static showToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "pkg"
    .parameter "permission"

    .prologue
    const/4 v9, 0x0

    .line 282
    invoke-static {p1}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->isNetworkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    const-string v4, "PermissionEventReceiver"

    const-string v5, "data is disabled, so just do nothing!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShowPermNotice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    new-instance v2, Landroid/widget/Toast;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 288
    .local v2, toast:Landroid/widget/Toast;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 290
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f0300a3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 291
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0e002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, title:Landroid/widget/TextView;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const v5, 0x7f0a04db

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPermissionDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 295
    invoke-virtual {v2, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 296
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const-string v17, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, packageName:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 267
    .end local v8           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v11

    .line 109
    .local v11, permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    const-string v17, "android.intent.extra.REPLACING"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_2

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->deleteRemovedPkgRecord(Ljava/lang/String;)Z

    .line 117
    invoke-virtual {v11, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->clearPackagePermissionSetting(Ljava/lang/String;)V

    .line 118
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v8, v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->updateCachePackages(Ljava/lang/String;I)V

    goto :goto_0

    .line 121
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v8, v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->updateCachePackages(Ljava/lang/String;I)V

    goto :goto_0

    .line 123
    .end local v8           #packageName:Ljava/lang/String;
    .end local v11           #permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 125
    .restart local v8       #packageName:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_0

    .line 128
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v11

    .line 129
    .restart local v11       #permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v8, v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->updateCachePackages(Ljava/lang/String;I)V

    goto :goto_0

    .line 131
    .end local v8           #packageName:Ljava/lang/String;
    .end local v11           #permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "permission.intent.action.PERMISSION_EVENT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 132
    const-string v17, "permission.intent.extra.package"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 133
    .local v12, pkg:Ljava/lang/String;
    const-string v17, "permission.intent.extra.permission"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, pem:Ljava/lang/String;
    const-string v17, "permission.intent.extra.eventType"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 135
    .local v15, type:I
    const-string v17, "permission.intent.extra.needNotify"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 136
    .local v7, need:Z
    const-string v17, "permission.intent.action.simID"

    const/16 v18, -0x270f

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 137
    .local v13, sim_id:I
    const-string v17, "permission.intent.action.slotID"

    const/16 v18, -0x270f

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 149
    .local v14, slotId:I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 150
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 152
    const/4 v15, 0x2

    .line 193
    :cond_5
    :goto_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 194
    invoke-static {v12, v10, v7, v14}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doReceivePermissionAskEvent(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 196
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 197
    invoke-static {v12, v10}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_7
    invoke-static {v10}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->isNetworkPermission(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v15, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 202
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v10, v15}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->insertPermissionLogRecord(Ljava/lang/String;Ljava/lang/String;I)J

    goto/16 :goto_0

    .line 155
    :cond_9
    const/4 v15, 0x0

    .line 157
    new-instance v6, Lcom/zte/heartyservice/power/SwitchTools;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 159
    .local v6, localSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    const-string v17, "android.permission.CHANGE_WIFI_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 160
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    .line 161
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setWifi(I)V

    goto :goto_1

    .line 163
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setWifi(I)V

    goto :goto_1

    .line 165
    :cond_b
    const-string v17, "android.permission.BLUETOOTH_ADMIN"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 166
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_c

    .line 167
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setBluetooth(I)V

    goto :goto_1

    .line 169
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setBluetooth(I)V

    goto :goto_1

    .line 171
    :cond_d
    const-string v17, "android.permission.CHANGE_NETWORK_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 172
    const/16 v17, -0x270f

    move/from16 v0, v17

    if-ne v14, v0, :cond_f

    .line 173
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_e

    .line 174
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setRelNetdate(I)V

    goto/16 :goto_1

    .line 176
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setRelNetdate(I)V

    goto/16 :goto_1

    .line 180
    :cond_f
    :try_start_0
    const-string v17, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 182
    .local v4, cm:Landroid/net/ConnectivityManager;
    const/16 v17, 0x0

    const-string v18, "setMobileDataEnabledGemini"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v4, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 183
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v5

    .line 184
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 206
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #localSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    .end local v7           #need:Z
    .end local v10           #pem:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v13           #sim_id:I
    .end local v14           #slotId:I
    .end local v15           #type:I
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 207
    const-string v17, "permission.intent.extra.package"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 208
    .restart local v12       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->showAntiPhoneRecordingToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v12           #pkg:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 211
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    .line 212
    .local v3, appContext:Landroid/content/Context;
    const-string v17, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, packages:[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 215
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v16

    .line 217
    .local v16, utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->resetPackages()V

    .line 218
    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    sget-boolean v17, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->sHasSet:Z

    if-nez v17, :cond_0

    .line 221
    const/16 v17, 0x1

    sput-boolean v17, Lcom/zte/heartyservice/permission/PermissionEventReceiver;->sHasSet:Z

    .line 222
    new-instance v17, Ljava/lang/Thread;

    new-instance v18, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v3, v9, v2}, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;-><init>(Lcom/zte/heartyservice/permission/PermissionEventReceiver;Landroid/content/Context;[Ljava/lang/String;Lcom/zte/heartyservice/permission/PermissionSettingUtils;)V

    invoke-direct/range {v17 .. v18}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 262
    .end local v3           #appContext:Landroid/content/Context;
    .end local v9           #packages:[Ljava/lang/String;
    .end local v16           #utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 264
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->resetPackages()V

    goto/16 :goto_0
.end method
