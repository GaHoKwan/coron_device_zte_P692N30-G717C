.class public Lcom/android/settings/GlobalModeService;
.super Landroid/app/Service;
.source "GlobalModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GlobalModeService$UsbHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalModeService"


# instance fields
.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:I

.field private mSimStat:I

.field private usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Lcom/android/settings/GlobalModeService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GlobalModeService$1;-><init>(Lcom/android/settings/GlobalModeService;)V

    iput-object v0, p0, Lcom/android/settings/GlobalModeService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/GlobalModeService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/GlobalModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/GlobalModeService;)Lcom/android/settings/GlobalModeService$UsbHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/GlobalModeService;->usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 64
    const-string v1, "GlobalModeService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Lcom/android/settings/GlobalModeService$UsbHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/GlobalModeService$UsbHandler;-><init>(Lcom/android/settings/GlobalModeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/GlobalModeService;->usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;

    .line 66
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GlobalModeService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/GlobalModeService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "GlobalModeService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/settings/GlobalModeService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startid"

    .prologue
    .line 82
    const-string v0, "GlobalModeService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method
