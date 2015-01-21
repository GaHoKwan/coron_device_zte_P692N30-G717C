.class public Lcom/zte/ZTESecurity/ZTELocationManager;
.super Lcom/zte/security/ZTEILocationManager;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTELocationManager"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEILocationManager;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception addGpsStatusListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception requestGeofence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception getLastLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception getProviderProperties"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception getProviders"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception isProviderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/security/ZTEILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception requestGeofence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/security/ZTEILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTELocationManager"

    const-string v2, "Exception requestLocationUpdates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
