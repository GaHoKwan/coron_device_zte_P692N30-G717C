.class abstract Ltmsdkobf/hq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected qk:Ltmsdkobf/hv;


# direct methods
.method protected constructor <init>(Ltmsdkobf/hv;)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    .line 28
    return-void
.end method

.method protected static a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 1
    .parameter "context"
    .parameter "rid"

    .prologue
    .line 100
    invoke-static {p0}, Ltmsdkobf/hq;->b(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    .line 101
    .local v0, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iput p1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    .line 102
    return-object v0
.end method

.method protected static b(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    new-instance v0, Ltmsdk/common/module/permission/PermissionRequestInfo;

    iget v1, p0, Ltmsdkobf/fx;->mo:I

    iget v2, p0, Ltmsdkobf/fx;->mn:I

    invoke-direct {v0, v1, v2}, Ltmsdk/common/module/permission/PermissionRequestInfo;-><init>(II)V

    .line 94
    .local v0, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iget v1, p0, Ltmsdkobf/fx;->mo:I

    iput v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mPid:I

    .line 95
    iget v1, p0, Ltmsdkobf/fx;->mn:I

    iput v1, v0, Ltmsdk/common/module/permission/PermissionRequestInfo;->mUid:I

    .line 96
    return-object v0
.end method

.method private cm()Ltmsdk/bg/module/permission/IUserDummyServiceCallback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    iget-object v0, v0, Ltmsdkobf/hv;->qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

    return-object v0
.end method

.method private h(Ltmsdkobf/fx;Ltmsdkobf/fx;)Z
    .locals 10
    .parameter "inContext"
    .parameter "outContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p0}, Ltmsdkobf/hq;->getPermissionTable()Ltmsdk/common/module/permission/PermissionTable;

    move-result-object v2

    .line 149
    .local v2, permissionTable:Ltmsdk/common/module/permission/PermissionTable;
    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 156
    :cond_1
    invoke-direct {p0}, Ltmsdkobf/hq;->cm()Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

    move-result-object v5

    .line 157
    .local v5, userCallback:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;
    if-eqz v5, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Ltmsdkobf/hq;->a(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v3

    .line 166
    .local v3, requestInfo:Ltmsdk/common/module/permission/PermissionRequestInfo;
    if-eqz v3, :cond_0

    .line 174
    iget v8, v3, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {p0, v8}, Ltmsdkobf/hq;->isRidEnable(I)Z

    move-result v4

    .line 178
    .local v4, ridEnabled:Z
    if-eqz v4, :cond_0

    .line 183
    iget v8, p1, Ltmsdkobf/fx;->mn:I

    iget v9, v3, Ltmsdk/common/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {v2, v8, v9}, Ltmsdk/common/module/permission/PermissionTable;->getValue(II)I

    move-result v1

    .line 185
    .local v1, expectedMode:I
    iput v1, v3, Ltmsdk/common/module/permission/PermissionRequestInfo;->mValue:I

    .line 187
    const/4 v0, -0x1

    .line 189
    .local v0, actualMode:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_2

    .line 190
    iget-object v8, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    invoke-virtual {v8, v3}, Ltmsdkobf/hv;->a(Ltmsdk/common/module/permission/PermissionRequestInfo;)I

    move-result v0

    .line 196
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v7, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    invoke-virtual {v7, v3}, Ltmsdkobf/hv;->b(Ltmsdk/common/module/permission/PermissionRequestInfo;)V

    goto :goto_0

    .line 192
    :cond_2
    move v0, v1

    goto :goto_1

    .line 202
    :pswitch_2
    iget-object v6, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    invoke-virtual {v6, v3}, Ltmsdkobf/hv;->c(Ltmsdk/common/module/permission/PermissionRequestInfo;)V

    move v6, v7

    .line 203
    goto :goto_0

    .line 206
    :pswitch_3
    if-eqz v0, :cond_0

    move v6, v7

    .line 210
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method b(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 11
    .parameter "inContext"
    .parameter "outContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 109
    .local v5, startTime:J
    :try_start_0
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Ltmsdkobf/hq;->ck()V

    .line 112
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/hq;->c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 113
    .local v4, r:I
    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    .line 130
    invoke-virtual {p0}, Ltmsdkobf/hq;->cl()V

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v5

    .line 132
    .local v0, elapsed:J
    const-wide/16 v7, 0x3e8

    cmp-long v7, v0, v7

    if-gez v7, :cond_0

    .line 133
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .end local v4           #r:I
    :goto_0
    return v4

    .line 134
    .restart local v4       #r:I
    :cond_0
    const-wide/16 v7, 0x1388

    cmp-long v7, v0, v7

    if-gez v7, :cond_1

    .line 135
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_1
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    .end local v0           #elapsed:J
    :cond_2
    const/4 v7, 0x4

    :try_start_1
    new-array v3, v7, [Landroid/os/Parcel;

    const/4 v7, 0x0

    iget-object v8, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    iget-object v8, p1, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    aput-object v8, v3, v7

    const/4 v7, 0x2

    iget-object v8, p2, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    aput-object v8, v3, v7

    const/4 v7, 0x3

    iget-object v8, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    aput-object v8, v3, v7

    .line 118
    .local v3, parcels:[Landroid/os/Parcel;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_3

    .line 119
    aget-object v7, v3, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-direct {p0, p1, p2}, Ltmsdkobf/hq;->h(Ltmsdkobf/fx;Ltmsdkobf/fx;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 123
    const/4 v2, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v2, v7, :cond_4

    .line 124
    aget-object v7, v3, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/hq;->g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 130
    .end local v4           #r:I
    invoke-virtual {p0}, Ltmsdkobf/hq;->cl()V

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v5

    .line 132
    .restart local v0       #elapsed:J
    const-wide/16 v7, 0x3e8

    cmp-long v7, v0, v7

    if-gez v7, :cond_5

    .line 133
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 134
    :cond_5
    const-wide/16 v7, 0x1388

    cmp-long v7, v0, v7

    if-gez v7, :cond_6

    .line 135
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 128
    .end local v0           #elapsed:J
    .restart local v4       #r:I
    :cond_7
    const/4 v4, 0x2

    .line 130
    .end local v4           #r:I
    invoke-virtual {p0}, Ltmsdkobf/hq;->cl()V

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v5

    .line 132
    .restart local v0       #elapsed:J
    const-wide/16 v7, 0x3e8

    cmp-long v7, v0, v7

    if-gez v7, :cond_8

    .line 133
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    const-wide/16 v7, 0x1388

    cmp-long v7, v0, v7

    if-gez v7, :cond_9

    .line 135
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 137
    :cond_9
    const-string v7, "DummyServiceStub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallback() service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 130
    .end local v0           #elapsed:J
    .end local v2           #i:I
    .end local v3           #parcels:[Landroid/os/Parcel;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Ltmsdkobf/hq;->cl()V

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v5

    .line 132
    .restart local v0       #elapsed:J
    const-wide/16 v8, 0x3e8

    cmp-long v8, v0, v8

    if-gez v8, :cond_a

    .line 133
    const-string v8, "DummyServiceStub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallback() service = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " elapsed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :goto_3
    throw v7

    .line 134
    :cond_a
    const-wide/16 v8, 0x1388

    cmp-long v8, v0, v8

    if-gez v8, :cond_b

    .line 135
    const-string v8, "DummyServiceStub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallback() service = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " elapsed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 137
    :cond_b
    const-string v8, "DummyServiceStub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallback() service = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Ltmsdkobf/fx;->mp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Ltmsdkobf/fx;->mCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " elapsed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected abstract c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
.end method

.method protected ck()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    invoke-virtual {v0}, Ltmsdkobf/hv;->ck()V

    .line 32
    return-void
.end method

.method protected cl()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    invoke-virtual {v0}, Ltmsdkobf/hv;->cl()V

    .line 36
    return-void
.end method

.method protected abstract g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    iget-object v0, v0, Ltmsdkobf/hv;->qz:Ltmsdkobf/hu;

    iget-object v0, v0, Ltmsdkobf/hu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getPermissionTable()Ltmsdk/common/module/permission/PermissionTable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    iget-object v0, v0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    return-object v0
.end method

.method protected isAnyRidEnable()Z
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    iget-object v0, v1, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    .line 61
    .local v0, ridEnableList:Ltmsdk/common/module/permission/RidEnableList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltmsdk/common/module/permission/RidEnableList;->isAnyRidEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isRidEnable(I)Z
    .locals 2
    .parameter "rid"

    .prologue
    .line 55
    iget-object v1, p0, Ltmsdkobf/hq;->qk:Ltmsdkobf/hv;

    iget-object v0, v1, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    .line 56
    .local v0, ridEnableList:Ltmsdk/common/module/permission/RidEnableList;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ltmsdk/common/module/permission/RidEnableList;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
