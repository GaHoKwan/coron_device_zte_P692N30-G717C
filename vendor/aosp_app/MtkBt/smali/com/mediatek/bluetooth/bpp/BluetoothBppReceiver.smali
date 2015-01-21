.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBppReceiver.java"


# static fields
.field public static final ACTION_PASS_OBJECT:Ljava/lang/String; = "com.mediatek.bluetooth.bppReceiver.action.PASS_OBJECT"

.field private static final TAG:Ljava/lang/String; = "BluetoothBppReceiver"

.field private static mAm:Landroid/app/ActivityManager;

.field private static mFilePath:Ljava/lang/String;

.field private static mFileSize:Ljava/lang/String;

.field private static mMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mFilePath:Ljava/lang/String;

    .line 70
    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mMimeType:Ljava/lang/String;

    .line 71
    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mFileSize:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    const-string v7, "BluetoothBppReceiver"

    const-string v8, "BPP broadcast receiver receives intent"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    sput-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mAm:Landroid/app/ActivityManager;

    .line 90
    sget-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mAm:Landroid/app/ActivityManager;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 91
    .local v5, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    .local v0, NS:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 94
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 95
    .local v6, si:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.mediatek.bluetooth.bpp.BluetoothBppManager"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 96
    const v7, 0x7f07004c

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    .end local v0           #NS:I
    .end local v2           #i:I
    .end local v6           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    .restart local v0       #NS:I
    .restart local v2       #i:I
    .restart local v6       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    .end local v6           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 105
    .local v4, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v7, "BluetoothBppReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received BT device selected intent, bt device: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v3, in:Landroid/content/Intent;
    const-string v7, "action"

    const-string v8, "com.mediatek.bluetooth.bppmanager.action.GET_PRINTER_ATTR"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v7, "com.mediatek.bluetooth.bppmanager.extra.FILE_PATH"

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v7, "com.mediatek.bluetooth.bppmanager.extra.MIME_TYPE"

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v7, "com.mediatek.bluetooth.bppmanager.extra.FILE_SIZE"

    sget-object v8, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mFileSize:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 118
    .end local v0           #NS:I
    .end local v2           #i:I
    .end local v3           #in:Landroid/content/Intent;
    .end local v4           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_5
    const-string v7, "com.mediatek.bluetooth.bppReceiver.action.PASS_OBJECT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    const-string v7, "BluetoothBppReceiver"

    const-string v8, "ACTION_PASS_OBJECT"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v7, "com.mediatek.bluetooth.bppmanager.extra.FILE_PATH"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mFilePath:Ljava/lang/String;

    .line 122
    const-string v7, "com.mediatek.bluetooth.bppmanager.extra.MIME_TYPE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mMimeType:Ljava/lang/String;

    .line 123
    const-string v7, "com.mediatek.bluetooth.bppmanager.extra.FILE_SIZE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;->mFileSize:Ljava/lang/String;

    goto/16 :goto_0
.end method
