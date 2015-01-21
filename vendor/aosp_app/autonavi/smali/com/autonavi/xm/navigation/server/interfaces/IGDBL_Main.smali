.class public interface abstract Lcom/autonavi/xm/navigation/server/interfaces/IGDBL_Main;
.super Ljava/lang/Object;


# virtual methods
.method public abstract GDBL_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GeoCoordToSP(Lcom/autonavi/xm/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SetCallbackFun(Lcom/autonavi/xm/navigation/server/poi/GPoiBlCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_Startup(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method
