.class public Lcom/android/server/am/AmSmartShowStub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/am/IAmSmartShowStub;


# instance fields
.field a:Lcom/android/server/am/c;


# direct methods
.method public constructor <init>(Lcom/android/server/am/c;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    return-void
.end method


# virtual methods
.method public checkMoveTaskToBackLocked(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->c(II)Z

    move-result v0

    return v0
.end method

.method public checkMoveTaskToFrontLocked(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->d(II)Z

    move-result v0

    return v0
.end method

.method public checkStartActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->a(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Z

    move-result v0

    return v0
.end method

.method public clearTaskRelationshipLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->a(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method public eventCollectLocked(ILjava/lang/Object;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->a(ILjava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public getScreenForProcessRecord(Lcom/android/server/am/ProcessRecord;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->a(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method

.method public getStackLocked(I)Lcom/android/server/am/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public getStackLocked(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->b(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IApplicationThread;)Lcom/android/server/am/b;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public getStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->a(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/b;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/b;->c:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public moveServicesInAppToScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->a(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public moveTaskLocked(IIZ)I
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/c;->a(IIZZZ)V

    return v4
.end method

.method public setupTaskRelationshipLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->a(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method public startIdleActivityLocked(IIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->b(IIZ)Z

    move-result v0

    return v0
.end method

.method public tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->a(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method public updatePidOfCreatedServiceLocked(ZIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/c;->a(ZIII)V

    return-void
.end method

.method public updateRemoteConfigurationLocked(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->h(II)V

    return-void
.end method

.method public updateRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->c(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public updateTaskIdOfCreatedServiceLocked(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AmSmartShowStub;->a:Lcom/android/server/am/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/c;->a(ZIIII)V

    return-void
.end method
