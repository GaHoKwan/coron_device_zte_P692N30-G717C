.class public Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;
.super Ljava/lang/Object;
.source "BluetoothMapServerSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/activity/AssembledPreferenceActivity$AssemblyPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT:Ljava/lang/String; = "Accounts"

.field private static final KEY_EMAIL_ADDR:Ljava/lang/String; = "Email_addr"

.field private static final KEY_MAP_SERVER_ACCOUNT_INDEX:Ljava/lang/String; = "map_server_account_index"

.field private static final KEY_MAP_SERVER_CATEGORY:Ljava/lang/String; = "map_server_category"

.field private static final KEY_MAP_SERVER_ENABLE:Ljava/lang/String; = "map_server_enable"

.field private static final KEY_MAP_SERVER_SIM_INDEX:Ljava/lang/String; = "map_server_sim_index"

.field private static final KEY_SIM_CARD:Ljava/lang/String; = "Sim_card"

.field private static final KEY_SIM_ID:Ljava/lang/String; = "Sim_id"

.field private static final TAG:Ljava/lang/String; = "BluetoothMapServerSettings"

.field private static mSavedState:Landroid/os/Bundle;


# instance fields
.field private mAccountButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAccountIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountObserver:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;

.field private mAccountUri:Landroid/net/Uri;

.field private mCallback:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

.field private mCategory:Landroid/preference/PreferenceCategory;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEmailAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

.field private mMapServerEnabler:Landroid/preference/CheckBoxPreference;

.field private mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

.field private mPreferredAccountId:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

.field private mSimButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSimCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private parentActivity:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimCards:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    .line 107
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountUri:Landroid/net/Uri;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 129
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$1;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$2;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimItemListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 188
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$3;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$4;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    .line 201
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$5;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$5;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mCallback:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    .line 206
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateAccount()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/AccountListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateMapState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mCallback:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateSim()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->registerAccountOberver()V

    return-void
.end method

.method private getEmailAccountInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)J
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, address:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, accountId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "_id"

    .line 496
    .local v10, columnId:Ljava/lang/String;
    const-string v8, "emailAddress"

    .line 497
    .local v8, columnAddr:Ljava/lang/String;
    const-string v9, "isDefault"

    .line 498
    .local v9, columnDeault:Ljava/lang/String;
    const-wide/16 v11, -0x1

    .line 501
    .local v11, defaultAccoutId:J
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v3, v2

    const/4 v2, 0x1

    aput-object v8, v3, v2

    const/4 v2, 0x2

    aput-object v9, v3, v2

    .line 503
    .local v3, projection:[Ljava/lang/String;
    const-string v2, "getEmailAccountInfo()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 507
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 509
    .local v7, accountCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 518
    if-nez v7, :cond_0

    .line 519
    const-string v2, "fail to query email account"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    move-wide v13, v11

    .line 530
    .end local v11           #defaultAccoutId:J
    .local v13, defaultAccoutId:J
    :goto_0
    return-wide v13

    .line 514
    .end local v13           #defaultAccoutId:J
    .restart local v11       #defaultAccoutId:J
    :catch_0
    move-exception v15

    .line 515
    .local v15, e:Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v13, v11

    .line 516
    .end local v11           #defaultAccoutId:J
    .restart local v13       #defaultAccoutId:J
    goto :goto_0

    .line 522
    .end local v13           #defaultAccoutId:J
    .end local v15           #e:Ljava/lang/SecurityException;
    .restart local v11       #defaultAccoutId:J
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 526
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    goto :goto_1

    .line 529
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v13, v11

    .line 530
    .end local v11           #defaultAccoutId:J
    .restart local v13       #defaultAccoutId:J
    goto :goto_0
.end method

.method private isBtEnabled()Z
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 374
    .local v0, bt:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 377
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 554
    if-eqz p1, :cond_0

    .line 555
    const-string v0, "BluetoothMapServerSettings"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    return-void
.end method

.method private registerAccountOberver()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountObserver:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;

    .line 230
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/map/Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountObserver:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    return-void
.end method

.method private showWarningDialog()V
    .locals 4

    .prologue
    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700de

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700e0

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700e1

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700df

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mDialog:Landroid/app/AlertDialog;

    .line 389
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 390
    return-void
.end method

.method private updateAccount()V
    .locals 6

    .prologue
    .line 393
    const-string v2, "updateAccount"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 396
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->getEmailAccountInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 398
    .local v0, id:J
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    if-nez v2, :cond_0

    .line 415
    :goto_0
    return-void

    .line 402
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->getEmailAccount()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    :goto_1
    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    :cond_1
    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    .line 410
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    iget-wide v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->replaceAccount(J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateAccountPreference()V

    goto :goto_0

    .line 411
    :catch_0
    move-exception v2

    goto :goto_2

    .line 403
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private updateAccountPreference()V
    .locals 4

    .prologue
    .line 418
    const-string v1, "updateAccountPreference()"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 422
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 426
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 427
    .local v0, index:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMapState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 437
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateSim()V
    .locals 10

    .prologue
    .line 449
    const/4 v7, 0x0

    .line 451
    .local v7, sims:[I
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Z

    .line 453
    .local v5, selectedSims:[Z
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-interface {v8}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->getSims()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 458
    :goto_0
    if-eqz v7, :cond_1

    array-length v8, v7

    if-eqz v8, :cond_1

    .line 459
    move-object v0, v7

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget v6, v0, v2

    .line 460
    .local v6, sim:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sim:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 461
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 462
    .local v3, index:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 463
    const/4 v8, 0x1

    aput-boolean v8, v5, v3

    .line 459
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v6           #sim:I
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v3       #index:I
    .restart local v4       #len$:I
    .restart local v6       #sim:I
    :cond_0
    const-string v8, "invalid sim card index"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 469
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v6           #sim:I
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateSimPreference([Z)V

    .line 471
    return-void
.end method

.method private updateSimPreference([Z)V
    .locals 5
    .parameter "selectedSims"

    .prologue
    .line 473
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 474
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 475
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    if-nez v2, :cond_1

    .line 476
    const-string v2, "sim preference is null"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getTotalSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 481
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getDefaultSlot()I

    move-result v2

    add-int v1, v0, v2

    .line 482
    .local v1, slot:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimCards:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    .end local v1           #slot:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimCards:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimCards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 487
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    invoke-virtual {v2, p1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->setSelectedItems([Z)V

    goto :goto_0
.end method


# virtual methods
.method public getPreferenceResourceId()I
    .locals 1

    .prologue
    .line 238
    const/high16 v0, 0x7f04

    return v0
.end method

.method public onCreate(Landroid/preference/PreferenceActivity;)V
    .locals 4
    .parameter "parentActivity"

    .prologue
    .line 242
    const-string v1, "onCreate"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, isEnabled:Z
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const-string v1, "fail to bind service"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v2, "map_server_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    .line 253
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v2, "map_server_sim_index"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    .line 254
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v2, "map_server_account_index"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/AccountListPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    .line 255
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerSimIndex:Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    if-eqz v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateAccountPreference()V

    .line 267
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateSimPreference([Z)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 534
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 281
    const-string v1, "BluetoothMapServerSettings"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountObserver:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountObserver:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$AccountObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    if-eqz v1, :cond_2

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mCallback:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->unregisterCallback(Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 300
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, key:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v5, summary:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceChange(), key:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 308
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    if-nez v9, :cond_0

    .line 366
    .end local p1
    .end local p2
    :goto_0
    return v8

    .line 311
    .restart local p1
    .restart local p2
    :cond_0
    const-string v9, "map_server_enable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 312
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_2

    .line 315
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-interface {v8}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->enableServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    const/4 v3, 0x0

    .end local p1
    .end local p2
    :cond_1
    :goto_2
    move v8, v3

    .line 366
    goto :goto_0

    .line 316
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-interface {v8}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->disableServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 322
    :catch_1
    move-exception v0

    .line 323
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v8, "map_server_account_index"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, p2

    .line 328
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 329
    .local v6, value:J
    const-string v8, "BluetoothMapServerSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MAP Server accpunt index Changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_2
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-interface {v8, v6, v7}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->replaceAccount(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 332
    iput-wide v6, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mPreferredAccountId:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 333
    const/4 v3, 0x1

    .line 341
    :goto_3
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 342
    .local v1, index:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 343
    const-string v8, "invalid index"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 348
    :goto_4
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 335
    .end local v1           #index:I
    .restart local p2
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 337
    :catch_2
    move-exception v0

    .line 338
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 345
    .end local v0           #e:Landroid/os/RemoteException;
    .end local p2
    .restart local v1       #index:I
    :cond_5
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 350
    .end local v1           #index:I
    .end local v6           #value:J
    .restart local p2
    :cond_6
    const-string v8, "map_server_sim_index"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 351
    check-cast p1, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v4

    .line 353
    .local v4, selectedSims:[Z
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_5
    if-eqz v4, :cond_8

    :try_start_3
    array-length v8, v4

    if-ge v1, v8, :cond_8

    .line 354
    aget-boolean v8, v4, v1

    if-eqz v8, :cond_7

    .line 355
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->registerSim(I)Z

    .line 353
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 357
    :cond_7
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    iget-object v8, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mSimIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->unregisterSim(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 361
    :catch_3
    move-exception v0

    .line 362
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 360
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 537
    if-eqz p1, :cond_0

    .line 538
    const-string v0, "Accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    .line 539
    const-string v0, "Email_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    .line 540
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateAccountPreference()V

    .line 544
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "BluetoothMapServerSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mMapServerAccountIndex:Lcom/mediatek/bluetooth/map/AccountListPreference;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/AccountListPreference;->onResume()V

    .line 278
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 548
    const-string v0, "Accounts"

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 549
    const-string v0, "Email_addr"

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mEmailAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 550
    return-void
.end method
