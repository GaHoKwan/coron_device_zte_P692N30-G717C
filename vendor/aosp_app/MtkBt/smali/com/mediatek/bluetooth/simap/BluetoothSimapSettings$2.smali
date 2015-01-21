.class Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSimapSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 134
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "SIMAP: onServiceConnected[+]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothSimap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$102(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;Landroid/bluetooth/IBluetoothSimap;)Landroid/bluetooth/IBluetoothSimap;

    .line 136
    const-string v2, "BluetoothSimapSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimapService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v4}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 139
    const-string v2, "BluetoothSimapSettings"

    const-string v3, " mSimapService == null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSimap;->isServiceStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "BluetoothSimapService is NOT started yet, start it now "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSimap;->startSimapService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapUICallback:Landroid/bluetooth/IBluetoothSimapCallback;
    invoke-static {v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimapCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSimap;->registerCallback(Landroid/bluetooth/IBluetoothSimapCallback;)V

    .line 157
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSimap;->getState()I

    move-result v1

    .line 158
    .local v1, simapSate:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 159
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "SIMAP server: setChecked(true)..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 161
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .end local v1           #simapSate:I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "SIMAP: onServiceConnected[-]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "startSimapService error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #simapSate:I
    :cond_2
    :try_start_2
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "SIMAP server: setChecked(false)..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 167
    .end local v1           #simapSate:I
    :catch_1
    move-exception v0

    .line 168
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "getState error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "BluetoothSimapSettings"

    const-string v1, "Unexpectedly disconnected with BluetoothSimapService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->access$400(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-string v1, "SIMAP Service disconnected unexpectedly."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method
