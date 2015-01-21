.class public Ltmsdkobf/jz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "http://uploadserver.3g.qq.com/upload_v3"

    iput-object v0, p0, Ltmsdkobf/jz;->mUrl:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Ltmsdkobf/jz;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;JII)[B
    .locals 3
    .parameter "fileId"
    .parameter "pos"
    .parameter "size"
    .parameter "md5FileDataLen"

    .prologue
    .line 179
    new-instance v0, Ltmsdkobf/cr;

    invoke-direct {v0}, Ltmsdkobf/cr;-><init>()V

    .line 180
    .local v0, req:Ltmsdkobf/cr;
    invoke-virtual {v0, p1}, Ltmsdkobf/cr;->ak(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p2, p3}, Ltmsdkobf/cr;->a(J)V

    .line 182
    invoke-virtual {v0, p4}, Ltmsdkobf/cr;->ao(I)V

    .line 183
    const-string v2, "MD5"

    invoke-virtual {v0, v2}, Ltmsdkobf/cr;->al(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p5}, Ltmsdkobf/cr;->ap(I)V

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltmsdkobf/cr;->aq(I)V

    .line 194
    new-instance v1, Ltmsdkobf/cx;

    invoke-direct {v1}, Ltmsdkobf/cx;-><init>()V

    .line 195
    .local v1, unipacket:Ltmsdkobf/cx;
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ltmsdkobf/cx;->an(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ltmsdkobf/cx;->G()V

    .line 197
    const-string v2, "key_UploadPacketInfoReq"

    invoke-virtual {v1, v2, v0}, Ltmsdkobf/cx;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v1}, Ltmsdkobf/cx;->F()[B

    move-result-object v2

    return-object v2
.end method

.method private a(Ljava/lang/String;JI[B)[B
    .locals 14
    .parameter "fileId"
    .parameter "pos"
    .parameter "size"
    .parameter "fileData"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    if-nez v1, :cond_1

    .line 146
    :cond_0
    const/4 v8, 0x0

    .line 166
    :goto_0
    return-object v8

    .line 149
    :cond_1
    invoke-static/range {p5 .. p5}, Ltmsdkobf/kd;->t([B)[B

    move-result-object v10

    .line 150
    .local v10, md5FileData:[B
    array-length v6, v10

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Ltmsdkobf/jz;->a(Ljava/lang/String;JII)[B

    move-result-object v11

    .line 151
    .local v11, reqData:[B
    if-nez v11, :cond_2

    .line 152
    const/4 v8, 0x0

    goto :goto_0

    .line 155
    :cond_2
    const/4 v7, 0x4

    .line 157
    .local v7, IntLen:I
    array-length v12, v11

    .line 158
    .local v12, reqDataLen:I
    add-int/lit8 v1, v12, 0x4

    move-object/from16 v0, p5

    array-length v2, v0

    add-int/2addr v1, v2

    array-length v2, v10

    add-int v9, v1, v2

    .line 159
    .local v9, bodyLen:I
    new-array v8, v9, [B

    .line 160
    .local v8, body:[B
    array-length v1, v11

    invoke-static {v1}, Ltmsdkobf/kd;->bn(I)[B

    move-result-object v13

    .line 161
    .local v13, reqDataLenBytes:[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v13, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v11, v1, v8, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/4 v1, 0x0

    add-int/lit8 v2, v12, 0x4

    move-object/from16 v0, p5

    array-length v3, v0

    move-object/from16 v0, p5

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/4 v1, 0x0

    add-int/lit8 v2, v12, 0x4

    move-object/from16 v0, p5

    array-length v3, v0

    add-int/2addr v2, v3

    array-length v3, v10

    invoke-static {v10, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private r([B)I
    .locals 2
    .parameter "respData"

    .prologue
    .line 214
    const/16 v0, -0xfa0

    .line 215
    .local v0, err:I
    if-nez p1, :cond_1

    .line 223
    .end local v0           #err:I
    :cond_0
    :goto_0
    return v0

    .line 219
    .restart local v0       #err:I
    :cond_1
    invoke-virtual {p0, p1}, Ltmsdkobf/jz;->s([B)Ltmsdkobf/cs;

    move-result-object v1

    .line 220
    .local v1, resp:Ltmsdkobf/cs;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Ltmsdkobf/cs;->D()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ltmsdkobf/cf;)I
    .locals 17
    .parameter "filePath"
    .parameter "uploadFileInfo"

    .prologue
    .line 71
    const/4 v9, -0x2

    .line 73
    .local v9, err:I
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, -0x1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    const/4 v13, 0x0

    .line 80
    .local v13, randomAccessFile:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v13, Ljava/io/RandomAccessFile;

    .end local v13           #randomAccessFile:Ljava/io/RandomAccessFile;
    const-string v1, "r"

    invoke-direct {v13, v10, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .restart local v13       #randomAccessFile:Ljava/io/RandomAccessFile;
    const/16 v1, 0x5000

    new-array v6, v1, [B

    .line 87
    .local v6, packData:[B
    const/4 v11, 0x0

    .line 89
    .local v11, httpConnection:Ltmsdkobf/jx;
    if-eqz p2, :cond_c

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ltmsdkobf/cf;->B()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 90
    invoke-virtual/range {p2 .. p2}, Ltmsdkobf/cf;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ltmsdkobf/ce;

    .line 91
    .local v16, uploadFile:Ltmsdkobf/ce;
    invoke-virtual/range {v16 .. v16}, Ltmsdkobf/ce;->getPos()I

    move-result v1

    int-to-long v3, v1

    .line 92
    .local v3, pos:J
    invoke-virtual/range {v16 .. v16}, Ltmsdkobf/ce;->getSize()I

    move-result v5

    .line 94
    .local v5, size:I
    invoke-virtual {v13, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 95
    array-length v1, v6

    if-eq v5, v1, :cond_3

    .line 96
    new-array v6, v5, [B

    .line 98
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v13, v6, v1, v5}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v14

    .line 99
    .local v14, readLen:I
    const/4 v1, -0x1

    if-eq v14, v1, :cond_4

    if-eq v14, v5, :cond_6

    .line 101
    :cond_4
    const/16 v1, -0x80c

    .line 129
    if-eqz v13, :cond_5

    .line 131
    :try_start_2
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    :cond_5
    :goto_1
    if-eqz v11, :cond_0

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    goto :goto_0

    .line 81
    .end local v3           #pos:J
    .end local v5           #size:I
    .end local v6           #packData:[B
    .end local v11           #httpConnection:Ltmsdkobf/jx;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #randomAccessFile:Ljava/io/RandomAccessFile;
    .end local v14           #readLen:I
    .end local v16           #uploadFile:Ltmsdkobf/ce;
    :catch_0
    move-exception v8

    .line 82
    .local v8, e:Ljava/io/FileNotFoundException;
    const/4 v1, -0x1

    goto :goto_0

    .line 132
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #pos:J
    .restart local v5       #size:I
    .restart local v6       #packData:[B
    .restart local v11       #httpConnection:Ltmsdkobf/jx;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #randomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v14       #readLen:I
    .restart local v16       #uploadFile:Ltmsdkobf/ce;
    :catch_1
    move-exception v8

    .line 133
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v8           #e:Ljava/io/IOException;
    :cond_6
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ltmsdkobf/cf;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Ltmsdkobf/jz;->a(Ljava/lang/String;JI[B)[B

    move-result-object v7

    .line 106
    .local v7, bodyData:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Ltmsdkobf/jz;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Ltmsdkobf/jx;->cc(Ljava/lang/String;)Ltmsdkobf/jx;

    move-result-object v11

    .line 107
    const-string v1, "POST"

    invoke-virtual {v11, v1}, Ltmsdkobf/jx;->setRequestMethod(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v11, v7}, Ltmsdkobf/jx;->setPostData([B)V

    .line 109
    invoke-virtual {v11}, Ltmsdkobf/jx;->eY()I

    .line 110
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v15}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 111
    .local v15, retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v15}, Ltmsdkobf/jx;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v9

    .line 112
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 113
    if-eqz v9, :cond_9

    .line 129
    if-eqz v13, :cond_7

    .line 131
    :try_start_4
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 136
    :cond_7
    :goto_2
    if-eqz v11, :cond_8

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    :cond_8
    move v1, v9

    goto/16 :goto_0

    .line 132
    :catch_2
    move-exception v8

    .line 133
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v8           #e:Ljava/io/IOException;
    :cond_9
    :try_start_5
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ltmsdkobf/jz;->r([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v9

    if-eqz v9, :cond_2

    .line 129
    if-eqz v13, :cond_a

    .line 131
    :try_start_6
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 136
    :cond_a
    :goto_3
    if-eqz v11, :cond_b

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    :cond_b
    move v1, v9

    goto/16 :goto_0

    .line 132
    :catch_3
    move-exception v8

    .line 133
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 129
    .end local v3           #pos:J
    .end local v5           #size:I
    .end local v7           #bodyData:[B
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #readLen:I
    .end local v15           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .end local v16           #uploadFile:Ltmsdkobf/ce;
    :cond_c
    if-eqz v13, :cond_d

    .line 131
    :try_start_7
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 136
    :cond_d
    :goto_4
    if-eqz v11, :cond_e

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    .line 141
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 132
    :catch_4
    move-exception v8

    .line 133
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 122
    .end local v8           #e:Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 123
    .local v8, e:Ltmsdk/common/exception/NetWorkException;
    :try_start_8
    invoke-virtual {v8}, Ltmsdk/common/exception/NetWorkException;->printStackTrace()V

    .line 124
    invoke-virtual {v8}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    .line 129
    if-eqz v13, :cond_f

    .line 131
    :try_start_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 136
    .end local v8           #e:Ltmsdk/common/exception/NetWorkException;
    :cond_f
    :goto_5
    if-eqz v11, :cond_0

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    goto/16 :goto_0

    .line 132
    .restart local v8       #e:Ltmsdk/common/exception/NetWorkException;
    :catch_6
    move-exception v8

    .line 133
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 125
    .end local v8           #e:Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 126
    .local v8, e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 129
    if-eqz v13, :cond_10

    .line 131
    :try_start_b
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 136
    .end local v8           #e:Ljava/lang/Exception;
    :cond_10
    :goto_6
    if-eqz v11, :cond_11

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    :cond_11
    move v1, v9

    goto/16 :goto_0

    .line 132
    .restart local v8       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v8

    .line 133
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 129
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_12

    .line 131
    :try_start_c
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 136
    :cond_12
    :goto_7
    if-eqz v11, :cond_13

    .line 137
    invoke-virtual {v11}, Ltmsdkobf/jx;->close()V

    :cond_13
    throw v1

    .line 132
    :catch_9
    move-exception v8

    .line 133
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method public s([B)Ltmsdkobf/cs;
    .locals 7
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 234
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-object v2

    .line 237
    :cond_0
    const/4 v2, 0x0

    .line 240
    .local v2, resp:Ltmsdkobf/cs;
    new-instance v3, Ltmsdkobf/cx;

    invoke-direct {v3}, Ltmsdkobf/cx;-><init>()V

    .line 241
    .local v3, unipacket:Ltmsdkobf/cx;
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ltmsdkobf/cx;->an(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3}, Ltmsdkobf/cx;->G()V

    .line 244
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v4

    .line 245
    .local v4, vDecryptData:[B
    invoke-virtual {v3, v4}, Ltmsdkobf/cx;->b([B)V

    .line 246
    const-string v5, "key_UploadPacketInfoResp"

    new-instance v6, Ltmsdkobf/cs;

    invoke-direct {v6}, Ltmsdkobf/cs;-><init>()V

    invoke-virtual {v3, v5, v6}, Ltmsdkobf/cx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ltmsdkobf/cs;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v4           #vDecryptData:[B
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 59
    iput-object p1, p0, Ltmsdkobf/jz;->mUrl:Ljava/lang/String;

    .line 60
    return-void
.end method
