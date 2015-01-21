.class Ltmsdkobf/ho;
.super Ltmsdkobf/hq;
.source "SourceFile"


# instance fields
.field private qc:Ljava/lang/String;

.field private qd:I


# direct methods
.method public constructor <init>(Ltmsdkobf/hv;)V
    .locals 6
    .parameter "admin"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ltmsdkobf/hq;-><init>(Ltmsdkobf/hv;)V

    .line 39
    const/4 v3, -0x1

    iput v3, p0, Ltmsdkobf/ho;->qd:I

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/ho;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.mms"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 55
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 56
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Ltmsdkobf/ho;->qd:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActivityManagerDummyServiceStub"

    const-string v4, "skipping get mSmsUid: com.android.mms"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ActivityManagerDummyServiceStub"

    const-string v4, "skipping get mSmsUid"

    invoke-static {v3, v4, v1}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 15
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 85
    move-object/from16 v0, p1

    iget-object v5, v0, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 86
    .local v5, data:Landroid/os/Parcel;
    sget-object v13, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v5, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 88
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 89
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 90
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 91
    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, uri:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 94
    .local v3, cn:Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, targetPkg:Ljava/lang/String;
    if-eqz v11, :cond_0

    iget-object v13, p0, Ltmsdkobf/ho;->qc:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 100
    iput-object v11, p0, Ltmsdkobf/ho;->qc:Ljava/lang/String;

    .line 104
    :try_start_0
    iget-object v13, p0, Ltmsdkobf/ho;->qk:Ltmsdkobf/hv;

    invoke-virtual {v13, v11}, Ltmsdkobf/hv;->bh(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v11           #targetPkg:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    const-string v13, "tel:*2767*3855%23"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 112
    :cond_1
    const/4 v13, 0x2

    .line 133
    :goto_1
    return v13

    .line 105
    .restart local v11       #targetPkg:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 106
    .local v6, e:Landroid/os/RemoteException;
    const-string v13, "ActivityManagerDummyServiceStub"

    const-string v14, "skipping safeNotifyUserOnAppStarted"

    invoke-static {v13, v14, v6}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 115
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v11           #targetPkg:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    iget-object v10, v0, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 116
    .local v10, reply:Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    move-object/from16 v0, p1

    iget v2, v0, Ltmsdkobf/fx;->mo:I

    .line 120
    .local v2, callingUid:I
    invoke-virtual {p0}, Ltmsdkobf/ho;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 121
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 122
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, pkgs:[Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v13, "com.tencent.tmsecure.ACTION_USSD_BLOCKED"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .restart local v7       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v1, bundle:Landroid/os/Bundle;
    const-string v13, "data"

    invoke-virtual {v7, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const-string v13, "uid"

    invoke-virtual {v1, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v13, "pid"

    move-object/from16 v0, p1

    iget v14, v0, Ltmsdkobf/fx;->mo:I

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v13, "pkgs"

    invoke-virtual {v1, v13, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    const/4 v13, 0x1

    goto :goto_1
.end method

.method private e(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 11
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    const/4 v8, 0x2

    .line 139
    iget v9, p0, Ltmsdkobf/ho;->qd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    iget v9, p0, Ltmsdkobf/ho;->qd:I

    iget v10, p1, Ltmsdkobf/fx;->mn:I

    if-ne v9, v10, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v8

    .line 144
    :cond_1
    iget-object v3, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 145
    .local v3, data:Landroid/os/Parcel;
    sget-object v9, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    .line 149
    .local v0, SMS_RECEIVED_ACTION:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 150
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 151
    .local v5, service:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 152
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 154
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, target_pkg:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, target_cls:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, action:Ljava/lang/String;
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "com.android.mms"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "com.android.mms.transaction.SmsReceiverService"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 169
    iget-object v4, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 170
    .local v4, reply:Landroid/os/Parcel;
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #cn:Landroid/content/ComponentName;
    const-string v8, "null.null.null"

    const-string v9, "null"

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v2       #cn:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-static {v2, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 174
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private f(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 5
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 179
    iget-object v0, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 180
    .local v0, data:Landroid/os/Parcel;
    sget-object v2, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, pkg:Ljava/lang/String;
    const-string v2, "com.tencent.qqpimsecure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Ltmsdkobf/fx;->mn:I

    if-nez v2, :cond_0

    .line 187
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v2

    new-instance v3, Ltmsdkobf/ho$1;

    invoke-direct {v3, p0}, Ltmsdkobf/ho$1;-><init>(Ltmsdkobf/ho;)V

    const-string v4, "onNonConfigForceStopPackageThread"

    invoke-virtual {v2, v3, v4}, Ltmsdkobf/ij;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 v2, 0x2

    return v2
.end method


# virtual methods
.method protected a(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 9
    .parameter "inContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iget v1, p1, Ltmsdkobf/fx;->mCode:I

    .line 259
    .local v1, code:I
    iget-object v2, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 260
    .local v2, data:Landroid/os/Parcel;
    sget v7, Ltmsdkobf/gd$a;->mt:I

    if-ne v1, v7, :cond_2

    .line 261
    sget-object v7, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 263
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 264
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 265
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 268
    if-eqz v0, :cond_1

    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.CALL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 269
    :cond_0
    new-instance v3, Ltmsdk/common/module/permission/PermissionRequestInfo;

    .end local v3           #info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iget v7, p1, Ltmsdkobf/fx;->mo:I

    iget v8, p1, Ltmsdkobf/fx;->mn:I

    invoke-direct {v3, v7, v8}, Ltmsdk/common/module/permission/PermissionRequestInfo;-><init>(II)V

    .line 270
    .restart local v3       #info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    const/4 v7, 0x0

    iput v7, v3, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    .line 293
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-object v3

    .line 273
    :cond_2
    sget v7, Ltmsdkobf/gd$a;->ms:I

    if-ne v1, v7, :cond_1

    .line 274
    sget-object v7, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 276
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, name:Ljava/lang/String;
    const/4 v6, -0x1

    .line 279
    .local v6, rid:I
    const-string v7, "contacts"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.contacts"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 280
    :cond_3
    const/4 v6, 0x2

    .line 287
    :cond_4
    :goto_1
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 288
    new-instance v3, Ltmsdk/common/module/permission/PermissionRequestInfo;

    .end local v3           #info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iget v7, p1, Ltmsdkobf/fx;->mo:I

    iget v8, p1, Ltmsdkobf/fx;->mn:I

    invoke-direct {v3, v7, v8}, Ltmsdk/common/module/permission/PermissionRequestInfo;-><init>(II)V

    .line 289
    .restart local v3       #info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iput v6, v3, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    goto :goto_0

    .line 281
    :cond_5
    const-string v7, "call_log"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 282
    const/4 v6, 0x3

    goto :goto_1

    .line 283
    :cond_6
    const-string v7, "sms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "mms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "mms-sms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 284
    :cond_7
    const/4 v6, 0x4

    goto :goto_1
.end method

.method protected c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 2
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 68
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 69
    .local v0, code:I
    invoke-virtual {p0}, Ltmsdkobf/ho;->isAnyRidEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget v1, Ltmsdkobf/gd$a;->mt:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0, p1, p2}, Ltmsdkobf/ho;->d(Ltmsdkobf/fx;Ltmsdkobf/fx;)I

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 72
    :cond_0
    sget v1, Ltmsdkobf/gd$a;->mu:I

    if-ne v0, v1, :cond_2

    .line 73
    invoke-direct {p0, p1, p2}, Ltmsdkobf/ho;->e(Ltmsdkobf/fx;Ltmsdkobf/fx;)I

    move-result v1

    goto :goto_0

    .line 75
    :cond_1
    sget v1, Ltmsdkobf/gd$a;->mv:I

    if-ne v0, v1, :cond_2

    .line 76
    invoke-direct {p0, p1, p2}, Ltmsdkobf/ho;->f(Ltmsdkobf/fx;Ltmsdkobf/fx;)I

    move-result v1

    goto :goto_0

    .line 79
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 8
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    const/4 v6, 0x0

    .line 214
    iget v2, p1, Ltmsdkobf/fx;->mCode:I

    .line 215
    .local v2, code:I
    sget v7, Ltmsdkobf/gd$a;->mt:I

    if-ne v2, v7, :cond_1

    .line 216
    iget-object v4, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 217
    .local v4, reply:Landroid/os/Parcel;
    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v6, 0x1

    .line 251
    .end local v4           #reply:Landroid/os/Parcel;
    :cond_0
    :goto_0
    return v6

    .line 220
    :cond_1
    sget v7, Ltmsdkobf/gd$a;->ms:I

    if-ne v2, v7, :cond_3

    .line 221
    iget-object v3, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 222
    .local v3, data:Landroid/os/Parcel;
    sget-object v7, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 224
    .local v1, b:Landroid/os/IBinder;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 226
    iget-object v0, p2, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 227
    .local v0, altData:Landroid/os/Parcel;
    sget-object v7, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 229
    invoke-virtual {p0}, Ltmsdkobf/ho;->getPermissionTable()Ltmsdk/common/module/permission/PermissionTable;

    move-result-object v7

    invoke-virtual {v7}, Ltmsdk/common/module/permission/PermissionTable;->getDummyDatabaseName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v5

    .line 241
    .local v5, sdkverstion:I
    const/16 v7, 0x10

    if-lt v5, v7, :cond_2

    .line 242
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    :cond_2
    const/16 v7, 0x11

    if-lt v5, v7, :cond_0

    .line 246
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 251
    .end local v0           #altData:Landroid/os/Parcel;
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #data:Landroid/os/Parcel;
    .end local v5           #sdkverstion:I
    :cond_3
    const/4 v6, 0x2

    goto :goto_0
.end method
