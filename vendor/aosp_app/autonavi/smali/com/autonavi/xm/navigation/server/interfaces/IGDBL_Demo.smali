.class public interface abstract Lcom/autonavi/xm/navigation/server/interfaces/IGDBL_Demo;
.super Ljava/lang/Object;


# virtual methods
.method public abstract GDBL_GetDemoJourneyList([Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetDemoModelList([Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;[I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_LoadDemoJourney(I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_ModelDemoing()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StartModelDemo(Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopModelDemo()Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StopRouteDemo()Lcom/autonavi/xm/navigation/server/GStatus;
.end method
