.class public Lcom/mediatek/lbs/em/LbsView;
.super Landroid/app/Activity;
.source "LbsView.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mStatusListener:Landroid/location/GpsStatus$Listener;

.field private mViewGps:Lcom/mediatek/lbs/em/ViewGps;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;

    .line 36
    new-instance v0, Lcom/mediatek/lbs/em/LbsView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsView$1;-><init>(Lcom/mediatek/lbs/em/LbsView;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance v0, Lcom/mediatek/lbs/em/LbsView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsView$2;-><init>(Lcom/mediatek/lbs/em/LbsView;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mStatusListener:Landroid/location/GpsStatus$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/em/LbsView;)Lcom/mediatek/lbs/em/ViewGps;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mViewGps:Lcom/mediatek/lbs/em/ViewGps;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsView;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 65
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsView;->setContentView(I)V

    .line 23
    const v1, 0x7f0500d4

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/lbs/em/ViewGps;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsView;->mViewGps:Lcom/mediatek/lbs/em/ViewGps;

    .line 25
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;

    .line 26
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 27
    const-string v1, "ERR: mLocationManager is null"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsView;->log(Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsView;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/lbs/em/LbsView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsView;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    return-void
.end method
