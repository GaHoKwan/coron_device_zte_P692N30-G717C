.class Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;
.super Ljava/lang/Object;
.source "GrassRS.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/grass/GrassRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wallpaper/grass/GrassRS;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/grass/GrassRS;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/grass/GrassRS;Lcom/android/wallpaper/grass/GrassRS$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;-><init>(Lcom/android/wallpaper/grass/GrassRS;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    #calls: Lcom/android/wallpaper/grass/GrassRS;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/wallpaper/grass/GrassRS;->access$200(Lcom/android/wallpaper/grass/GrassRS;Landroid/location/Location;)V

    .line 360
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 369
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 366
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 363
    return-void
.end method
