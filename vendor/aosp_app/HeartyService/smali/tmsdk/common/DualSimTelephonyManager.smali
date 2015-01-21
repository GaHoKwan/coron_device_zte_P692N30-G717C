.class public Ltmsdk/common/DualSimTelephonyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ig$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/DualSimTelephonyManager$a;
    }
.end annotation


# static fields
.field private static wW:Ltmsdk/common/DualSimTelephonyManager;

.field private static final wX:[Ljava/lang/String;


# instance fields
.field private wY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/DualSimTelephonyManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "phone1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "phone2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "phoneEX"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdk/common/DualSimTelephonyManager;->wX:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltmsdk/common/DualSimTelephonyManager;->wY:Ljava/util/ArrayList;

    .line 52
    invoke-static {p0}, Ltmsdkobf/ig;->a(Ltmsdkobf/ig$a;)V

    .line 53
    return-void
.end method

.method private a(Landroid/telephony/PhoneStateListener;II)Ltmsdk/common/DualSimTelephonyManager$a;
    .locals 4
    .parameter "listener"
    .parameter "events"
    .parameter "simPos"

    .prologue
    const/4 v1, 0x1

    .line 222
    packed-switch p3, :pswitch_data_0

    .line 233
    const/4 v1, 0x0

    .line 239
    :goto_0
    return-object v1

    .line 225
    :pswitch_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 235
    .local v0, m:Landroid/telephony/TelephonyManager;
    :goto_1
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 239
    :cond_0
    new-instance v2, Ltmsdk/common/DualSimTelephonyManager$a;

    if-ne p3, v1, :cond_1

    :goto_2
    invoke-direct {v2, p1, p2, v1, v0}, Ltmsdk/common/DualSimTelephonyManager$a;-><init>(Landroid/telephony/PhoneStateListener;IZLandroid/telephony/TelephonyManager;)V

    move-object v1, v2

    goto :goto_0

    .line 229
    .end local v0           #m:Landroid/telephony/TelephonyManager;
    :pswitch_1
    invoke-virtual {p0}, Ltmsdk/common/DualSimTelephonyManager;->getSecondTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 230
    .restart local v0       #m:Landroid/telephony/TelephonyManager;
    goto :goto_1

    .line 239
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 222
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultTelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 61
    const/4 v5, 0x0

    .line 64
    .local v5, telephony:Lcom/android/internal/telephony/ITelephony;
    sget-object v1, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 65
    .local v1, adapter:Ltmsdkobf/lm;
    if-eqz v1, :cond_0

    .line 66
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ltmsdkobf/lm;->bX(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 67
    if-eqz v5, :cond_0

    .line 103
    .end local v5           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v5

    .line 73
    .restart local v5       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v7, "phone"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 78
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v6, :cond_1

    move-object v5, v8

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    const-class v9, Landroid/telephony/TelephonyManager;

    const-string v10, "getITelephony"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 83
    .local v4, method:Ljava/lang/reflect/Method;
    if-nez v4, :cond_2

    move-object v5, v8

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 91
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 92
    .local v3, e:Ljava/lang/SecurityException;
    const-string v7, "DualSimTelephonyManager"

    const-string v8, "getDefaultTelephony"

    invoke-static {v7, v8, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 94
    .local v3, e:Ljava/lang/NoSuchMethodException;
    const-string v7, "DualSimTelephonyManager"

    const-string v8, "getDefaultTelephony"

    invoke-static {v7, v8, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 96
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "DualSimTelephonyManager"

    const-string v8, "getDefaultTelephony"

    invoke-static {v7, v8, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 98
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v7, "DualSimTelephonyManager"

    const-string v8, "getDefaultTelephony"

    invoke-static {v7, v8, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 100
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "DualSimTelephonyManager"

    const-string v8, "getDefaultTelephony"

    invoke-static {v7, v8, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Ltmsdk/common/DualSimTelephonyManager;
    .locals 2

    .prologue
    .line 42
    const-class v1, Ltmsdk/common/DualSimTelephonyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/common/DualSimTelephonyManager;->wW:Ltmsdk/common/DualSimTelephonyManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ltmsdk/common/DualSimTelephonyManager;

    invoke-direct {v0}, Ltmsdk/common/DualSimTelephonyManager;-><init>()V

    sput-object v0, Ltmsdk/common/DualSimTelephonyManager;->wW:Ltmsdk/common/DualSimTelephonyManager;

    .line 45
    :cond_0
    sget-object v0, Ltmsdk/common/DualSimTelephonyManager;->wW:Ltmsdk/common/DualSimTelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSecondTelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 8

    .prologue
    .line 112
    const/4 v6, 0x0

    .line 115
    .local v6, telephony:Lcom/android/internal/telephony/ITelephony;
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 116
    .local v0, adapter:Ltmsdkobf/lm;
    if-eqz v0, :cond_0

    .line 117
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Ltmsdkobf/lm;->bX(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_0

    .line 134
    .end local v6           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v6

    .line 124
    .restart local v6       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    sget-object v1, Ltmsdk/common/DualSimTelephonyManager;->wX:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 125
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Ltmsdkobf/ki;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 126
    .local v2, binder:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 127
    invoke-static {v5}, Ltmsdkobf/ki;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    goto :goto_0

    .line 124
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSecondTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 8

    .prologue
    .line 139
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 140
    .local v0, adapter:Ltmsdkobf/lm;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Ltmsdkobf/lm;->gu()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, phone:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 143
    invoke-static {v6}, Ltmsdkobf/ki;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 144
    .local v2, binder:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 145
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 156
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v6           #phone:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 150
    :cond_0
    sget-object v1, Ltmsdk/common/DualSimTelephonyManager;->wX:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 151
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Ltmsdkobf/ki;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 152
    .restart local v2       #binder:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 153
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 150
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public handleSdkContextEvent(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 161
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Ltmsdk/common/DualSimTelephonyManager;->reListenPhoneState()V

    .line 164
    :cond_0
    return-void
.end method

.method public listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z
    .locals 8
    .parameter "simPos"
    .parameter "listener"
    .parameter "events"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 187
    invoke-direct {p0, p2, p3, p1}, Ltmsdk/common/DualSimTelephonyManager;->a(Landroid/telephony/PhoneStateListener;II)Ltmsdk/common/DualSimTelephonyManager$a;

    move-result-object v3

    .line 188
    .local v3, newInfo:Ltmsdk/common/DualSimTelephonyManager$a;
    if-nez v3, :cond_0

    .line 217
    :goto_0
    return v4

    .line 193
    :cond_0
    iget-object v6, p0, Ltmsdk/common/DualSimTelephonyManager;->wY:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 194
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdk/common/DualSimTelephonyManager$a;>;"
    const/4 v0, 0x0

    .line 195
    .local v0, found:Z
    const/4 v1, 0x0

    .line 196
    .local v1, info:Ltmsdk/common/DualSimTelephonyManager$a;
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Ltmsdk/common/DualSimTelephonyManager$a;
    check-cast v1, Ltmsdk/common/DualSimTelephonyManager$a;

    .line 198
    .restart local v1       #info:Ltmsdk/common/DualSimTelephonyManager$a;
    iget-boolean v7, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xb:Z

    if-ne p1, v5, :cond_2

    move v6, v5

    :goto_2
    if-ne v7, v6, :cond_1

    iget-object v6, v1, Ltmsdk/common/DualSimTelephonyManager$a;->wZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p2, :cond_1

    .line 200
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v6, v4

    .line 198
    goto :goto_2

    .line 204
    :cond_3
    if-eqz v0, :cond_6

    .line 205
    if-nez p3, :cond_5

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_4
    :goto_3
    move v4, v5

    .line 217
    goto :goto_0

    .line 210
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xa:I

    goto :goto_3

    .line 212
    :cond_6
    if-eqz p3, :cond_4

    .line 214
    iget-object v4, p0, Ltmsdk/common/DualSimTelephonyManager;->wY:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public reListenPhoneState()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 246
    iget-object v4, p0, Ltmsdk/common/DualSimTelephonyManager;->wY:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/DualSimTelephonyManager$a;

    .line 247
    .local v1, info:Ltmsdk/common/DualSimTelephonyManager$a;
    iget-object v4, v1, Ltmsdk/common/DualSimTelephonyManager$a;->wZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    .line 248
    .local v2, listener:Landroid/telephony/PhoneStateListener;
    if-eqz v2, :cond_0

    .line 252
    iget-object v4, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xc:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xc:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 256
    :cond_1
    iget v6, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xa:I

    iget-boolean v4, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xb:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-direct {p0, v2, v6, v4}, Ltmsdk/common/DualSimTelephonyManager;->a(Landroid/telephony/PhoneStateListener;II)Ltmsdk/common/DualSimTelephonyManager$a;

    move-result-object v3

    .line 257
    .local v3, newInfo:Ltmsdk/common/DualSimTelephonyManager$a;
    if-eqz v3, :cond_0

    .line 258
    iget-object v4, v3, Ltmsdk/common/DualSimTelephonyManager$a;->xc:Landroid/telephony/TelephonyManager;

    iput-object v4, v1, Ltmsdk/common/DualSimTelephonyManager$a;->xc:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 256
    .end local v3           #newInfo:Ltmsdk/common/DualSimTelephonyManager$a;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 261
    .end local v1           #info:Ltmsdk/common/DualSimTelephonyManager$a;
    .end local v2           #listener:Landroid/telephony/PhoneStateListener;
    :cond_3
    return-void
.end method
