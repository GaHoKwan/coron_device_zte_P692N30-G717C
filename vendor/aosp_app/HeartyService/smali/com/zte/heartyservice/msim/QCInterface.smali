.class public Lcom/zte/heartyservice/msim/QCInterface;
.super Ljava/lang/Object;
.source "QCInterface.java"

# interfaces
.implements Lcom/zte/heartyservice/msim/MSInterface;


# static fields
.field private static final SIM_NUM:I = 0x2

.field private static callSubidColumn:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/msim/QCInterface;->callSubidColumn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/msim/QCInterface;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static checkType()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 24
    :try_start_0
    const-string v3, "android.telephony.MSimTelephonyManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    .local v1, mgr:Ljava/lang/Class;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 28
    .end local v1           #mgr:Ljava/lang/Class;
    :cond_0
    :goto_0
    return v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isQrd()Z
    .locals 7

    .prologue
    .line 311
    const/4 v3, 0x0

    .line 313
    .local v3, subId:Ljava/lang/reflect/Field;
    :try_start_0
    const-string v4, "android.provider.CallLog$Calls"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 314
    .local v0, c:Ljava/lang/Class;
    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 315
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    .local v1, col:Ljava/lang/String;
    const-string v4, "sub_id"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    sput-object v1, Lcom/zte/heartyservice/msim/QCInterface;->callSubidColumn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 328
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #col:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuji debug onUpgrade 222 isQrd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 323
    .local v2, e:Ljava/lang/NoSuchFieldException;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuji debug onUpgrade 333 isQrd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 326
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public extendedCallBroadcast()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, extendedAction:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "ACTION_PHONE_STATE_CHANGED_FOR_MI"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method public getCallIdFromSys(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/zte/heartyservice/msim/QCInterface;->isQrd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public getCallSubIdColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/zte/heartyservice/msim/QCInterface;->isQrd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/zte/heartyservice/msim/QCInterface;->callSubidColumn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/zte/heartyservice/msim/QCInterface;->callSubidColumn:Ljava/lang/String;

    .line 278
    :goto_0
    return-object v0

    .line 275
    :cond_0
    const-string v0, "sub_id"

    goto :goto_0

    .line 278
    :cond_1
    const-string v0, "mode_id"

    goto :goto_0
.end method

.method public getCallSubscription(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 240
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallSysId(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/zte/heartyservice/msim/QCInterface;->isQrd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getCalllogColumnDefaultValue()I
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/zte/heartyservice/msim/QCInterface;->isQrd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDataSim()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 209
    const/4 v5, -0x1

    .line 211
    .local v5, ret:I
    const/4 v6, 0x3

    :try_start_0
    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 212
    .local v3, paramTypes:[Ljava/lang/Class;
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zte/heartyservice/msim/QCInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "multi_sim_data_call"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 213
    .local v4, params:[Ljava/lang/Object;
    const-string v6, "android.provider.Settings$Global"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 214
    .local v2, global:Ljava/lang/Class;
    const-string v6, "getInt"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 215
    .local v1, getInt:Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v5

    .line 227
    .end local v1           #getInt:Ljava/lang/reflect/Method;
    .end local v2           #global:Ljava/lang/Class;
    .end local v3           #paramTypes:[Ljava/lang/Class;
    .end local v4           #params:[Ljava/lang/Object;
    :goto_0
    if-ne v5, v8, :cond_0

    .line 228
    iget-object v6, p0, Lcom/zte/heartyservice/msim/QCInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_data_call"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 230
    :cond_0
    return v5

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFirstReadyId()I
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 129
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/msim/QCInterface;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 133
    .end local v0           #i:I
    :goto_1
    return v0

    .line 128
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 11
    .parameter "subscription"

    .prologue
    .line 148
    if-gez p1, :cond_0

    .line 149
    const/4 p1, 0x0

    .line 151
    :cond_0
    const/4 v6, 0x0

    .line 153
    .local v6, ret:Ljava/lang/String;
    :try_start_0
    const-string v7, "android.telephony.MSimTelephonyManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 154
    .local v4, mgrClass:Ljava/lang/Class;
    const-string v7, "getDefault"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    .local v2, getDefault:Ljava/lang/reflect/Method;
    const-string v7, "getSimSerialNumber"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 156
    .local v3, getSimSerialNumber:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 157
    .local v5, mgrObj:Ljava/lang/Object;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 170
    .end local v2           #getDefault:Ljava/lang/reflect/Method;
    .end local v3           #getSimSerialNumber:Ljava/lang/reflect/Method;
    .end local v4           #mgrClass:Ljava/lang/Class;
    .end local v5           #mgrObj:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 10
    .parameter "slotId"

    .prologue
    .line 89
    if-gez p1, :cond_0

    .line 90
    const/4 p1, 0x0

    .line 92
    :cond_0
    const/4 v5, 0x0

    .line 94
    .local v5, ret:I
    :try_start_0
    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 95
    .local v3, mgrClass:Ljava/lang/Class;
    const-string v6, "getDefault"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, getDefault:Ljava/lang/reflect/Method;
    const-string v6, "getSimState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    .local v2, getSimState:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    .local v4, mgrObj:Ljava/lang/Object;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v5

    .line 110
    .end local v1           #getDefault:Ljava/lang/reflect/Method;
    .end local v2           #getSimState:Ljava/lang/reflect/Method;
    .end local v3           #mgrClass:Ljava/lang/Class;
    .end local v4           #mgrObj:Ljava/lang/Object;
    :goto_0
    return v5

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmsColumnDefaultValue()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getSmsIdFromSys(I)I
    .locals 0
    .parameter "id"

    .prologue
    .line 266
    return p1
.end method

.method public getSmsSubIdColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const-string v0, "sub_id"

    return-object v0
.end method

.method public getSmsSubscription(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 235
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSmsSysId(I)I
    .locals 0
    .parameter "subscription"

    .prologue
    .line 253
    return p1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 11
    .parameter "subscription"

    .prologue
    .line 63
    if-gez p1, :cond_0

    .line 64
    const/4 p1, 0x0

    .line 66
    :cond_0
    const/4 v6, 0x0

    .line 68
    .local v6, ret:Ljava/lang/String;
    :try_start_0
    const-string v7, "android.telephony.MSimTelephonyManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 69
    .local v4, mgrClass:Ljava/lang/Class;
    const-string v7, "getDefault"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    .local v2, getDefault:Ljava/lang/reflect/Method;
    const-string v7, "getSubscriberId"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 71
    .local v3, getSubscriberId:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 72
    .local v5, mgrObj:Ljava/lang/Object;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 84
    .end local v2           #getDefault:Ljava/lang/reflect/Method;
    .end local v3           #getSubscriberId:Ljava/lang/reflect/Method;
    .end local v4           #mgrClass:Ljava/lang/Class;
    .end local v5           #mgrObj:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasSimReady()Z
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/msim/QCInterface;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 143
    :goto_1
    return v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAllSimReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/zte/heartyservice/msim/QCInterface;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 117
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/msim/QCInterface;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 123
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 116
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isMultiSim()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 39
    :try_start_0
    const-string v5, "android.telephony.MSimTelephonyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 40
    .local v3, mgrClass:Ljava/lang/Class;
    const-string v5, "getDefault"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, getDefault:Ljava/lang/reflect/Method;
    const-string v5, "isMultiSimEnabled"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 42
    .local v2, isMultiSimEnabled:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, mgrObj:Ljava/lang/Object;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    const/4 v5, 0x1

    .line 58
    .end local v1           #getDefault:Ljava/lang/reflect/Method;
    .end local v2           #isMultiSimEnabled:Ljava/lang/reflect/Method;
    .end local v3           #mgrClass:Ljava/lang/Class;
    .end local v4           #mgrObj:Ljava/lang/Object;
    :goto_0
    return v5

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    move v5, v6

    .line 58
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 51
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public isQCQrdVersion()Z
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/zte/heartyservice/msim/QCInterface;->isQrd()Z

    move-result v0

    return v0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 178
    :try_start_0
    const-string v6, "android.telephony.MSimSmsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 179
    .local v2, mgrClass:Ljava/lang/Class;
    const-string v6, "getDefault"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    .local v1, getDefault:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 181
    .local v3, mgrObj:Ljava/lang/Object;
    const/4 v6, 0x6

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    .line 183
    .local v4, paramTypes:[Ljava/lang/Class;
    const-string v6, "sendTextMessage"

    invoke-virtual {v2, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 184
    .local v5, sendTextMessage:Ljava/lang/reflect/Method;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    const/4 v7, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 187
    const/4 v6, 0x1

    .line 204
    .end local v1           #getDefault:Ljava/lang/reflect/Method;
    .end local v2           #mgrClass:Ljava/lang/Class;
    .end local v3           #mgrObj:Ljava/lang/Object;
    .end local v4           #paramTypes:[Ljava/lang/Class;
    .end local v5           #sendTextMessage:Ljava/lang/reflect/Method;
    :goto_0
    return v6

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 204
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
