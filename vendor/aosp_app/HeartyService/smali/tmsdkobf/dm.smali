.class public final Ltmsdkobf/dm;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Z

.field private jP:Ljava/lang/String;

.field private jQ:Ljava/lang/String;

.field private jR:[B

.field private jS:Z

.field private jT:Z

.field private jU:[B

.field private jV:Ljava/lang/String;

.field private jW:Ltmsdkobf/do;

.field private jX:Ltmsdkobf/dj;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/do;)V
    .locals 1
    .parameter "isGetOrPost"
    .parameter "url"
    .parameter "userAgent"
    .parameter "postData"
    .parameter "retry"
    .parameter "keepAlive"
    .parameter "callbacker"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    iput-boolean p1, p0, Ltmsdkobf/dm;->a:Z

    .line 83
    iput-object p2, p0, Ltmsdkobf/dm;->jP:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Ltmsdkobf/dm;->jQ:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Ltmsdkobf/dm;->jR:[B

    .line 86
    iput-boolean p5, p0, Ltmsdkobf/dm;->jS:Z

    .line 87
    iput-boolean p6, p0, Ltmsdkobf/dm;->jT:Z

    .line 88
    iput-object p7, p0, Ltmsdkobf/dm;->jW:Ltmsdkobf/do;

    .line 89
    new-instance v0, Ltmsdkobf/dj;

    invoke-direct {v0}, Ltmsdkobf/dj;-><init>()V

    iput-object v0, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 90
    return-void
.end method

.method private as(Ljava/lang/String;)Z
    .locals 16
    .parameter "url"

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, host:Ljava/lang/String;
    invoke-static {}, Ltmsdkobf/dt;->T()Ltmsdkobf/dt;

    move-result-object v1

    invoke-virtual {v1, v12}, Ltmsdkobf/dt;->au(Ljava/lang/String;)Ltmsdkobf/dq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 133
    .local v11, dnsIpList:Ltmsdkobf/dq;
    iget-boolean v1, v11, Ltmsdkobf/dq;->a:Z

    if-nez v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 182
    .end local v11           #dnsIpList:Ltmsdkobf/dq;
    .end local v12           #host:Ljava/lang/String;
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    .restart local v11       #dnsIpList:Ltmsdkobf/dq;
    .restart local v12       #host:Ljava/lang/String;
    :cond_0
    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 137
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 141
    :cond_2
    const/4 v15, 0x0

    .line 142
    .local v15, retryTimes:I
    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ltmsdkobf/dm;->a:Z

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Ltmsdkobf/dm;->jQ:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ltmsdkobf/dm;->jR:[B

    move-object/from16 v0, p0

    iget-boolean v8, v0, Ltmsdkobf/dm;->jT:Z

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    move-object/from16 v4, p1

    .line 176
    invoke-static/range {v3 .. v10}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;

    move-result-object v14

    .line 178
    .local v14, response:Ltmsdkobf/dx;
    iget-object v1, v14, Ltmsdkobf/dx;->jR:[B

    move-object/from16 v0, p0

    iput-object v1, v0, Ltmsdkobf/dm;->jU:[B

    .line 179
    iget-object v1, v14, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Ltmsdkobf/dm;->jV:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 180
    const/4 v1, 0x1

    goto :goto_0

    .line 142
    .end local v14           #response:Ltmsdkobf/dx;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 143
    .local v13, ip:Ljava/lang/String;
    iget-object v1, v11, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, tmpurl:Ljava/lang/String;
    invoke-static {v2}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 147
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltmsdkobf/dm;->a:Z

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdkobf/dm;->jQ:Ljava/lang/String;

    iget-object v4, v11, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltmsdkobf/dm;->jR:[B

    .line 149
    move-object/from16 v0, p0

    iget-boolean v6, v0, Ltmsdkobf/dm;->jT:Z

    if-eqz v15, :cond_4

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 147
    invoke-static/range {v1 .. v8}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;

    move-result-object v14

    .line 150
    .restart local v14       #response:Ltmsdkobf/dx;
    iget-object v1, v14, Ltmsdkobf/dx;->jR:[B

    move-object/from16 v0, p0

    iput-object v1, v0, Ltmsdkobf/dm;->jU:[B

    .line 151
    iget-object v1, v14, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Ltmsdkobf/dm;->jV:Ljava/lang/String;
    :try_end_2
    .catch Ltmsdkobf/dn; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 149
    .end local v14           #response:Ltmsdkobf/dx;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 154
    :catch_1
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 156
    :catch_2
    move-exception v1

    move-object/from16 v0, p0

    iget-object v1, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 157
    :cond_5
    :try_start_3
    invoke-static {}, Ltmsdkobf/dv;->X()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 168
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 164
    :catch_3
    move-exception v1

    .line 165
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    goto :goto_3

    .line 168
    :catchall_0
    move-exception p1

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 168
    throw p1

    .line 182
    .end local v2           #tmpurl:Ljava/lang/String;
    .end local v13           #ip:Ljava/lang/String;
    :catch_4
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private at(Ljava/lang/String;)Z
    .locals 13
    .parameter "url"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 191
    move-object v1, p1

    .line 192
    .local v1, tmpUrl:Ljava/lang/String;
    invoke-static {}, Ltmsdkobf/dv;->Z()I

    move-result v8

    .line 193
    .local v8, checkTimes:I
    const/4 v10, 0x0

    .line 196
    .local v10, retryTimes:I
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/dm;->a:Z

    .line 197
    iget-object v2, p0, Ltmsdkobf/dm;->jQ:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ltmsdkobf/dm;->jR:[B

    iget-boolean v5, p0, Ltmsdkobf/dm;->jT:Z

    .line 198
    if-eqz v10, :cond_0

    move v6, v11

    :goto_1
    iget-object v7, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 196
    invoke-static/range {v0 .. v7}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;

    move-result-object v9

    .line 199
    .local v9, response:Ltmsdkobf/dx;
    iget-object v0, v9, Ltmsdkobf/dx;->jR:[B

    iput-object v0, p0, Ltmsdkobf/dm;->jU:[B

    .line 200
    iget-object v0, v9, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    iput-object v0, p0, Ltmsdkobf/dm;->jV:Ljava/lang/String;
    :try_end_0
    .catch Ltmsdkobf/dn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v11

    .line 207
    .end local v9           #response:Ltmsdkobf/dx;
    :goto_2
    return v0

    :cond_0
    move v6, v12

    .line 198
    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    move v0, v12

    goto :goto_2

    .line 205
    :catch_1
    move-exception v0

    add-int/lit8 v10, v10, 0x1

    .line 206
    iget-boolean v0, p0, Ltmsdkobf/dm;->jS:Z

    if-eqz v0, :cond_1

    if-gt v10, v8, :cond_1

    iget-object v0, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 211
    :try_start_1
    invoke-static {}, Ltmsdkobf/dv;->X()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    iget-object v0, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    goto :goto_0

    :cond_1
    move v0, v12

    .line 207
    goto :goto_2

    .line 212
    :catch_2
    move-exception v0

    .line 213
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    iget-object v0, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    .line 215
    iget-object v0, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 216
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 99
    iget-boolean v1, p0, Ltmsdkobf/dm;->jS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltmsdkobf/dm;->jP:Ljava/lang/String;

    invoke-static {v1}, Ltmsdkobf/dw;->as(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Ltmsdkobf/dm;->jP:Ljava/lang/String;

    invoke-direct {p0, v1}, Ltmsdkobf/dm;->as(Ljava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, isResultOK:Z
    :goto_0
    iget-object v1, p0, Ltmsdkobf/dm;->jW:Ltmsdkobf/do;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdkobf/dm;->jX:Ltmsdkobf/dj;

    .line 109
    :try_start_0
    iget-object v1, p0, Ltmsdkobf/dm;->jW:Ltmsdkobf/do;

    iget-object v2, p0, Ltmsdkobf/dm;->jU:[B

    iget-object v3, p0, Ltmsdkobf/dm;->jV:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Ltmsdkobf/do;->a(Z[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_1
    return-void

    .line 103
    .end local v0           #isResultOK:Z
    :cond_1
    iget-object v1, p0, Ltmsdkobf/dm;->jP:Ljava/lang/String;

    invoke-direct {p0, v1}, Ltmsdkobf/dm;->at(Ljava/lang/String;)Z

    move-result v0

    .restart local v0       #isResultOK:Z
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
