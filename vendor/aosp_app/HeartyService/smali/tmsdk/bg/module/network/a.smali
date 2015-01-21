.class final Ltmsdk/bg/module/network/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private uK:Ltmsdkobf/jg;

.field private uL:Ltmsdk/bg/module/network/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/bg/module/network/a;->mContext:Landroid/content/Context;

    .line 37
    iget-object v1, p0, Ltmsdk/bg/module/network/a;->mContext:Landroid/content/Context;

    const-string v2, "traffic_xml"

    invoke-static {v1, v2}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    .line 38
    new-instance v1, Ltmsdk/bg/module/network/k;

    invoke-direct {v1}, Ltmsdk/bg/module/network/k;-><init>()V

    iput-object v1, p0, Ltmsdk/bg/module/network/a;->uL:Ltmsdk/bg/module/network/k;

    .line 41
    const-class v1, Ltmsdkobf/lb;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lb;

    .line 42
    .local v0, manager:Ltmsdkobf/lb;
    new-instance v1, Ltmsdk/bg/module/network/a$1;

    invoke-direct {v1, p0}, Ltmsdk/bg/module/network/a$1;-><init>(Ltmsdk/bg/module/network/a;)V

    invoke-virtual {v0, v1}, Ltmsdkobf/lb;->a(Ltmsdkobf/la;)Ltmsdkobf/la;

    .line 64
    return-void
.end method

.method private bP(Ljava/lang/String;)I
    .locals 5
    .parameter "pkg"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/module/network/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    .local v2, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, p1, v3, v4}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    return v3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "pkg"
    .parameter "lastconntectiontype"

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p1}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v9

    .line 122
    .local v9, entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-direct/range {p0 .. p1}, Ltmsdk/bg/module/network/a;->bP(Ljava/lang/String;)I

    move-result v11

    .line 123
    .local v11, uid:I
    const/4 v10, 0x0

    .line 125
    .local v10, isfirst:Z
    if-nez v9, :cond_0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 126
    new-instance v9, Ltmsdk/common/module/network/TrafficEntity;

    .end local v9           #entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-direct {v9}, Ltmsdk/common/module/network/TrafficEntity;-><init>()V

    .line 127
    .restart local v9       #entity:Ltmsdk/common/module/network/TrafficEntity;
    move-object/from16 v0, p1

    iput-object v0, v9, Ltmsdk/common/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    .line 128
    const/4 v10, 0x1

    .line 131
    :cond_0
    if-eqz v9, :cond_a

    .line 132
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    const-string v13, "last_connection_type"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Ltmsdk/bg/module/network/a;->uL:Ltmsdk/bg/module/network/k;

    invoke-virtual {v12, v11}, Ltmsdk/bg/module/network/k;->getUidTxBytes(I)J

    move-result-wide v3

    .line 134
    .local v3, current_upvalue:J
    move-object/from16 v0, p0

    iget-object v12, v0, Ltmsdk/bg/module/network/a;->uL:Ltmsdk/bg/module/network/k;

    invoke-virtual {v12, v11}, Ltmsdk/bg/module/network/k;->getUidRxBytes(I)J

    move-result-wide v1

    .line 138
    .local v1, current_donwvalue:J
    if-eqz v10, :cond_2

    .line 139
    iput-wide v1, v9, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    .line 140
    iput-wide v3, v9, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    .line 144
    :cond_2
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-nez v12, :cond_4

    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_3

    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 145
    :cond_3
    const-wide/16 v3, 0x0

    .line 149
    :cond_4
    const-wide/16 v12, -0x1

    cmp-long v12, v1, v12

    if-nez v12, :cond_6

    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_5

    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    .line 150
    :cond_5
    const-wide/16 v1, 0x0

    .line 153
    :cond_6
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    sub-long v7, v3, v12

    .line 154
    .local v7, deltal_upvalue:J
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    sub-long v5, v1, v12

    .line 157
    .local v5, deltal_donwvalue:J
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-gez v12, :cond_7

    move-wide v7, v3

    .line 158
    :cond_7
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-gez v12, :cond_8

    move-wide v5, v3

    .line 160
    :cond_8
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-nez v12, :cond_b

    const-wide/16 v12, -0x1

    cmp-long v12, v1, v12

    if-nez v12, :cond_b

    .line 161
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 162
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    .line 163
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    .line 164
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    .line 193
    :cond_9
    :goto_0
    iput-wide v3, v9, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    .line 194
    iput-wide v1, v9, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    invoke-virtual {v9}, Ltmsdk/common/module/network/TrafficEntity;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    .end local v1           #current_donwvalue:J
    .end local v3           #current_upvalue:J
    .end local v5           #deltal_donwvalue:J
    .end local v7           #deltal_upvalue:J
    :cond_a
    return-void

    .line 165
    .restart local v1       #current_donwvalue:J
    .restart local v3       #current_upvalue:J
    .restart local v5       #deltal_donwvalue:J
    .restart local v7       #deltal_upvalue:J
    :cond_b
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-nez v12, :cond_d

    const-wide/16 v12, -0x1

    cmp-long v12, v1, v12

    if-eqz v12, :cond_d

    .line 166
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    .line 167
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    .line 168
    const-string v12, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 169
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    add-long/2addr v12, v5

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    goto :goto_0

    .line 170
    :cond_c
    const-string v12, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 171
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    add-long/2addr v12, v5

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    goto :goto_0

    .line 174
    :cond_d
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-eqz v12, :cond_f

    const-wide/16 v12, -0x1

    cmp-long v12, v1, v12

    if-nez v12, :cond_f

    .line 175
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 176
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    .line 177
    const-string v12, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 178
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    add-long/2addr v12, v7

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    goto :goto_0

    .line 179
    :cond_e
    const-string v12, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 180
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    add-long/2addr v12, v7

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    goto :goto_0

    .line 184
    :cond_f
    const-string v12, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 185
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    add-long/2addr v12, v5

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 186
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    add-long/2addr v12, v7

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    goto/16 :goto_0

    .line 187
    :cond_10
    const-string v12, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 188
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    add-long/2addr v12, v5

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    .line 189
    iget-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    add-long/2addr v12, v7

    iput-wide v12, v9, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    goto/16 :goto_0
.end method


# virtual methods
.method public clearTrafficInfo([Ljava/lang/String;)V
    .locals 10
    .parameter "pkgs"

    .prologue
    const-wide/16 v8, 0x0

    .line 267
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 268
    .local v4, pkg:Ljava/lang/String;
    invoke-direct {p0, v4}, Ltmsdk/bg/module/network/a;->bP(Ljava/lang/String;)I

    move-result v5

    .line 269
    .local v5, uid:I
    invoke-virtual {p0, v4}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v1

    .line 270
    .local v1, entity:Ltmsdk/common/module/network/TrafficEntity;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v1, :cond_0

    .line 271
    iget-object v6, p0, Ltmsdk/bg/module/network/a;->uL:Ltmsdk/bg/module/network/k;

    invoke-virtual {v6, v5}, Ltmsdk/bg/module/network/k;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v1, Ltmsdk/common/module/network/TrafficEntity;->mLastUpValue:J

    .line 272
    iget-object v6, p0, Ltmsdk/bg/module/network/a;->uL:Ltmsdk/bg/module/network/k;

    invoke-virtual {v6, v5}, Ltmsdk/bg/module/network/k;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v1, Ltmsdk/common/module/network/TrafficEntity;->mLastDownValue:J

    .line 274
    iput-wide v8, v1, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    .line 275
    iput-wide v8, v1, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    .line 276
    iput-wide v8, v1, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    .line 277
    iput-wide v8, v1, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    .line 279
    iget-object v6, p0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    invoke-virtual {v1}, Ltmsdk/common/module/network/TrafficEntity;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_0
    iget-object v6, p0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    const-string v7, "EMPTY"

    invoke-interface {v6, v4, v7}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 284
    .end local v1           #entity:Ltmsdk/common/module/network/TrafficEntity;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #uid:I
    :cond_1
    return-void
.end method

.method public getMobileRxBytes(Ljava/lang/String;)J
    .locals 3
    .parameter "pkg"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    .line 236
    .local v0, entity:Ltmsdk/common/module/network/TrafficEntity;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mMobileDownValue:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getMobileTxBytes(Ljava/lang/String;)J
    .locals 3
    .parameter "pkg"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    .line 245
    .local v0, entity:Ltmsdk/common/module/network/TrafficEntity;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mMobileUpValue:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;
    .locals 5
    .parameter "pkg"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, entity:Ltmsdk/common/module/network/TrafficEntity;
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/a;->bP(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, uid:I
    iget-object v3, p0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, value:Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "EMPTY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-static {v2}, Ltmsdk/common/module/network/TrafficEntity;->fromString(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0
.end method

.method public getWIFIRxBytes(Ljava/lang/String;)J
    .locals 3
    .parameter "pkg"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    .line 254
    .local v0, entity:Ltmsdk/common/module/network/TrafficEntity;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIDownValue:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getWIFITxBytes(Ljava/lang/String;)J
    .locals 3
    .parameter "pkg"

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    .line 263
    .local v0, entity:Ltmsdk/common/module/network/TrafficEntity;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Ltmsdk/common/module/network/TrafficEntity;->mWIFIUpValue:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public isSupportTrafficState()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltmsdk/bg/module/network/a;->uL:Ltmsdk/bg/module/network/k;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/k;->isSupportTrafficState()Z

    move-result v0

    return v0
.end method

.method public refreshTrafficInfo([Ljava/lang/String;Z)V
    .locals 8
    .parameter "pkgs"
    .parameter "enforced"

    .prologue
    .line 203
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v4

    .line 205
    .local v4, type:Ltmsdkobf/t;
    sget-object v5, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    if-ne v4, v5, :cond_1

    .line 206
    const-string v3, "wifi"

    .line 212
    .local v3, nowType:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    const-string v6, "last_connection_type"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, last_type:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 214
    move-object v2, v3

    .line 222
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 223
    aget-object v5, p1, v1

    invoke-direct {p0, v5, v2}, Ltmsdk/bg/module/network/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    .end local v1           #i:I
    .end local v2           #last_type:Ljava/lang/String;
    .end local v3           #nowType:Ljava/lang/String;
    :cond_1
    sget-object v5, Ltmsdkobf/t;->aY:Ltmsdkobf/t;

    if-ne v4, v5, :cond_2

    .line 208
    const-string v3, "none"

    .restart local v3       #nowType:Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v3           #nowType:Ljava/lang/String;
    :cond_2
    const-string v3, "mobile"

    .restart local v3       #nowType:Ljava/lang/String;
    goto :goto_0

    .line 216
    .restart local v2       #last_type:Ljava/lang/String;
    :cond_3
    move-object v0, v3

    .line 217
    .local v0, current_connectiontype:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    .line 228
    .end local v0           #current_connectiontype:Ljava/lang/String;
    :goto_2
    return-void

    .line 226
    .restart local v1       #i:I
    :cond_4
    move-object v2, v3

    .line 227
    iget-object v5, p0, Ltmsdk/bg/module/network/a;->uK:Ltmsdkobf/jg;

    const-string v6, "last_connection_type"

    invoke-interface {v5, v6, v2}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method
