.class public interface abstract Lcom/autonavi/xm/navigation/server/interfaces/IGDBL_Map;
.super Ljava/lang/Object;


# virtual methods
.method public abstract GDBL_AdjustCar(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_AdjustMapElevation(I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_FlingMap(II)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetMapCenterInfo([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetPaletteList(Z[Lcom/autonavi/xm/navigation/server/map/GPaletteList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GoToCCP()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_MoveMap(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_RotateMap(I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ScaleEnd()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ScaleIn()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ScaleOut()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopAdjustElevation()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopFling()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopRotate()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ToNextViewMode()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ViewCross(I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ViewMap(Lcom/autonavi/xm/navigation/server/map/GMapViewType;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ViewPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;Z)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ViewSP(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ZoomIn()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ZoomOut()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ZoomTo(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method
