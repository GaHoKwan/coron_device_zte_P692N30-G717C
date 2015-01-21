.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;
.super Ljava/lang/Object;
.source "BluetoothFtpServerAdvSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothFtpServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothFtpServer;

    move-result-object v2

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$102(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;Landroid/bluetooth/IBluetoothFtpServer;)Landroid/bluetooth/IBluetoothFtpServer;

    .line 122
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerCallback:Landroid/bluetooth/IBluetoothFtpServerCallback;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServerCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothFtpServer;->registerCallback(Landroid/bluetooth/IBluetoothFtpServerCallback;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServer;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothFtpServer;->getStatus()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServer;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothFtpServer;->getPermission()I

    move-result v0

    .line 132
    .local v0, perm:I
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 134
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 140
    :goto_0
    const-string v1, "FtpsAdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] Init-value of FTP server permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0           #perm:I
    :cond_1
    :goto_1
    return-void

    .line 137
    .restart local v0       #perm:I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 138
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerPermission:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f0700a2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0           #perm:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string v0, "FtpsAdvancedSettings"

    const-string v1, "[BT][FTP] Unexpectedly disconnected with BluetoothFtpService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->parentActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-string v1, "FTP Service disconnected unexpectedly."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    return-void
.end method
