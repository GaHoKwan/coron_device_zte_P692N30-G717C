.class Lcom/android/settings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ALL_SIZES_COMPUTED:I = 0x5

.field static final MSG_PACKAGE_ICON_CHANGED:I = 0x3

.field static final MSG_PACKAGE_LIST_CHANGED:I = 0x2

.field static final MSG_PACKAGE_SIZE_CHANGED:I = 0x4

.field static final MSG_REBUILD_COMPLETE:I = 0x1

.field static final MSG_RUNNING_STATE_CHANGED:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settings/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 347
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 349
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$Session;

    .line 350
    .local v1, s:Lcom/android/settings/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, v1, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object v3, v1, Lcom/android/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 355
    .end local v1           #s:Lcom/android/settings/applications/ApplicationsState$Session;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    .end local v0           #i:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 365
    .end local v0           #i:I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 371
    .end local v0           #i:I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 376
    .end local v0           #i:I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, v2}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 377
    :cond_1
    const/4 v2, 0x0

    goto :goto_6

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
