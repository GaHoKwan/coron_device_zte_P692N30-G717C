.class public interface abstract Lcom/zte/heartyservice/msim/MSInterface;
.super Ljava/lang/Object;
.source "MSInterface.java"


# virtual methods
.method public abstract extendedCallBroadcast()Z
.end method

.method public abstract getCallIdFromSys(I)I
.end method

.method public abstract getCallSubIdColumn()Ljava/lang/String;
.end method

.method public abstract getCallSubscription(Landroid/content/Intent;)I
.end method

.method public abstract getCallSysId(I)I
.end method

.method public abstract getCalllogColumnDefaultValue()I
.end method

.method public abstract getDataSim()I
.end method

.method public abstract getFirstReadyId()I
.end method

.method public abstract getSimSerialNumber(I)Ljava/lang/String;
.end method

.method public abstract getSimState(I)I
.end method

.method public abstract getSmsColumnDefaultValue()I
.end method

.method public abstract getSmsIdFromSys(I)I
.end method

.method public abstract getSmsSubIdColumn()Ljava/lang/String;
.end method

.method public abstract getSmsSubscription(Landroid/content/Intent;)I
.end method

.method public abstract getSmsSysId(I)I
.end method

.method public abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public abstract hasSimReady()Z
.end method

.method public abstract isAllSimReady()Z
.end method

.method public abstract isMultiSim()Z
.end method

.method public abstract isQCQrdVersion()Z
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
.end method
