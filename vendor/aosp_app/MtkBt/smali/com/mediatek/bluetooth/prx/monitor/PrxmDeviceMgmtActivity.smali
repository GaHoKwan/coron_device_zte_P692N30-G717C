.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;
.super Landroid/preference/PreferenceActivity;
.source "PrxmDeviceMgmtActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceActivity;",
        "Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity",
        "<",
        "Lcom/mediatek/bluetooth/service/IBluetoothPrxm;",
        ">;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.mediatek.bluetooth.prx.monitor.device.mgmt.action.CONNECT"

.field public static final ACTION_START:Ljava/lang/String; = "com.mediatek.bluetooth.prx.monitor.device.mgmt.action.START"

.field private static final ADD_DEVICE:Ljava/lang/String; = "add_device"

.field private static final BLUETOOTH_DEVICE_ENABLE_REQUEST:I = 0x1

.field private static final MESSAGE_REFRESH_UI:B = 0x0t

.field private static final REFRESH_UI_DELAY:I = 0x9c4

.field private static final REGISTERED_DEVICE_LIST:Ljava/lang/String; = "registered_device_list"

.field private static mRequestCode:I


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private handler:Landroid/os/Handler;

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

.field private receiver:Landroid/content/BroadcastReceiver;

.field private registeredDeviceList:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->mRequestCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->filter:Landroid/content/IntentFilter;

    .line 188
    new-instance v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity$1;-><init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .parameter "menuInfo"

    .prologue
    const/4 v1, 0x0

    .line 438
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v2, :cond_1

    .line 441
    .end local p1
    :cond_0
    :goto_0
    return-object v1

    .line 439
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p1
    iget v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 440
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;

    if-eqz v2, :cond_0

    .line 441
    check-cast v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method private onCreateImpl()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "PrxmDeviceMgmtActivity.onCreateImpl()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 278
    const v0, 0x7f070125

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 279
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 280
    const-string v0, "registered_device_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    .line 281
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->bindService(Landroid/content/Context;)Z

    .line 287
    return-void
.end method

.method protected static startConnectActivity(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "context"
    .parameter "device"

    .prologue
    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.prx.monitor.device.mgmt.action.CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 467
    const/high16 v1, 0x3480

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 468
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;
    .locals 1
    .parameter "service"

    .prologue
    .line 119
    invoke-static {p1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 449
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 458
    :goto_0
    return v0

    .line 452
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 454
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 456
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 250
    sget v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->mRequestCode:I

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->onCreateImpl()V

    goto :goto_0

    .line 259
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 260
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->onCreateImpl()V

    goto :goto_0

    .line 263
    :cond_2
    const-string v1, "BT is not ready!"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 264
    const v1, 0x7f070124

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 421
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    move v2, v3

    .line 431
    :goto_0
    return v2

    .line 425
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v2, v2, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-interface {v2, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->unregisterDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    const/4 v2, 0x1

    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "PrxmDeviceMgmtActivity.onContextItemSelected() error:"

    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 431
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 211
    const-string v2, "PrxmDeviceMgmtActivity.onCreate()[+]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 217
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 219
    const-string v2, "bt is not supported! "

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 220
    const v2, 0x7f070123

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 245
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->handler:Landroid/os/Handler;

    .line 227
    new-instance v2, Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-direct {v2, p0}, Lcom/mediatek/activity/ServiceActivityHelper;-><init>(Lcom/mediatek/activity/ServiceActivityHelper$ServiceActivity;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    .line 229
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    const-string v2, "Bluetooth is not enabled, turning on..."

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, in:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    sget v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->mRequestCode:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    sget v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->mRequestCode:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->mRequestCode:I

    goto :goto_0

    .line 243
    .end local v1           #in:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->onCreateImpl()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-direct {p0, p3}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 408
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 414
    const/4 v1, 0x2

    const v2, 0x7f070127

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 204
    const-string v0, "PrxmDeviceMgmtActivity.onCreateDialog()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p1, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->createBusyDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v0, v0, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->unbindService(Landroid/content/Context;)V

    .line 299
    :cond_0
    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    .line 300
    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->handler:Landroid/os/Handler;

    .line 301
    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 310
    return-void

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 338
    const-string v3, "PrxmDeviceMgmtActivity.onNewIntent()"

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 340
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 342
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.mediatek.bluetooth.prx.monitor.device.mgmt.action.CONNECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 347
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_1

    .line 349
    const-string v3, "invalid intent(action=connect): device is null"

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 360
    .end local v2           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 353
    .restart local v2       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v3, v3, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-interface {v3, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->registerDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 357
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "remote service (registerDevice) error: "

    invoke-static {v3, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 331
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 366
    const-string v3, "add_device"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    const-string v3, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    const-string v3, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v4, "com.mediatek.bluetooth"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v3, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmBroadcastReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 400
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 385
    :cond_0
    instance-of v3, p2, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 388
    check-cast v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;

    .line 391
    .local v1, prxmPreference:Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.bluetooth.prx.monitor.device.setting.action.START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #prxmPreference:Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "PrxmDeviceMgmtActivity.onServiceConnected()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0}, Lcom/mediatek/activity/ServiceActivityHelper;->releaseServiceLock()V

    .line 132
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    invoke-virtual {v0, p0}, Lcom/mediatek/activity/ServiceActivityHelper;->refreshUi(Landroid/app/Activity;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public refreshActivityUi()V
    .locals 8

    .prologue
    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v5, v5, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-interface {v5}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->getRegisteredDevices()[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v0

    .line 154
    .local v0, deviceList:[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 155
    .local v4, size:I
    array-length v5, v0

    if-le v4, v5, :cond_0

    array-length v3, v0

    .line 157
    .local v3, min:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 159
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->onDeviceAttributesChanged(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #min:I
    :cond_0
    move v3, v4

    .line 155
    goto :goto_0

    .line 161
    .restart local v2       #i:I
    .restart local v3       #min:I
    :cond_1
    array-length v5, v0

    if-le v4, v5, :cond_2

    .line 164
    array-length v2, v0

    :goto_2
    if-ge v2, v4, :cond_3

    .line 166
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    :cond_2
    move v2, v4

    :goto_3
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 173
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceMgmtActivity;->registeredDeviceList:Landroid/preference/PreferenceCategory;

    new-instance v6, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;

    aget-object v7, v0, v2

    invoke-direct {v6, p0, v7}, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    .end local v0           #deviceList:[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .end local v2           #i:I
    .end local v3           #min:I
    .end local v4           #size:I
    :catch_0
    move-exception v1

    .line 179
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "PrxmDeviceMgmtActivity.refreshUi() error: "

    invoke-static {v5, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    return-void
.end method
