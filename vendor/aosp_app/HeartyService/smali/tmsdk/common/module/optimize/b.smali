.class final Ltmsdk/common/module/optimize/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/optimize/IMemoryHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/optimize/b$a;
    }
.end annotation


# static fields
.field private static zM:Ljava/lang/reflect/Method;

.field private static zN:Ljava/lang/reflect/Method;

.field private static zO:Ljava/lang/reflect/Field;

.field private static zP:J

.field private static zR:J


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field zQ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    const-wide/16 v1, -0x1

    sput-wide v1, Ltmsdk/common/module/optimize/b;->zP:J

    .line 70
    :try_start_0
    const-class v1, Landroid/content/pm/PackageManager;

    const-string v2, "freeStorageAndNotify"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/pm/IPackageDataObserver;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ltmsdk/common/module/optimize/b;->zM:Ljava/lang/reflect/Method;

    .line 71
    sget-object v1, Ltmsdk/common/module/optimize/b;->zM:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const-class v1, Landroid/content/pm/PackageManager;

    const-string v2, "getPackageSizeInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/pm/IPackageStatsObserver;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ltmsdk/common/module/optimize/b;->zN:Ljava/lang/reflect/Method;

    .line 74
    sget-object v1, Ltmsdk/common/module/optimize/b;->zN:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    const-class v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Ltmsdk/common/module/optimize/b;->zO:Ljava/lang/reflect/Field;

    .line 77
    sget-object v1, Ltmsdk/common/module/optimize/b;->zO:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 79
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ltmsdk/common/module/optimize/b;->zQ:[B

    .line 89
    iput-object p1, p0, Ltmsdk/common/module/optimize/b;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Ltmsdk/common/module/optimize/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/optimize/b;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 91
    iget-object v0, p0, Ltmsdk/common/module/optimize/b;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    .line 92
    return-void
.end method

.method private a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 5
    .parameter "pi"

    .prologue
    const/4 v2, 0x1

    .line 433
    sget-object v3, Ltmsdk/common/module/optimize/b;->zO:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    .line 436
    :try_start_0
    sget-object v3, Ltmsdk/common/module/optimize/b;->zO:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 437
    .local v1, flags:I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    .line 449
    .end local v1           #flags:I
    :cond_0
    :goto_0
    return v2

    .line 440
    .restart local v1       #flags:I
    :cond_1
    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_2

    iget v3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0xaa

    if-ge v3, v4, :cond_2

    iget v3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 449
    .end local v1           #flags:I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 445
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private fG()J
    .locals 9

    .prologue
    .line 109
    sget-wide v5, Ltmsdk/common/module/optimize/b;->zR:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 110
    sget-wide v5, Ltmsdk/common/module/optimize/b;->zR:J

    .line 139
    :goto_0
    return-wide v5

    .line 113
    :cond_0
    :try_start_0
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v5

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 114
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 115
    .local v4, systemPropertiesClaxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 116
    .local v3, staticGetMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.SECONDARY_SERVER_MEM"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit16 v5, v5, 0x400

    int-to-long v5, v5

    sput-wide v5, Ltmsdk/common/module/optimize/b;->zR:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_6

    .line 139
    .end local v3           #staticGetMethod:Ljava/lang/reflect/Method;
    .end local v4           #systemPropertiesClaxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    sget-wide v5, Ltmsdk/common/module/optimize/b;->zR:J

    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    const-class v5, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    const-string v6, "secondaryServerThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 119
    .local v2, secondaryServerThresholdFiled:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 121
    .local v1, info:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v5, p0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    sput-wide v5, Ltmsdk/common/module/optimize/b;->zR:J
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 124
    .end local v1           #info:Landroid/app/ActivityManager$MemoryInfo;
    .end local v2           #secondaryServerThresholdFiled:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method private fH()J
    .locals 26

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v22, v0

    const/16 v23, 0x64

    invoke-virtual/range {v22 .. v23}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v17

    .line 150
    .local v17, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 151
    .local v3, NS:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v3, :cond_3

    .line 152
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 154
    .local v18, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 155
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v8, v8, -0x1

    .line 157
    add-int/lit8 v3, v3, -0x1

    .line 151
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 150
    .end local v3           #NS:I
    .end local v8           #i:I
    .end local v18           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    .restart local v3       #NS:I
    .restart local v8       #i:I
    .restart local v18       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_0

    .line 162
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    add-int/lit8 v8, v8, -0x1

    .line 164
    add-int/lit8 v3, v3, -0x1

    .line 165
    goto :goto_2

    .line 170
    .end local v18           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v16

    .line 172
    .local v16, runningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    .line 173
    .local v2, NP:I
    :goto_3
    new-instance v21, Landroid/util/SparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseArray;-><init>()V

    .line 174
    .local v21, tmpRunningAppProcesses:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ltmsdk/common/module/optimize/b$a;>;"
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_5

    .line 175
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 176
    .local v13, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    new-instance v23, Ltmsdk/common/module/optimize/b$a;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Ltmsdk/common/module/optimize/b$a;-><init>(Ltmsdk/common/module/optimize/b;Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v21 .. v23}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 172
    .end local v2           #NP:I
    .end local v13           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v21           #tmpRunningAppProcesses:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ltmsdk/common/module/optimize/b$a;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 180
    .restart local v2       #NP:I
    .restart local v21       #tmpRunningAppProcesses:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ltmsdk/common/module/optimize/b$a;>;"
    :cond_5
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v3, :cond_7

    .line 181
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 182
    .restart local v18       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v22, v0

    if-lez v22, :cond_6

    .line 183
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdk/common/module/optimize/b$a;

    .line 184
    .local v5, ainfo:Ltmsdk/common/module/optimize/b$a;
    if-eqz v5, :cond_6

    .line 185
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v5, Ltmsdk/common/module/optimize/b$a;->zW:Z

    .line 186
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 187
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v5, Ltmsdk/common/module/optimize/b$a;->zX:Z

    .line 180
    .end local v5           #ainfo:Ltmsdk/common/module/optimize/b$a;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 193
    .end local v18           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_d

    .line 194
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 197
    .restart local v18       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_c

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v22, v0

    if-lez v22, :cond_c

    .line 198
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdk/common/module/optimize/b$a;

    .line 199
    .restart local v5       #ainfo:Ltmsdk/common/module/optimize/b$a;
    if-eqz v5, :cond_b

    iget-boolean v0, v5, Ltmsdk/common/module/optimize/b$a;->zX:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 200
    iget-object v0, v5, Ltmsdk/common/module/optimize/b$a;->zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v22, v0

    const/16 v23, 0x12c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 202
    const/16 v19, 0x0

    .line 203
    .local v19, skip:Z
    iget-object v0, v5, Ltmsdk/common/module/optimize/b$a;->zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ainfo:Ltmsdk/common/module/optimize/b$a;
    check-cast v5, Ltmsdk/common/module/optimize/b$a;

    .line 204
    .restart local v5       #ainfo:Ltmsdk/common/module/optimize/b$a;
    :goto_7
    if-eqz v5, :cond_9

    .line 205
    iget-boolean v0, v5, Ltmsdk/common/module/optimize/b$a;->zW:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    iget-object v0, v5, Ltmsdk/common/module/optimize/b$a;->zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ltmsdk/common/module/optimize/b;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 206
    :cond_8
    const/16 v19, 0x1

    .line 211
    :cond_9
    if-eqz v19, :cond_b

    .line 193
    .end local v5           #ainfo:Ltmsdk/common/module/optimize/b$a;
    .end local v19           #skip:Z
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 209
    .restart local v5       #ainfo:Ltmsdk/common/module/optimize/b$a;
    .restart local v19       #skip:Z
    :cond_a
    iget-object v0, v5, Ltmsdk/common/module/optimize/b$a;->zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ainfo:Ltmsdk/common/module/optimize/b$a;
    check-cast v5, Ltmsdk/common/module/optimize/b$a;

    .restart local v5       #ainfo:Ltmsdk/common/module/optimize/b$a;
    goto :goto_7

    .line 216
    .end local v19           #skip:Z
    :cond_b
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8

    .line 218
    .end local v5           #ainfo:Ltmsdk/common/module/optimize/b$a;
    :cond_c
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8

    .line 221
    .end local v18           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v14, pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 224
    .local v20, tmpRunningAppProcessSize:I
    const/4 v8, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v8, v0, :cond_f

    .line 225
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ltmsdk/common/module/optimize/b$a;

    move-object/from16 v0, v22

    iget-object v15, v0, Ltmsdk/common/module/optimize/b$a;->zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 226
    .local v15, processinfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v22, v0

    const/16 v23, 0x190

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    .line 227
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 230
    .end local v15           #processinfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_f
    const/4 v7, 0x0

    .line 231
    .local v7, backgroundProcessMemory:I
    const-string v22, "freememory"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "backgroundProcess count:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    const/4 v12, 0x0

    .line 233
    .local v12, memoryinfos:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_11

    .line 234
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v4, v0, [I

    .line 235
    .local v4, _pids:[I
    const/4 v8, 0x0

    :goto_a
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_10

    .line 236
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v4, v8

    .line 235
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 238
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 239
    if-eqz v12, :cond_11

    .line 249
    move-object v6, v12

    .local v6, arr$:[Landroid/os/Debug$MemoryInfo;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_b
    if-ge v9, v10, :cond_11

    aget-object v11, v6, v9

    .line 250
    .local v11, memoryinfo:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    add-int v7, v7, v22

    .line 249
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 255
    .end local v4           #_pids:[I
    .end local v6           #arr$:[Landroid/os/Debug$MemoryInfo;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #memoryinfo:Landroid/os/Debug$MemoryInfo;
    :cond_11
    int-to-long v0, v7

    move-wide/from16 v22, v0

    return-wide v22
.end method

.method private fI()J
    .locals 8

    .prologue
    .line 578
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 581
    .local v2, cacheFile:Ljava/io/File;
    if-nez v2, :cond_1

    .line 582
    const-wide/32 v3, 0x3d168d80

    .line 593
    .local v3, cacheSize:J
    :cond_0
    :goto_0
    return-wide v3

    .line 585
    .end local v3           #cacheSize:J
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 586
    .local v5, statFs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 587
    .local v0, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    mul-long v3, v6, v0

    .line 588
    .restart local v3       #cacheSize:J
    const-wide/16 v6, 0x400

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    .line 589
    const-wide/32 v3, 0x3d168d80

    goto :goto_0
.end method


# virtual methods
.method public clearAllCacheData()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 599
    const v6, 0x1d4d8

    invoke-static {v6}, Ltmsdkobf/im;->aT(I)V

    .line 601
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 602
    .local v0, _lock:Ljava/lang/Object;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 603
    .local v3, result:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct {p0}, Ltmsdk/common/module/optimize/b;->fI()J

    move-result-wide v4

    .line 604
    .local v4, size:J
    new-instance v2, Ltmsdk/common/module/optimize/b$1;

    invoke-direct {v2, p0, v3, v0}, Ltmsdk/common/module/optimize/b$1;-><init>(Ltmsdk/common/module/optimize/b;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    .line 616
    .local v2, observer:Landroid/content/pm/IPackageDataObserver;
    :try_start_0
    sget-object v6, Ltmsdk/common/module/optimize/b;->zM:Ljava/lang/reflect/Method;

    if-nez v6, :cond_0

    .line 617
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 626
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    monitor-enter v0

    .line 629
    const-wide/16 v6, 0x1388

    :try_start_1
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 634
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 636
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    return v6

    .line 620
    :cond_0
    :try_start_3
    sget-object v6, Ltmsdk/common/module/optimize/b;->zM:Ljava/lang/reflect/Method;

    iget-object v7, p0, Ltmsdk/common/module/optimize/b;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 631
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    .end local p1           #pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageStats;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 684
    .local v1, pkg:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ltmsdk/common/module/optimize/b;->getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    .end local v1           #pkg:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 9
    .parameter "pkg"

    .prologue
    const/4 v8, 0x0

    .line 641
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 642
    .local v0, _lock:Ljava/lang/Object;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 644
    .local v3, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Landroid/content/pm/PackageStats;>;"
    new-instance v2, Ltmsdk/common/module/optimize/b$2;

    invoke-direct {v2, p0, v3, v0}, Ltmsdk/common/module/optimize/b$2;-><init>(Ltmsdk/common/module/optimize/b;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 656
    .local v2, observer:Landroid/content/pm/IPackageStatsObserver$Stub;
    sget-object v4, Ltmsdk/common/module/optimize/b;->zN:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 657
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageStats;

    .line 675
    :goto_0
    return-object v4

    .line 661
    :cond_0
    :try_start_0
    sget-object v4, Ltmsdk/common/module/optimize/b;->zN:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ltmsdk/common/module/optimize/b;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 669
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageStats;

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 666
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getFreeMemery()J
    .locals 9

    .prologue
    .line 96
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 97
    .local v2, info:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 98
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-direct {p0}, Ltmsdk/common/module/optimize/b;->fG()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0}, Ltmsdk/common/module/optimize/b;->fH()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    add-long v0, v3, v5

    .line 100
    .local v0, freeMemory:J
    long-to-float v3, v0

    const/high16 v4, 0x4480

    div-float/2addr v3, v4

    float-to-long v3, v3

    return-wide v3
.end method

.method public getRamSize([I)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    .locals 5
    .parameter "pids"

    .prologue
    .line 556
    const/4 v3, 0x0

    .line 558
    .local v3, result:[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 559
    iget-object v4, p0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 560
    .local v2, minfos:[Landroid/os/Debug$MemoryInfo;
    if-eqz v2, :cond_0

    .line 561
    array-length v4, v2

    new-array v3, v4, [Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    .line 563
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 564
    new-instance v1, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    invoke-direct {v1}, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;-><init>()V

    .line 565
    .local v1, memInfo:Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    aget v4, p1, v0

    iput v4, v1, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;->mPid:I

    .line 566
    aget-object v4, v2, v0

    iput-object v4, v1, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    .line 567
    const/4 v4, 0x0

    iput-object v4, v1, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;->mPkg:Ljava/lang/String;

    .line 569
    aput-object v1, v3, v0

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v0           #i:I
    .end local v1           #memInfo:Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    .end local v2           #minfos:[Landroid/os/Debug$MemoryInfo;
    :cond_0
    return-object v3
.end method

.method public getRamSize([Ljava/lang/String;)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    .locals 19
    .parameter "pkgs"

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 490
    .local v6, infos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 491
    .local v13, pid_pkgs_table:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 493
    .local v16, pkgslist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 494
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 496
    .local v5, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 500
    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v15, v1, v4

    .line 502
    .local v15, pkg:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 503
    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 504
    .local v12, pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v12, :cond_2

    .line 505
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .restart local v12       #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    .end local v12           #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    .restart local v12       #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 509
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7           #len$:I
    .end local v12           #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #pkg:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    .line 518
    .local v17, result:[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    const/4 v14, 0x0

    .line 519
    .local v14, pids:[I
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 521
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v14, v0, [I

    .line 522
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v2, v0, :cond_4

    .line 523
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    aput v18, v14, v2

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 526
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/optimize/b;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v10

    .line 527
    .local v10, minfos:[Landroid/os/Debug$MemoryInfo;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v9, memoryinfos:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;>;"
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v2, v0, :cond_6

    .line 531
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 532
    .local v11, pid:I
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 534
    .restart local v12       #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_5

    .line 535
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 537
    .restart local v15       #pkg:Ljava/lang/String;
    new-instance v8, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    invoke-direct {v8}, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;-><init>()V

    .line 538
    .local v8, memInfo:Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    iput v11, v8, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;->mPid:I

    .line 539
    aget-object v18, v10, v2

    move-object/from16 v0, v18

    iput-object v0, v8, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    .line 540
    iput-object v15, v8, Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;->mPkg:Ljava/lang/String;

    .line 542
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 530
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #memInfo:Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    .end local v15           #pkg:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 547
    .end local v11           #pid:I
    .end local v12           #pid_pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 548
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    move-object/from16 v17, v18

    check-cast v17, [Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    .line 552
    .end local v2           #i:I
    .end local v9           #memoryinfos:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;>;"
    .end local v10           #minfos:[Landroid/os/Debug$MemoryInfo;
    :cond_7
    return-object v17
.end method

.method public getTotalMemery()J
    .locals 10

    .prologue
    .line 454
    sget-wide v6, Ltmsdk/common/module/optimize/b;->zP:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 455
    new-instance v1, Ljava/io/File;

    const-string v6, "/proc/meminfo"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 457
    .local v2, in:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    .line 460
    .end local v2           #in:Ljava/io/DataInputStream;
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 462
    new-instance v6, Ljava/io/IOException;

    const-string v7, "/proc/meminfo is empty!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8

    .line 467
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 468
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    if-eqz v2, :cond_0

    .line 476
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 480
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    .line 485
    .end local v1           #file:Ljava/io/File;
    .end local v2           #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_2
    sget-wide v6, Ltmsdk/common/module/optimize/b;->zP:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    sget-wide v6, Ltmsdk/common/module/optimize/b;->zP:J

    :goto_3
    return-wide v6

    .line 464
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 465
    const-string v6, "[\\s]+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, temp:[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Ltmsdk/common/module/optimize/b;->zP:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_8

    .line 474
    if-eqz v3, :cond_0

    .line 476
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 480
    :goto_4
    const/4 v2, 0x0

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 477
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_1
    move-exception v0

    .line 478
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 477
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #temp:[Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catch_2
    move-exception v0

    .line 478
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 469
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 470
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 474
    if-eqz v2, :cond_0

    .line 476
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 480
    :goto_6
    const/4 v2, 0x0

    goto :goto_2

    .line 477
    :catch_4
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 471
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 474
    if-eqz v2, :cond_0

    .line 476
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 480
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :goto_8
    const/4 v2, 0x0

    goto :goto_2

    .line 477
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v0

    .line 478
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 474
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_9
    if-eqz v2, :cond_2

    .line 476
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 480
    :goto_a
    const/4 v2, 0x0

    :cond_2
    throw v6

    .line 477
    :catch_7
    move-exception v0

    .line 478
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 485
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #in:Ljava/io/DataInputStream;
    :cond_3
    const-wide/16 v6, 0x1

    goto :goto_3

    .line 474
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_9

    .line 471
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_7

    .line 469
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .line 467
    :catch_a
    move-exception v0

    goto :goto_0
.end method
