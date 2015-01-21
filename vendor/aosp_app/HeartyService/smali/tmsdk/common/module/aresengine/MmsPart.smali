.class public Ltmsdk/common/module/aresengine/MmsPart;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/aresengine/MmsPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public charset:I

.field public contentDispositon:[B

.field public contentId:[B

.field public contentLocation:[B

.field public contentType:[B

.field public data:[B

.field public dataPath:Ljava/lang/String;

.field public fileName:[B

.field public name:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ltmsdk/common/module/aresengine/MmsPart$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/MmsPart$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/MmsPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 74
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->name:[B

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->charset:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentDispositon:[B

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->fileName:[B

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentId:[B

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentLocation:[B

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 17
    .parameter "part"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->name:[B

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->charset:I

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentDispositon:[B

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->fileName:[B

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentId:[B

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentLocation:[B

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    .line 126
    .local v7, dataUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    if-nez v13, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    invoke-static {v13}, Ltmsdk/common/module/aresengine/MmsPart;->w([B)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, contentTypeValue:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 134
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mmsparts"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 136
    .local v12, path:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v8, dir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_4

    .line 138
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 140
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ltmsdk/common/module/aresengine/MmsPart;->contentLocation:[B

    invoke-static {v14}, Ltmsdk/common/module/aresengine/MmsPart;->w([B)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v16, "_"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, bos:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 144
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v10, file:Ljava/io/File;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 146
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    if-eqz v13, :cond_7

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    invoke-virtual {v4, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 149
    move-object/from16 v0, p0

    iput-object v12, v0, Ltmsdk/common/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    .line 150
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 165
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    :goto_2
    const/4 v1, 0x0

    .line 173
    :cond_6
    if-eqz v4, :cond_0

    .line 175
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    :goto_3
    const/4 v3, 0x0

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 151
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :cond_7
    if-eqz v7, :cond_5

    .line 152
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 153
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/16 v13, 0x400

    :try_start_5
    new-array v5, v13, [B

    .line 154
    .local v5, buffer:[B
    const/4 v11, -0x1

    .line 155
    .local v11, len:I
    :goto_4
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_9

    .line 156
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 161
    .end local v5           #buffer:[B
    .end local v11           #len:I
    :catch_0
    move-exception v9

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 162
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #file:Ljava/io/File;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .local v9, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v13, "MmsPart"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    if-eqz v1, :cond_8

    .line 167
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 171
    :goto_6
    const/4 v1, 0x0

    .line 173
    :cond_8
    if-eqz v3, :cond_0

    .line 175
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 179
    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 158
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #len:I
    :cond_9
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 159
    move-object/from16 v0, p0

    iput-object v12, v0, Ltmsdk/common/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 168
    .end local v5           #buffer:[B
    .end local v11           #len:I
    :catch_1
    move-exception v9

    .line 169
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 176
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 177
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 168
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #file:Ljava/io/File;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v9

    .line 169
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 176
    :catch_4
    move-exception v9

    .line 177
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 165
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v1, :cond_a

    .line 167
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 171
    :goto_9
    const/4 v1, 0x0

    .line 173
    :cond_a
    if-eqz v3, :cond_b

    .line 175
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 179
    :goto_a
    const/4 v3, 0x0

    :cond_b
    throw v13

    .line 168
    :catch_5
    move-exception v9

    .line 169
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 176
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 177
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 165
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #file:Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_8

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v13

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_8

    .line 161
    .end local v10           #file:Ljava/io/File;
    :catch_7
    move-exception v9

    goto :goto_5

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #file:Ljava/io/File;
    :catch_8
    move-exception v9

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_5
.end method

.method private static w([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 253
    const-string v0, ""

    .line 254
    .local v0, rst:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 261
    .end local v0           #rst:Ljava/lang/String;
    .local v1, rst:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 258
    .end local v1           #rst:Ljava/lang/String;
    .restart local v0       #rst:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #rst:Ljava/lang/String;
    .restart local v1       #rst:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #rst:Ljava/lang/String;
    .restart local v0       #rst:Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 261
    .end local v0           #rst:Ljava/lang/String;
    .restart local v1       #rst:Ljava/lang/String;
    goto :goto_0

    .line 259
    .end local v1           #rst:Ljava/lang/String;
    .restart local v0       #rst:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method fw()Lcom/google/android/mms/pdu/PduPart;
    .locals 10

    .prologue
    .line 187
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 188
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    iget v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->charset:I

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 189
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentDispositon:[B

    if-eqz v9, :cond_0

    .line 190
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentDispositon:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 192
    :cond_0
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentId:[B

    if-eqz v9, :cond_1

    .line 193
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentId:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 195
    :cond_1
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentLocation:[B

    if-eqz v9, :cond_2

    .line 196
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentLocation:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 198
    :cond_2
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    if-eqz v9, :cond_3

    .line 199
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 201
    :cond_3
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->fileName:[B

    if-eqz v9, :cond_4

    .line 202
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->fileName:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 204
    :cond_4
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->name:[B

    if-eqz v9, :cond_5

    .line 205
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->name:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 207
    :cond_5
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    if-eqz v9, :cond_7

    .line 208
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 246
    :cond_6
    :goto_0
    return-object v8

    .line 209
    :cond_7
    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 210
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Ltmsdk/common/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 215
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 216
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 217
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v4, v9, [B

    .line 218
    .local v4, buffer:[B
    const/4 v7, -0x1

    .line 219
    .local v7, len:I
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    .line 220
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 224
    .end local v4           #buffer:[B
    .end local v7           #len:I
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v0, v1

    .line 225
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v5, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-eqz v0, :cond_8

    .line 229
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 233
    .end local v5           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    .line 235
    :cond_8
    if-eqz v2, :cond_6

    .line 237
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 241
    :goto_4
    const/4 v2, 0x0

    goto :goto_0

    .line 222
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #len:I
    :cond_9
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 223
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 227
    if-eqz v1, :cond_c

    .line 229
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 233
    :goto_5
    const/4 v0, 0x0

    .line 235
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_6
    if-eqz v3, :cond_6

    .line 237
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 241
    :goto_7
    const/4 v2, 0x0

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 230
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v5

    .line 231
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 238
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v5

    .line 239
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 230
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v7           #len:I
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v5, e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 231
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 238
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 239
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 227
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v0, :cond_a

    .line 229
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 233
    :goto_9
    const/4 v0, 0x0

    .line 235
    :cond_a
    if-eqz v2, :cond_b

    .line 237
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 241
    :goto_a
    const/4 v2, 0x0

    :cond_b
    throw v9

    .line 230
    :catch_5
    move-exception v5

    .line 231
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 238
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 239
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 227
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 224
    :catch_7
    move-exception v5

    goto :goto_2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #len:I
    :cond_c
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 93
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->name:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 95
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->charset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentDispositon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->fileName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->contentLocation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsPart;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 102
    return-void
.end method
