.class public interface abstract Lcom/android/server/am/IAmSmartShowStub;
.super Ljava/lang/Object;
.source "IAmSmartShowStub.java"


# virtual methods
.method public abstract checkMoveTaskToBackLocked(II)Z
.end method

.method public abstract checkMoveTaskToFrontLocked(II)Z
.end method

.method public abstract checkStartActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Z
.end method

.method public abstract clearTaskRelationshipLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract eventCollectLocked(ILjava/lang/Object;I)Z
.end method

.method public abstract getScreenForProcessRecord(Lcom/android/server/am/ProcessRecord;)I
.end method

.method public abstract getStackLocked(I)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getStackLocked(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract moveServicesInAppToScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract moveTaskLocked(IIZ)I
.end method

.method public abstract setupTaskRelationshipLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract startIdleActivityLocked(IIZ)Z
.end method

.method public abstract tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityRecord;
.end method

.method public abstract updatePidOfCreatedServiceLocked(ZIII)V
.end method

.method public abstract updateRemoteConfigurationLocked(II)V
.end method

.method public abstract updateRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract updateTaskIdOfCreatedServiceLocked(ZIIII)V
.end method
