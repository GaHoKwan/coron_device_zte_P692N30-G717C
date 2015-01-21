.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "parent"
    .parameter "singleMode"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 105
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 106
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 107
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 108
    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 12
    .parameter "r"
    .parameter "desiredState"

    .prologue
    .line 111
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v0, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v8

    .line 116
    .local v8, contextId:I
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v0, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v11

    .line 117
    .local v11, taskId:I
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 118
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 120
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v10

    .line 122
    .local v10, lastNonConfigurationInstances:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 123
    .local v9, instanceObj:Ljava/lang/Object;
    if-eqz v10, :cond_2

    .line 124
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 126
    .end local v9           #instanceObj:Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    .line 127
    .local v7, instance:Landroid/app/Activity$NonConfigurationInstances;
    if-eqz v9, :cond_3

    .line 128
    new-instance v7, Landroid/app/Activity$NonConfigurationInstances;

    .end local v7           #instance:Landroid/app/Activity$NonConfigurationInstances;
    invoke-direct {v7}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 129
    .restart local v7       #instance:Landroid/app/Activity$NonConfigurationInstances;
    iput-object v9, v7, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 134
    :cond_3
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 137
    :cond_4
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 139
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 140
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto :goto_0

    .line 143
    :cond_5
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 145
    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 147
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 149
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 150
    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 159
    :cond_6
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto :goto_0

    .line 163
    .end local v7           #instance:Landroid/app/Activity$NonConfigurationInstances;
    .end local v10           #lastNonConfigurationInstances:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    packed-switch v0, :pswitch_data_0

    .line 211
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto/16 :goto_0

    .line 165
    :pswitch_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 167
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 168
    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 170
    :cond_8
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    .line 172
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 173
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 174
    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 176
    :cond_9
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto/16 :goto_0

    .line 180
    :pswitch_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 183
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 185
    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 187
    :cond_a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    .line 189
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;Z)V

    .line 190
    const/4 v0, 0x2

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 192
    :cond_b
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto/16 :goto_0

    .line 196
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_c

    .line 198
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 199
    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 201
    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    .line 203
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 205
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;Z)V

    .line 206
    const/4 v0, 0x2

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 208
    :cond_d
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 6
    .parameter "r"
    .parameter "finish"

    .prologue
    const/4 v5, 0x0

    .line 377
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v3, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v3}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    .line 378
    .local v0, contextId:I
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v3, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v3}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v1

    .line 379
    .local v1, taskId:I
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 381
    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 382
    .local v2, win:Landroid/view/Window;
    iget v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    if-nez p2, :cond_0

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 386
    :cond_0
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 387
    iput-object v5, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 388
    iput-object v5, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 389
    if-eqz p2, :cond_1

    .line 390
    iput-object v5, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 392
    :cond_1
    const/4 v3, 0x5

    iput v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 393
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 394
    return-object v2
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 6
    .parameter "r"
    .parameter "finishing"

    .prologue
    .line 215
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v4}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    .line 216
    .local v0, contextId:I
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v4}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v3

    .line 217
    .local v3, taskId:I
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 218
    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 219
    .local v2, needState:Z
    :goto_0
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v4, p1, p2, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 221
    .local v1, instanceState:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 222
    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 224
    :cond_0
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v4, v0, v3}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 225
    return-void

    .line 218
    .end local v1           #instanceState:Landroid/os/Bundle;
    .end local v2           #needState:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 6
    .parameter "id"
    .parameter "finish"

    .prologue
    .line 410
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v4}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    .line 411
    .local v0, contextId:I
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v4}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v2

    .line 412
    .local v2, taskId:I
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 413
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 414
    .local v1, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v3, 0x0

    .line 415
    .local v3, win:Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 416
    invoke-direct {p0, v1, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v3

    .line 417
    if-eqz p2, :cond_0

    .line 418
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v4, v0, v2}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 423
    return-object v3
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 480
    if-eqz p1, :cond_1

    .line 481
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 483
    .local v3, id:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 484
    .local v0, astate:Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 485
    .local v4, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_0

    .line 486
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v0           #astate:Landroid/os/Bundle;
    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "LocalActivityManager"

    const-string v6, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 488
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #astate:Landroid/os/Bundle;
    .restart local v4       #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 489
    .restart local v4       #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 490
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 500
    .end local v0           #astate:Landroid/os/Bundle;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 501
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 7
    .parameter "finishing"

    .prologue
    .line 659
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v5, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v1

    .line 660
    .local v1, contextId:I
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v5, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v5}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v4

    .line 661
    .local v4, taskId:I
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 662
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 663
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 664
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 666
    .local v3, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, v3, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    .end local v3           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 669
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, v1, v4}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 671
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 6
    .parameter "finishing"

    .prologue
    const/4 v5, 0x3

    .line 578
    if-eqz p1, :cond_0

    .line 579
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 581
    :cond_0
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 582
    iget-boolean v3, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v3, :cond_2

    .line 583
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_1

    .line 584
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 595
    :cond_1
    return-void

    .line 587
    :cond_2
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 588
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 589
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 590
    .local v2, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 591
    invoke-direct {p0, v2, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 588
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 552
    iput v3, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 553
    iget-boolean v2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v2, :cond_1

    .line 554
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 563
    :cond_0
    return-void

    .line 558
    :cond_1
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 560
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    const/4 v4, 0x0

    .line 623
    .local v4, instanceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v7, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v7}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v1

    .line 624
    .local v1, contextId:I
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v7, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v7}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v6

    .line 625
    .local v6, taskId:I
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v8, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 626
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 627
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 628
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 629
    .local v5, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v5, :cond_1

    iget-object v7, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_1

    .line 630
    iget-object v7, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    .line 631
    .local v3, instance:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 632
    if-nez v4, :cond_0

    .line 633
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #instanceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 635
    .restart local v4       #instanceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v7, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .end local v3           #instance:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v5           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_2
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v7, v1, v6}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 640
    return-object v4
.end method

.method public dispatchStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 605
    iput v4, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 606
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 607
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 608
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 609
    .local v2, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {p0, v2, v4}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v2           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 2
    .parameter "id"

    .prologue
    .line 461
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 462
    .local v0, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllActivities()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 649
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 514
    const/4 v5, 0x0

    .line 516
    .local v5, state:Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v7, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v7}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v2

    .line 517
    .local v2, contextId:I
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v7, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v7}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v6

    .line 518
    .local v6, taskId:I
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v8, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 521
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 523
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 524
    .local v4, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v5, :cond_0

    .line 525
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #state:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 527
    .restart local v5       #state:Landroid/os/Bundle;
    :cond_0
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v7, :cond_1

    iget v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    :cond_1
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_2

    .line 531
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v1, childState:Landroid/os/Bundle;
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 533
    iput-object v1, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 535
    .end local v1           #childState:Landroid/os/Bundle;
    :cond_2
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    .line 536
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v8, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 522
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    .end local v4           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_4
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v7, v2, v6}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 541
    return-object v5
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 11
    .parameter "id"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    .line 273
    iget v8, p0, Landroid/app/LocalActivityManager;->mCurState:I

    if-ne v8, v10, :cond_0

    .line 274
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Activities can\'t be added until the containing group has been created."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 279
    .local v1, adding:Z
    const/4 v6, 0x0

    .line 281
    .local v6, sameIntent:Z
    const/4 v0, 0x0

    .line 284
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 285
    .local v5, r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v5, :cond_6

    .line 287
    new-instance v5, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v5           #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {v5, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 288
    .restart local v5       #r:Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x1

    .line 296
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 297
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v8, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 302
    :cond_2
    iget-boolean v8, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v8, :cond_3

    .line 303
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 307
    .local v4, old:Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_3

    iget v8, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 308
    const/4 v8, 0x3

    invoke-direct {p0, v4, v8}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 312
    .end local v4           #old:Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_3
    if-eqz v1, :cond_7

    .line 314
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v8, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_4
    :goto_1
    iput-object p2, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 364
    iput v10, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 365
    iput-object v0, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 367
    iget v8, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v5, v8}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 370
    iget-boolean v8, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v8, :cond_5

    .line 371
    iput-object v5, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 373
    :cond_5
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    :goto_2
    return-object v8

    .line 289
    :cond_6
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_1

    .line 290
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    .line 291
    if-eqz v6, :cond_1

    .line 293
    iget-object v0, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 316
    :cond_7
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_4

    .line 319
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v0, v8, :cond_8

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v9, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 322
    :cond_8
    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v8, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x2000

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    .line 325
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v3, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v8, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v8}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v2

    .line 329
    .local v2, contextId:I
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v8, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v8}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v7

    .line 330
    .local v7, taskId:I
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v8, v9}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 331
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v8, v5, v3}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 332
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v8, v2, v7}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 333
    iput-object p2, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 334
    iget v8, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v5, v8}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 335
    iget-boolean v8, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v8, :cond_a

    .line 336
    iput-object v5, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 338
    :cond_a
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    goto :goto_2

    .line 340
    .end local v2           #contextId:I
    .end local v3           #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v7           #taskId:I
    :cond_b
    if-eqz v6, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x400

    and-int/2addr v8, v9

    if-nez v8, :cond_d

    .line 344
    iput-object p2, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 345
    iget v8, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v5, v8}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 346
    iget-boolean v8, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v8, :cond_c

    .line 347
    iput-object v5, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 349
    :cond_c
    iget-object v8, v5, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    goto/16 :goto_2

    .line 356
    :cond_d
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v8, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v8}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v2

    .line 357
    .restart local v2       #contextId:I
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    sget-object v8, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v8}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v7

    .line 358
    .restart local v7       #taskId:I
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v8, v9}, Landroid/app/ActivityThread;->handleContextCall(Landroid/content/Context;)V

    .line 359
    invoke-direct {p0, v5, v10}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    .line 360
    iget-object v8, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v8, v2, v7}, Landroid/app/ActivityThread;->finishContextCall(II)V

    goto/16 :goto_1
.end method
