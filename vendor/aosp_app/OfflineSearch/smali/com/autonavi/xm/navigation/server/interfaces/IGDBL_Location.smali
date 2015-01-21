.class public interface abstract Lcom/autonavi/xm/navigation/server/interfaces/IGDBL_Location;
.super Ljava/lang/Object;


# virtual methods
.method public abstract GDBL_DispatchGps(J)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetGPSInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetSatelliteInfo([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_LocResetGpsInfo()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SetGPSInfo(Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SetSatelliteInfo([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method
