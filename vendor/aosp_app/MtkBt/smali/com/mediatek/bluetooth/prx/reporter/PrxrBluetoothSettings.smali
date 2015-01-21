.class public Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;
.super Ljava/lang/Object;
.source "PrxrBluetoothSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/activity/AssembledPreferenceActivity$AssemblyPreference;
.implements Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity",
        "<",
        "Lcom/mediatek/bluetooth/service/IBluetoothPrxr;",
        ">;",
        "Lcom/mediatek/activity/AssembledPreferenceActivity$AssemblyPreference;",
        "Landroid/preference/Preference$OnPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private callback:Landroid/os/ResultReceiver;

.field private enablePref:Landroid/preference/CheckBoxPreference;

.field private parentActivity:Landroid/preference/PreferenceActivity;

.field private saHelper:Lcom/mediatek/activity/ServiceActivityHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/activity/ServiceActivityHelper",
            "<",
            "Lcom/mediatek/bluetooth/service/IBluetoothPrxr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings$1;-><init>(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->callback:Landroid/os/ResultReceiver;

    .line 74
    new-instance v0, Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/activity/ServiceActivityHelper;-><init>(Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;)Lcom/mediatek/activity/ServiceActivityHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    return-object v0
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxr;
    .locals 1
    .parameter "service"

    .prologue
    .line 156
    invoke-static {p1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceResourceId()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f040008

    return v0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/preference/PreferenceActivity;)V
    .locals 2
    .parameter "parentActivity"

    .prologue
    .line 88
    const-string v0, "onCreate()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    .line 94
    const-string v0, "bt_prxr_settings_enable"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/mediatek/activity/ServiceActivityHelper;->bindService(Landroid/content/Context;)Z

    .line 99
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/activity/ServiceActivityHelper;->createBusyDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 108
    const-string v1, "onDestroy()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->callback:Landroid/os/ResultReceiver;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;->unregisterCallback(Landroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v2}, Lcom/mediatek/activity/ServiceActivityHelper;->unbindService(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    .line 129
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "unregisterCallback error: "

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 125
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "unbindService error: "

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 277
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_0

    .line 280
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checkbox[enable]: new value["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3}, Lcom/mediatek/activity/ServiceActivityHelper;->acquireServiceLock()V

    .line 285
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    .line 286
    .local v2, result:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 288
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;->enableService()I

    move-result v2

    .line 297
    :goto_0
    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->status(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRXR enable/disable error: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 301
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const v4, 0x7f070143

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 312
    .end local v2           #result:I
    :cond_0
    :goto_1
    return v6

    .line 288
    .restart local v2       #result:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;->disableService()I

    move-result v2

    goto :goto_0

    .line 293
    :cond_2
    const-string v3, "PrxrBluetoothSettings access service(null) failed."

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v2           #result:I
    :catch_0
    move-exception v1

    .line 307
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceChange(): enable/disable error."

    invoke-static {v3, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 138
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 135
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 140
    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 160
    const-string v1, "onServiceConnected()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->callback:Landroid/os/ResultReceiver;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;->registerCallback(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v1}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 173
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v2}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 174
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PrxrBluetoothSettings.onServiceConnected(): register callback failed."

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 177
    const-string v1, "onServiceDisconnected()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->callback:Landroid/os/ResultReceiver;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;->unregisterCallback(Landroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 189
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "unregisterCallback error: "

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refreshActivityUi()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    const/4 v0, -0x1

    .line 198
    .local v0, currentState:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v2, v2, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->saHelper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v2, v2, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;->getServiceState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 209
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrxrBluetoothSettings.refreshActivityUi() - currentState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 211
    packed-switch v0, :pswitch_data_0

    .line 230
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 233
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "getServiceSatate error."

    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 221
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 225
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrBluetoothSettings;->enablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
