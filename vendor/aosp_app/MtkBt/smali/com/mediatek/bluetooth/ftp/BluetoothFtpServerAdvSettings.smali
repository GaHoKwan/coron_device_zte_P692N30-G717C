.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;
.super Ljava/lang/Object;
.source "BluetoothFtpServerAdvSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/activity/AssembledPreferenceActivity$AssemblyPreference;


# static fields
.field private static final KEY_FTP_SERVER_ENABLE:Ljava/lang/String; = "ftp_server_enable"

.field private static final KEY_FTP_SERVER_PERMISSION:Ljava/lang/String; = "ftp_server_permission"

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile_key_for_dialog"

.field private static final KEY_SHOW_DIALOG:Ljava/lang/String; = "show_alert_dialog"

.field private static final MTK_EMMC_SUPPORT:Z = true

.field private static final PROFILE_BASE:I = 0x0

.field private static final PROFILE_FTP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FtpsAdvancedSettings"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

.field private mFtpServerCallback:Landroid/bluetooth/IBluetoothFtpServerCallback;

.field private mFtpServerConn:Landroid/content/ServiceConnection;

.field private mFtpServerEnable:Landroid/preference/CheckBoxPreference;

.field private mFtpServerPermission:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mProfileKey:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private parentActivity:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mProfileKey:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    .line 103
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$1;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerCallback:Landroid/bluetooth/IBluetoothFtpServerCallback;

    .line 117
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerConn:Landroid/content/ServiceConnection;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFilter:Landroid/content/IntentFilter;

    .line 159
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$5;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$5;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mSDDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;Landroid/bluetooth/IBluetoothFtpServer;)Landroid/bluetooth/IBluetoothFtpServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerCallback:Landroid/bluetooth/IBluetoothFtpServerCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private showWarnningDialog(I)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    iput p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mProfileKey:I

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mDialog:Landroid/app/AlertDialog;

    .line 227
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 228
    return-void

    .line 215
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700a6

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mSDDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPreferenceResourceId()I
    .locals 1

    .prologue
    .line 234
    const v0, 0x7f040004

    return v0
.end method

.method public onCreate(Landroid/preference/PreferenceActivity;)V
    .locals 5
    .parameter "parentActivity"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    .line 240
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v2, "ftp_server_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    .line 241
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v2, "ftp_server_permission"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;

    .line 242
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 243
    :cond_0
    const-string v1, "FtpsAdvancedSettings"

    const-string v2, "[BT][FTP] Can\'t find FTP preferences."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothFtpServer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 255
    .local v0, bindFtp:Z
    if-nez v0, :cond_2

    .line 256
    const-string v1, "FtpsAdvancedSettings"

    const-string v2, "[BT][FTP] Failed to bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 304
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerCallback:Landroid/bluetooth/IBluetoothFtpServerCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothFtpServer;->unregisterCallback(Landroid/bluetooth/IBluetoothFtpServerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 318
    :goto_2
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FtpsAdvancedSettings"

    const-string v3, "[BT][FTP] Receiver not registered."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    const-string v2, "FtpsAdvancedSettings"

    const-string v3, "[BT][FTP] Unregister FTP server callback failed: null mFtpServer."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 309
    :catch_1
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FtpsAdvancedSettings"

    const-string v3, "[BT][FTP] Unregister FTP server callback failed: RemoteException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 316
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "FtpsAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][FTP] Exception triggered when unbinding service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, key:Ljava/lang/String;
    const-string v5, "ftp_server_enable"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    if-nez v5, :cond_0

    .line 328
    const-string v5, "FtpsAdvancedSettings"

    const-string v6, "[BT][FTP] mFtpServer is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local p2
    :goto_0
    return v4

    .line 344
    .restart local p2
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 346
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothFtpServer;->enable()Z

    .line 349
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "FtpsAdvancedSettings"

    const-string v6, "[BT][FTP] Enable/disable FTP server failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothFtpServer;->disable()V

    .line 354
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    :cond_2
    const-string v4, "ftp_server_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 366
    .local v3, value:I
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    if-eqz v4, :cond_3

    .line 367
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;

    invoke-interface {v4, v3}, Landroid/bluetooth/IBluetoothFtpServer;->setPermission(I)Z

    .line 370
    :cond_3
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_5

    const v4, 0x7f0700a2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 376
    const-string v4, "FtpsAdvancedSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][FTP] Permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 385
    .end local v3           #value:I
    :cond_4
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 370
    .restart local v3       #value:I
    :cond_5
    const v4, 0x7f0700a3

    goto :goto_1

    .line 378
    .end local v3           #value:I
    :catch_1
    move-exception v1

    .line 379
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v4, "FtpsAdvancedSettings"

    const-string v5, "[BT][FTP] Could not parse ftp server permission value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 380
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 381
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "FtpsAdvancedSettings"

    const-string v5, "[BT][FTP] RemoteException occurred when setPermission()."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 273
    const-string v0, "profile_key_for_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mProfileKey:I

    .line 274
    const-string v0, "show_alert_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mProfileKey:I

    if-eqz v0, :cond_0

    .line 276
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mProfileKey:I

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->showWarnningDialog(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "show_alert_dialog"

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string v0, "profile_key_for_dialog"

    iget v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mProfileKey:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    :cond_0
    return-void
.end method
