.class public Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastMmsResourceCursorParser.java"


# instance fields
.field private mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V
    .locals 0
    .parameter "c"
    .parameter "consumer"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V
    .locals 0
    .parameter "c"
    .parameter "consumer"
    .parameter "buffer"
    .parameter "messageProxy"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 105
    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;J)V
    .locals 0
    .parameter "c"
    .parameter "consumer"
    .parameter "buffer"
    .parameter "messageProxy"
    .parameter "id"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 93
    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 94
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 10
    .parameter "c"
    .parameter "buffer"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const-string v8, "Cursor is null."

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/4 v7, 0x0

    .line 172
    :goto_0
    return v7

    .line 113
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 114
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const-string v8, "Cursor has moved to the end."

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const/4 v7, 0x0

    goto :goto_0

    .line 117
    :cond_2
    if-nez p2, :cond_3

    .line 118
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const-string v8, "Buffer is null."

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const/4 v7, 0x0

    goto :goto_0

    .line 122
    :cond_3
    invoke-static {p1}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->cursorToMmsPart(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/MmsPart;

    move-result-object v5

    .line 124
    .local v5, mmsPart:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :try_start_0
    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getDataPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://mms/part/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 126
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v7}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 134
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_6

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v7

    if-eqz v7, :cond_6

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x100

    new-array v1, v7, [B

    .line 137
    .local v1, bufferTemp:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 138
    .local v4, len:I
    :goto_1
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 139
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 140
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setByteArray([B)V

    .line 143
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 149
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bufferTemp:[B
    .end local v4           #len:I
    :goto_2
    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    const/4 v3, 0x0

    .line 161
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_5
    :goto_3
    invoke-virtual {p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 163
    const/16 v7, 0x51a

    :try_start_2
    invoke-virtual {v5, p2, v7}, Lcom/mediatek/apst/util/entity/message/MmsPart;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_3

    .line 172
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 146
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_6
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setByteArray([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 157
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 158
    .local v2, e:Ljava/io/FileNotFoundException;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/MmsPart;->setByteArray([B)V

    .line 159
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 164
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 165
    .local v2, e:Ljava/lang/NullPointerException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 167
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 168
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 169
    .local v2, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 170
    const/4 v7, 0x2

    goto/16 :goto_0
.end method
