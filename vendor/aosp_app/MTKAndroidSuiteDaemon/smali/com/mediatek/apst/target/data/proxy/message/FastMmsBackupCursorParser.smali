.class public Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastMmsBackupCursorParser.java"


# instance fields
.field private mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"
    .parameter "messageProxy"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 88
    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 89
    return-void
.end method


# virtual methods
.method protected onBlockReady()V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    invoke-super {p0}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->onBlockReady()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :goto_1
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, " --->Catch OutOfMemoryError"

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 20
    .parameter "c"
    .parameter "buffer"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "Cursor is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    const/4 v2, 0x0

    .line 211
    :goto_0
    return v2

    .line 103
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 104
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "Cursor has moved to the end."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x0

    goto :goto_0

    .line 107
    :cond_2
    if-nez p2, :cond_3

    .line 108
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "Buffer is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->cursorToMms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Mms;

    move-result-object v14

    .line 115
    .local v14, mms:Lcom/mediatek/apst/util/entity/message/Mms;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v2, v14}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMmsAddress(Lcom/mediatek/apst/util/entity/message/Mms;)Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v2}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_PART:Landroid/net/Uri;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mid"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "seq"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ct"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "chset"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "cid"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "cl"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "text"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 146
    .local v10, cPart:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v16, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    if-eqz v10, :cond_8

    .line 148
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    invoke-static {v10}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->cursorToMmsPart(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/MmsPart;

    move-result-object v15

    .line 150
    .local v15, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getDataPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 160
    .local v17, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v2}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 162
    .local v12, is:Ljava/io/InputStream;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v8, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x100

    new-array v9, v2, [B

    .line 165
    .local v9, bufferTemp:[B
    invoke-virtual {v12, v9}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 166
    .local v13, len:I
    :goto_2
    const/4 v2, -0x1

    if-eq v13, v2, :cond_4

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v8, v9, v2, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 168
    invoke-virtual {v12, v9}, Ljava/io/InputStream;->read([B)I

    move-result v13

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setByteArray([B)V

    .line 171
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 172
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 177
    .end local v8           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #bufferTemp:[B
    .end local v13           #len:I
    :goto_3
    if-eqz v12, :cond_5

    .line 178
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v12           #is:Ljava/io/InputStream;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_5
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_6
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v15, v2}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setByteArray([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 180
    .end local v12           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v11

    .line 181
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 186
    .end local v11           #e:Ljava/io/IOException;
    .end local v15           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 188
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 189
    const/4 v10, 0x0

    .line 192
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/mediatek/apst/util/entity/message/Mms;->setParts(Ljava/util/List;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 198
    const/16 v2, 0x51a

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v2}, Lcom/mediatek/apst/util/entity/message/Mms;->writeAllWithVersion(Ljava/nio/ByteBuffer;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v11

    .line 200
    .local v11, e:Ljava/lang/NullPointerException;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 202
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 203
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v11

    .line 208
    .local v11, e:Ljava/nio/BufferOverflowException;
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 209
    const/4 v2, 0x2

    goto/16 :goto_0
.end method
