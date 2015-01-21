.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipInflaterInputStream;,
        Ljava/util/zip/ZipFile$RAFStream;
    }
.end annotation


# static fields
.field static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field private final fileName:Ljava/lang/String;

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    .line 106
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 141
    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 146
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 148
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V

    .line 149
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 150
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    return-void
.end method

.method private readCentralDir()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21

    const-wide/16 v23, 0x16

    sub-long v16, v21, v23

    .line 348
    .local v16, scanOffset:J
    const-wide/16 v21, 0x0

    cmp-long v21, v16, v21

    if-gez v21, :cond_0

    .line 349
    new-instance v21, Ljava/util/zip/ZipException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "File too short to be a zip file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 352
    :cond_0
    const-wide/32 v21, 0x10000

    sub-long v18, v16, v21

    .line 353
    .local v18, stopOffset:J
    const-wide/16 v21, 0x0

    cmp-long v21, v18, v21

    if-gez v21, :cond_1

    .line 354
    const-wide/16 v18, 0x0

    .line 357
    :cond_1
    const v3, 0x6054b50

    .line 359
    .local v3, ENDHEADERMAGIC:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21

    const v22, 0x6054b50

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 372
    const/16 v21, 0x12

    move/from16 v0, v21

    new-array v9, v0, [B

    .line 373
    .local v9, eocd:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 376
    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    sget-object v23, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v9, v0, v1, v2}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v12

    .line 377
    .local v12, it:Llibcore/io/BufferIterator;
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v21

    const v22, 0xffff

    and-int v6, v21, v22

    .line 378
    .local v6, diskNumber:I
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v21

    const v22, 0xffff

    and-int v7, v21, v22

    .line 379
    .local v7, diskWithCentralDir:I
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v21

    const v22, 0xffff

    and-int v14, v21, v22

    .line 380
    .local v14, numEntries:I
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v21

    const v22, 0xffff

    and-int v20, v21, v22

    .line 381
    .local v20, totalNumEntries:I
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 382
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    .line 384
    .local v5, centralDirOffset:I
    move/from16 v0, v20

    if-ne v14, v0, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_5

    .line 385
    :cond_3
    new-instance v21, Ljava/util/zip/ZipException;

    const-string v22, "spanned archives not supported"

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 364
    .end local v5           #centralDirOffset:I
    .end local v6           #diskNumber:I
    .end local v7           #diskWithCentralDir:I
    .end local v9           #eocd:[B
    .end local v12           #it:Llibcore/io/BufferIterator;
    .end local v14           #numEntries:I
    .end local v20           #totalNumEntries:I
    :cond_4
    const-wide/16 v21, 0x1

    sub-long v16, v16, v21

    .line 365
    cmp-long v21, v16, v18

    if-gez v21, :cond_2

    .line 366
    new-instance v21, Ljava/util/zip/ZipException;

    const-string v22, "EOCD not found; not a Zip archive?"

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 389
    .restart local v5       #centralDirOffset:I
    .restart local v6       #diskNumber:I
    .restart local v7       #diskWithCentralDir:I
    .restart local v9       #eocd:[B
    .restart local v12       #it:Llibcore/io/BufferIterator;
    .restart local v14       #numEntries:I
    .restart local v20       #totalNumEntries:I
    :cond_5
    new-instance v15, Ljava/util/zip/ZipFile$RAFStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-direct {v15, v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 390
    .local v15, rafs:Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v21, 0x1000

    move/from16 v0, v21

    invoke-direct {v4, v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 391
    .local v4, bin:Ljava/io/BufferedInputStream;
    const/16 v21, 0x2e

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 392
    .local v10, hdrBuf:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_7

    .line 393
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-direct {v13, v10, v4}, Ljava/util/zip/ZipEntry;-><init>([BLjava/io/InputStream;)V

    .line 394
    .local v13, newEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, entryName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 396
    new-instance v21, Ljava/util/zip/ZipException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Duplicate entry name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 392
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 399
    .end local v8           #entryName:Ljava/lang/String;
    .end local v13           #newEntry:Ljava/util/zip/ZipEntry;
    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 186
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 188
    .local v0, raf:Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_0

    .line 189
    monitor-enter v0

    .line 190
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 191
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 195
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 198
    :cond_0
    return-void

    .line 192
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 215
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/zip/ZipFile$1;

    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    return-void

    .line 170
    :catchall_0
    move-exception v1

    .line 171
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    throw v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 172
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 173
    .restart local v0       #t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4
    .parameter "entryName"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entryName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 246
    .local v0, ze:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    .line 247
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ze:Ljava/util/zip/ZipEntry;
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 249
    .restart local v0       #ze:Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 12
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v11, 0xffff

    .line 264
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 265
    if-nez p1, :cond_0

    .line 266
    const/4 v6, 0x0

    .line 300
    :goto_0
    return-object v6

    .line 270
    :cond_0
    iget-object v5, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 271
    .local v5, raf:Ljava/io/RandomAccessFile;
    monitor-enter v5

    .line 276
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile$RAFStream;

    iget-wide v7, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    const-wide/16 v9, 0x6

    add-long/2addr v7, v9

    invoke-direct {v6, v5, v7, v8}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 277
    .local v6, rafStream:Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 278
    .local v4, is:Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int v3, v7, v11

    .line 279
    .local v3, gpbf:I
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_1

    .line 280
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid General Purpose Bit Flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 302
    .end local v3           #gpbf:I
    .end local v4           #is:Ljava/io/DataInputStream;
    .end local v6           #rafStream:Ljava/util/zip/ZipFile$RAFStream;
    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 285
    .restart local v3       #gpbf:I
    .restart local v4       #is:Ljava/io/DataInputStream;
    .restart local v6       #rafStream:Ljava/util/zip/ZipFile$RAFStream;
    :cond_1
    const/16 v7, 0x12

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 286
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int v2, v7, v11

    .line 287
    .local v2, fileNameLength:I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int v1, v7, v11

    .line 288
    .local v1, extraFieldLength:I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 291
    add-int v7, v2, v1

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 294
    iget v7, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 295
    iget-wide v7, v6, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v9, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 296
    const/16 v7, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 297
    .local v0, bufSize:I
    new-instance v7, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    new-instance v8, Ljava/util/zip/Inflater;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v7, v6, v8, v0, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    monitor-exit v5

    move-object v6, v7

    goto/16 :goto_0

    .line 299
    .end local v0           #bufSize:I
    :cond_2
    iget-wide v7, v6, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v9, p1, Ljava/util/zip/ZipEntry;->size:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 300
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 322
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
