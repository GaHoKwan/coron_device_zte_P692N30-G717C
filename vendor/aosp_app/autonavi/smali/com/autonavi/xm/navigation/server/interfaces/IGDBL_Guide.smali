.class public interface abstract Lcom/autonavi/xm/navigation/server/interfaces/IGDBL_Guide;
.super Ljava/lang/Object;


# virtual methods
.method public abstract GDBL_AbortRouteCalculation()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_Demoing()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetPathStatisticInfo(ZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetTurnIcon(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SelectRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StartDemo()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StartGuidance()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StartRouteCalculation(Z)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopDemo()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopGuidance()Lcom/autonavi/xm/navigation/server/GStatus;
.end method
