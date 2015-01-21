.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DISPLAY_CHANGED:I = 0x91

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESET_SL:I = 0x90

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SENSOR_CHANGED:I = 0x92

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SET_TRIMMEM_FLAG_EX:I = 0x8f

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1708
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1711
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1712
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1714
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1715
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1716
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1719
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1720
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    .line 1721
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1726
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1727
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 1724
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1293
    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_0

    .line 1294
    packed-switch p1, :pswitch_data_0

    .line 1344
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1295
    :pswitch_0
    const-string v0, "ACT-LAUNCH_ACTIVITY"

    goto :goto_0

    .line 1296
    :pswitch_1
    const-string v0, "ACT-PAUSE_ACTIVITY"

    goto :goto_0

    .line 1297
    :pswitch_2
    const-string v0, "ACT-PAUSE_ACTIVITY_FINISHING"

    goto :goto_0

    .line 1298
    :pswitch_3
    const-string v0, "ACT-STOP_ACTIVITY_SHOW"

    goto :goto_0

    .line 1299
    :pswitch_4
    const-string v0, "ACT-STOP_ACTIVITY_HIDE"

    goto :goto_0

    .line 1300
    :pswitch_5
    const-string v0, "ACT-SHOW_WINDOW"

    goto :goto_0

    .line 1301
    :pswitch_6
    const-string v0, "ACT-HIDE_WINDOW"

    goto :goto_0

    .line 1302
    :pswitch_7
    const-string v0, "ACT-RESUME_ACTIVITY"

    goto :goto_0

    .line 1303
    :pswitch_8
    const-string v0, "SEND_RESULT"

    goto :goto_0

    .line 1304
    :pswitch_9
    const-string v0, "ACT-DESTROY_ACTIVITY"

    goto :goto_0

    .line 1305
    :pswitch_a
    const-string v0, "BIND_APPLICATION"

    goto :goto_0

    .line 1306
    :pswitch_b
    const-string v0, "EXIT_APPLICATION"

    goto :goto_0

    .line 1307
    :pswitch_c
    const-string v0, "ACT-NEW_INTENT"

    goto :goto_0

    .line 1308
    :pswitch_d
    const-string v0, "BDC-RECEIVER"

    goto :goto_0

    .line 1309
    :pswitch_e
    const-string v0, "SVC-CREATE_SERVICE"

    goto :goto_0

    .line 1310
    :pswitch_f
    const-string v0, "SVC-SERVICE_ARGS"

    goto :goto_0

    .line 1311
    :pswitch_10
    const-string v0, "SVC-STOP_SERVICE"

    goto :goto_0

    .line 1312
    :pswitch_11
    const-string v0, "REQUEST_THUMBNAIL"

    goto :goto_0

    .line 1313
    :pswitch_12
    const-string v0, "ACT-CONFIGURATION_CHANGED"

    goto :goto_0

    .line 1314
    :pswitch_13
    const-string v0, "CLEAN_UP_CONTEXT"

    goto :goto_0

    .line 1315
    :pswitch_14
    const-string v0, "GC_WHEN_IDLE"

    goto :goto_0

    .line 1316
    :pswitch_15
    const-string v0, "SVC-BIND_SERVICE"

    goto :goto_0

    .line 1317
    :pswitch_16
    const-string v0, "SVC-UNBIND_SERVICE"

    goto :goto_0

    .line 1318
    :pswitch_17
    const-string v0, "SVC-DUMP_SERVICE"

    goto :goto_0

    .line 1319
    :pswitch_18
    const-string v0, "LOW_MEMORY"

    goto :goto_0

    .line 1320
    :pswitch_19
    const-string v0, "ACT-ACTIVITY_CONFIGURATION_CHANGED"

    goto :goto_0

    .line 1321
    :pswitch_1a
    const-string v0, "ACT-RELAUNCH_ACTIVITY"

    goto :goto_0

    .line 1322
    :pswitch_1b
    const-string v0, "PROFILER_CONTROL"

    goto :goto_0

    .line 1323
    :pswitch_1c
    const-string v0, "CREATE_BACKUP_AGENT"

    goto :goto_0

    .line 1324
    :pswitch_1d
    const-string v0, "DESTROY_BACKUP_AGENT"

    goto :goto_0

    .line 1325
    :pswitch_1e
    const-string v0, "SUICIDE"

    goto :goto_0

    .line 1326
    :pswitch_1f
    const-string v0, "REMOVE_PROVIDER"

    goto :goto_0

    .line 1327
    :pswitch_20
    const-string v0, "ENABLE_JIT"

    goto :goto_0

    .line 1328
    :pswitch_21
    const-string v0, "DISPATCH_PACKAGE_BROADCAST"

    goto :goto_0

    .line 1329
    :pswitch_22
    const-string v0, "SCHEDULE_CRASH"

    goto :goto_0

    .line 1330
    :pswitch_23
    const-string v0, "DUMP_HEAP"

    goto :goto_0

    .line 1331
    :pswitch_24
    const-string v0, "DUMP_ACTIVITY"

    goto :goto_0

    .line 1332
    :pswitch_25
    const-string v0, "SLEEPING"

    goto :goto_0

    .line 1333
    :pswitch_26
    const-string v0, "SET_CORE_SETTINGS"

    goto :goto_0

    .line 1334
    :pswitch_27
    const-string v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    goto :goto_0

    .line 1335
    :pswitch_28
    const-string v0, "TRIM_MEMORY"

    goto :goto_0

    .line 1336
    :pswitch_29
    const-string v0, "DUMP_PROVIDER"

    goto :goto_0

    .line 1337
    :pswitch_2a
    const-string v0, "UNSTABLE_PROVIDER_DIED"

    goto/16 :goto_0

    .line 1338
    :pswitch_2b
    const-string v0, "DISPLAY_CHANGED"

    goto/16 :goto_0

    .line 1339
    :pswitch_2c
    const-string v0, "SET_TRIMMEM_FLAG_EX"

    goto/16 :goto_0

    .line 1340
    :pswitch_2d
    const-string v0, "RESET_SL"

    goto/16 :goto_0

    .line 1341
    :pswitch_2e
    const-string v0, "SENSOR_CHANGED"

    goto/16 :goto_0

    .line 1294
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1402
    sget-object v11, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v11}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v3

    .line 1403
    .local v3, contextId:I
    sget-object v11, Landroid/app/ActivityThread;->mSmartShowContext:Landroid/content/SmartShowContext;

    invoke-virtual {v11}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v10

    .line 1404
    .local v10, taskId:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 1699
    :goto_0
    sget-boolean v11, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/ActivityThread$H;->isDebuggableMessage(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1700
    const-string v11, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " handled "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_0
    return-void

    .line 1407
    :pswitch_0
    const/4 v11, 0x1

    sget-boolean v12, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-ne v11, v12, :cond_1

    sget-boolean v11, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v11, :cond_1

    sget-boolean v11, Landroid/app/ActivityThread;->mTraceEnabled:Z

    if-nez v11, :cond_1

    .line 1409
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    const-string v11, "/proc/mtprof/status"

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v7, fprofsts_in:Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v11

    const/16 v12, 0x33

    if-ne v11, v12, :cond_1

    .line 1411
    const-string v11, "ActivityThread"

    const-string v12, "start Profiling for empty process"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 v11, 0x1

    sput-boolean v11, Landroid/app/ActivityThread;->mTraceEnabled:Z

    .line 1413
    const-string v11, "/data/data/applaunch"

    invoke-static {v11}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1423
    .end local v7           #fprofsts_in:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    const-wide/16 v11, 0x1040

    const-string v13, "activityStart"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1424
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1426
    .local v8, r:Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v8, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v11, v12, v13}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v11

    iput-object v11, v8, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1428
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->contextId:I

    iget-object v13, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->taskId:I

    invoke-virtual {v11, v12, v13}, Landroid/app/ActivityThread;->handleContextCall(II)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v12, 0x0

    #calls: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v11, v8, v12}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1431
    const-wide/16 v11, 0x1040

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1415
    .end local v8           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v6

    .line 1416
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v11, "ActivityThread"

    const-string v12, "mtprof entry can not be found"

    invoke-static {v11, v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1417
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 1418
    .local v6, e:Ljava/io/IOException;
    const-string v11, "ActivityThread"

    const-string v12, "mtprof entry open failed"

    invoke-static {v11, v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1434
    .end local v6           #e:Ljava/io/IOException;
    :pswitch_1
    const-wide/16 v11, 0x40

    const-string v13, "activityRestart"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1435
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1436
    .restart local v8       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v8, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v11, v12}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v11, v8}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1439
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1442
    .end local v8           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-wide/16 v11, 0x40

    const-string v13, "activityPause"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v13, v11, v14, v12, v15}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1446
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1447
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1444
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 1450
    :pswitch_3
    const-wide/16 v11, 0x40

    const-string v13, "activityPause"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v13, v11, v14, v12, v15}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1454
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1452
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 1457
    :pswitch_4
    const-wide/16 v11, 0x40

    const-string v13, "activityStop"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v12, v11, v13, v14}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1461
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1464
    :pswitch_5
    const-wide/16 v11, 0x40

    const-string v13, "activityStop"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v12, v11, v13, v14}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1468
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1471
    :pswitch_6
    const-wide/16 v11, 0x40

    const-string v13, "activityShowWindow"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v13, 0x1

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v12, v11, v13}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1475
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1478
    :pswitch_7
    const-wide/16 v11, 0x40

    const-string v13, "activityHideWindow"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v13, 0x0

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v12, v11, v13}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1482
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1485
    :pswitch_8
    const-wide/16 v11, 0x1040

    const-string v13, "activityResume"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_4
    const/4 v15, 0x1

    invoke-virtual {v13, v11, v14, v12, v15}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1490
    const-wide/16 v11, 0x1040

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1487
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 1493
    :pswitch_9
    const-wide/16 v11, 0x40

    const-string v13, "activityDeliverResult"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ResultData;

    iget-object v11, v11, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ResultData;

    #calls: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1497
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1500
    :pswitch_a
    const-wide/16 v11, 0x40

    const-string v13, "activityDestroy"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v15, 0x0

    #calls: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v13, v11, v12, v14, v15}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1505
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1502
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 1508
    :pswitch_b
    const-wide/16 v11, 0x40

    const-string v13, "bindApplication"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1509
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$AppBindData;

    .line 1510
    .local v4, data:Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v11, v4}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1511
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1514
    .end local v4           #data:Landroid/app/ActivityThread$AppBindData;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v11, :cond_6

    .line 1515
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->onTerminate()V

    .line 1517
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1520
    :pswitch_d
    const-wide/16 v11, 0x40

    const-string v13, "activityNewIntent"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$NewIntentData;

    iget-object v11, v11, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$NewIntentData;

    #calls: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1524
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1527
    :pswitch_e
    const-wide/16 v11, 0x40

    const-string v13, "broadcastReceiveComp"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ReceiverData;

    iget-object v11, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getContextId()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ReceiverData;

    iget-object v11, v11, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getTaskId()I

    move-result v11

    invoke-virtual {v12, v13, v11}, Landroid/app/ActivityThread;->handleContextCall(II)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ReceiverData;

    #calls: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1530
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1531
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1532
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1535
    :pswitch_f
    const-wide/16 v11, 0x40

    const-string v13, "serviceCreate"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$CreateServiceData;

    iget-object v11, v11, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v11, Landroid/content/pm/ServiceInfo;->contextId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$CreateServiceData;

    iget-object v11, v11, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v11, Landroid/content/pm/ServiceInfo;->contextId:I

    invoke-virtual {v14, v11}, Landroid/app/ActivityThread;->getTaskId(I)I

    move-result v11

    invoke-virtual {v12, v13, v11}, Landroid/app/ActivityThread;->handleContextCall(II)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$CreateServiceData;

    #calls: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1540
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1543
    :pswitch_10
    const-wide/16 v11, 0x40

    const-string v13, "serviceBind"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$BindServiceData;

    iget-object v11, v11, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1547
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1550
    :pswitch_11
    const-wide/16 v11, 0x40

    const-string v13, "serviceUnbind"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$BindServiceData;

    iget-object v11, v11, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1554
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1557
    :pswitch_12
    const-wide/16 v11, 0x40

    const-string v13, "serviceStart"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ServiceArgsData;

    iget-object v11, v11, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ServiceArgsData;

    #calls: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1561
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1564
    :pswitch_13
    const-wide/16 v11, 0x40

    const-string v13, "serviceStop"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1568
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1569
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1572
    :pswitch_14
    const-wide/16 v11, 0x40

    const-string v13, "requestThumbnail"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1576
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1579
    :pswitch_15
    const-wide/16 v11, 0x40

    const-string v13, "configChanged"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1580
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ConfigChangeData;

    .line 1581
    .local v2, cdata:Landroid/app/ActivityThread$ConfigChangeData;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v2, Landroid/app/ActivityThread$ConfigChangeData;->config:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->densityDpi:I

    iput v12, v11, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1582
    iget-boolean v11, v2, Landroid/app/ActivityThread$ConfigChangeData;->forceUpdate:Z

    invoke-static {v11}, Landroid/app/ActivityThread;->access$2202(Z)Z

    .line 1583
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v2, Landroid/app/ActivityThread$ConfigChangeData;->config:Landroid/content/res/Configuration;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1584
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/app/ActivityThread;->access$2202(Z)Z

    .line 1585
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1588
    .end local v2           #cdata:Landroid/app/ActivityThread$ConfigChangeData;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1589
    .local v1, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v11, v1, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v12, v1, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v13, v1, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1592
    .end local v1           #cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1595
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1598
    :pswitch_19
    const-wide/16 v11, 0x40

    const-string v13, "lowMemory"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1600
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1603
    :pswitch_1a
    const-wide/16 v11, 0x40

    const-string v13, "activityConfigChanged"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1607
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1610
    :pswitch_1b
    const-wide/16 v11, 0x40

    const-string v13, "DisplayChanged"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1611
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$DisplayEventData;

    .line 1612
    .local v5, ded:Landroid/app/ActivityThread$DisplayEventData;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v5, Landroid/app/ActivityThread$DisplayEventData;->token:Landroid/os/IBinder;

    iget-object v13, v5, Landroid/app/ActivityThread$DisplayEventData;->config:Landroid/content/res/Configuration;

    iget v14, v5, Landroid/app/ActivityThread$DisplayEventData;->displayId:I

    iget v15, v5, Landroid/app/ActivityThread$DisplayEventData;->value:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/ActivityThread;->handleDisplayChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;II)V

    .line 1613
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1616
    .end local v5           #ded:Landroid/app/ActivityThread$DisplayEventData;
    :pswitch_1c
    const-wide/16 v11, 0x40

    const-string v13, "SensorChanged"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1617
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityThread$SensorEventData;

    .line 1618
    .local v9, sed:Landroid/app/ActivityThread$SensorEventData;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v9, Landroid/app/ActivityThread$SensorEventData;->token:Landroid/os/IBinder;

    iget-object v13, v9, Landroid/app/ActivityThread$SensorEventData;->config:Landroid/content/res/Configuration;

    iget v14, v9, Landroid/app/ActivityThread$SensorEventData;->displayId:I

    iget v15, v9, Landroid/app/ActivityThread$SensorEventData;->value:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/ActivityThread;->handleSensorChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;II)V

    .line 1619
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1622
    .end local v9           #sed:Landroid/app/ActivityThread$SensorEventData;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    move v12, v11

    :goto_6
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ProfilerControlData;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v12, v11, v14}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    move v12, v11

    goto :goto_6

    .line 1625
    :pswitch_1e
    const-wide/16 v11, 0x40

    const-string v13, "backupCreateAgent"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1627
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1630
    :pswitch_1f
    const-wide/16 v11, 0x40

    const-string v13, "backupDestroyAgent"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1632
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1635
    :pswitch_20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1638
    :pswitch_21
    const-wide/16 v11, 0x40

    const-string v13, "providerRemove"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1640
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1643
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1646
    :pswitch_23
    const-wide/16 v11, 0x40

    const-string v13, "broadcastPackage"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v12, v13, v11}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1648
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1651
    :pswitch_24
    new-instance v12, Landroid/app/RemoteServiceException;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-direct {v12, v11}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1653
    :pswitch_25
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    move v12, v11

    :goto_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v12, v11}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    move v12, v11

    goto :goto_7

    .line 1656
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1659
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1662
    :pswitch_28
    const-wide/16 v11, 0x40

    const-string v13, "sleeping"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-virtual {v12, v11}, Landroid/app/ActivityThread;->handleContextCall(Landroid/os/IBinder;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_8
    #calls: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v13, v11, v12}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11, v3, v10}, Landroid/app/ActivityThread;->finishContextCall(II)V

    .line 1666
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1664
    :cond_9
    const/4 v12, 0x0

    goto :goto_8

    .line 1669
    :pswitch_29
    const-wide/16 v11, 0x40

    const-string v13, "setCoreSettings"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    #calls: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1671
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1674
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #calls: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v12, v11}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1677
    :pswitch_2b
    const-wide/16 v11, 0x40

    const-string v13, "trimMemory"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1679
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1682
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1686
    :pswitch_2d
    const-wide/16 v11, 0x40

    const-string v13, "setTrimMemoryFlagEx"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v11}, Landroid/app/ActivityThread;->handlesetTrimMemoryFlagEx()V

    .line 1688
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1691
    :pswitch_2e
    const-wide/16 v11, 0x40

    const-string v13, "reset_sl"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1692
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->gc3()V

    .line 1693
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1404
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_27
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method isDebuggableMessage(I)Z
    .locals 2
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1349
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1394
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 1367
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1368
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1369
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 1370
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 1373
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1375
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 1377
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 1378
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 1379
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 1380
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 1381
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 1382
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 1383
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 1384
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 1385
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 1386
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 1387
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 1388
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 1389
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 1390
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 1391
    goto :goto_0

    :pswitch_17
    move v0, v1

    .line 1392
    goto :goto_0

    .line 1349
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
