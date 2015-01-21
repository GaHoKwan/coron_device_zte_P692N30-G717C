.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "PrxmDeviceSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceActivity;",
        "Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity",
        "<",
        "Lcom/mediatek/bluetooth/service/IBluetoothPrxm;",
        ">;",
        "Landroid/preference/Preference$OnPreferenceChangeListener;",
        "Landroid/preference/Preference$OnPreferenceClickListener;"
    }
.end annotation


# static fields
.field public static final ACTION_START:Ljava/lang/String; = "com.mediatek.bluetooth.prx.monitor.device.setting.action.START"

.field private static findDeviceCanceled:Z


# instance fields
.field private callback:Landroid/os/ResultReceiver;

.field private connectPref:Landroid/preference/CheckBoxPreference;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

.field private filter:Landroid/content/IntentFilter;

.field private findDevicePref:Landroid/preference/Preference;

.field private helper:Lcom/mediatek/activity/ServiceActivityHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/activity/ServiceActivityHelper",
            "<",
            "Lcom/mediatek/bluetooth/service/IBluetoothPrxm;",
            ">;"
        }
    .end annotation
.end field

.field private linkLossLevelPref:Landroid/preference/ListPreference;

.field private pathLossLevelPref:Landroid/preference/ListPreference;

.field private pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDeviceCanceled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 199
    new-instance v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$1;-><init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->callback:Landroid/os/ResultReceiver;

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->filter:Landroid/content/IntentFilter;

    .line 254
    new-instance v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$2;-><init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/activity/ServiceActivityHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    return-object v0
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;
    .locals 1
    .parameter "service"

    .prologue
    .line 100
    invoke-static {p1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 452
    :goto_0
    return-object v1

    .line 447
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "getDeviceInfo() error: "

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 452
    goto :goto_0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 459
    const-string v1, "onCreateBeforeBindService()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 461
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 463
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected device:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 474
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 477
    const-string v1, "bt_prxm_connect"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    .line 478
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    const-string v1, "bt_prxm_find_device"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDevicePref:Landroid/preference/Preference;

    .line 481
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDevicePref:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 483
    const-string v1, "bt_prxm_link_loss_level"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->linkLossLevelPref:Landroid/preference/ListPreference;

    .line 484
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->linkLossLevelPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 487
    const-string v1, "bt_prxm_path_loss_level"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossLevelPref:Landroid/preference/ListPreference;

    .line 488
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossLevelPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 489
    const-string v1, "bt_prxm_path_loss_threshold"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    .line 490
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    invoke-virtual {v1, p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;->setParent(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;)V

    .line 491
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 495
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 498
    new-instance v1, Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-direct {v1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;-><init>(Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    .line 499
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->bindService(Landroid/content/Context;)Z

    .line 500
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->createBusyDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 520
    const-string v1, "onDestroy()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->unregisterDeviceCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->unbindService(Landroid/content/Context;)V

    .line 531
    iput-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    .line 532
    iput-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    .line 533
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 534
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "unregister device callback failed: "

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange: new value["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3}, Lcom/mediatek/activity/ServiceActivityHelper;->acquireServiceLock()V

    .line 348
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->connect(Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v3, v5

    .line 431
    :goto_1
    return v3

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->disconnect(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceChange(): connect/disconnect error."

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 365
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDevicePref:Landroid/preference/Preference;

    if-ne p1, v3, :cond_3

    .line 367
    const/4 v1, 0x2

    .line 368
    .local v1, newLevel:B
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setPathLossLevel(B)V

    .line 369
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->configPathLossLevel(Ljava/lang/String;B)I

    .line 370
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 371
    goto :goto_1

    .line 373
    :catch_1
    move-exception v0

    .line 375
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceChange(): path_loss_level error."

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 379
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #newLevel:B
    :cond_3
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->linkLossLevelPref:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    .line 382
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 383
    .restart local v1       #newLevel:B
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getLinkLossLevel()B

    move-result v3

    if-eq v1, v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3}, Lcom/mediatek/activity/ServiceActivityHelper;->acquireServiceLock()V

    .line 386
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 387
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->setLinkLoss(Ljava/lang/String;B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 390
    .end local v1           #newLevel:B
    :catch_2
    move-exception v0

    .line 392
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceChange(): linkloss error."

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 396
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossLevelPref:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 399
    :try_start_3
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 400
    .restart local v1       #newLevel:B
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossLevel()B

    move-result v3

    if-eq v1, v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->configPathLossLevel(Ljava/lang/String;B)I

    .line 403
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v3, v4

    .line 404
    goto/16 :goto_1

    .line 407
    .end local v1           #newLevel:B
    :catch_3
    move-exception v0

    .line 409
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceChange(): path_loss_level error."

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 413
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    if-ne p1, v3, :cond_0

    .line 416
    :try_start_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    .line 417
    .local v2, newThreshold:B
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossThreshold()B

    move-result v3

    if-eq v2, v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->configPathLossThreshold(Ljava/lang/String;B)I

    .line 420
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v3, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v3, v4

    .line 421
    goto/16 :goto_1

    .line 424
    .end local v2           #newThreshold:B
    :catch_4
    move-exception v0

    .line 426
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceChange(): path_loss_threshold error."

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 296
    const-string v5, "onPreferenceClick:"

    invoke-static {v5}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 299
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDevicePref:Landroid/preference/Preference;

    if-ne p1, v5, :cond_1

    .line 302
    :try_start_0
    sget-boolean v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDeviceCanceled:Z

    if-ne v5, v3, :cond_0

    .line 304
    const/4 v2, 0x2

    .line 305
    .local v2, newLevel:B
    const/4 v5, 0x0

    sput-boolean v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDeviceCanceled:Z

    .line 306
    const v5, 0x7f070131

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 314
    :goto_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v5, v2}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setPathLossLevel(B)V

    .line 316
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v5, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 317
    new-instance v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;

    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-direct {v1, p0, v5, v2, v6}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;-><init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;Ljava/lang/String;BLcom/mediatek/activity/ServiceActivityHelper;)V

    .line 318
    .local v1, fdt:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 326
    .end local v1           #fdt:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;
    .end local v2           #newLevel:B
    :goto_1
    return v3

    .line 310
    :cond_0
    const/4 v2, 0x0

    .line 311
    .restart local v2       #newLevel:B
    const/4 v5, 0x1

    sput-boolean v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDeviceCanceled:Z

    .line 312
    const v5, 0x7f070130

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v2           #newLevel:B
    :catch_0
    move-exception v0

    .line 323
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "onPreferenceClick(): path_loss_level error."

    invoke-static {v3, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 326
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 514
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 515
    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->registerDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 119
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->callback:Landroid/os/ResultReceiver;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->registerDeviceCallback(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v1}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 130
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 132
    :cond_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PrxmDeviceSettingActivity call service(registerDeviceCallback) error: "

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public refreshActivityUi()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .line 146
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    if-nez v2, :cond_0

    .line 148
    const-string v0, "PrxmDeviceSettingActivity.refreshActivityUi() error: null device-info"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshActivityUi(): new state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 168
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->linkLossLevelPref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getLinkLossLevel()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCapability()B

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossLevelPref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossLevel()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossLevelPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossLevel()B

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDevicePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossLevelPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->pathLossThresholdPref:Lcom/mediatek/bluetooth/prx/monitor/PrxmPathLossThresholdPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->findDevicePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;->connectPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
