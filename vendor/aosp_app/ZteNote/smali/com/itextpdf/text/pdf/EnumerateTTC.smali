.class Lcom/itextpdf/text/pdf/EnumerateTTC;
.super Lcom/itextpdf/text/pdf/TrueTypeFont;
.source "EnumerateTTC.java"


# instance fields
.field protected names:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "ttcFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->fileName:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 62
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/EnumerateTTC;->findNames()V

    .line 63
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .parameter "ttcArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>()V

    .line 66
    const-string v0, "Byte array TTC"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->fileName:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/EnumerateTTC;->findNames()V

    .line 69
    return-void
.end method


# virtual methods
.method findNames()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->tables:Ljava/util/HashMap;

    .line 75
    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/EnumerateTTC;->readStandardString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, mainTag:Ljava/lang/String;
    const-string v8, "ttcf"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 77
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string v9, "1.is.not.a.valid.ttc.file"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->fileName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v4           #mainTag:Ljava/lang/String;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    if-eqz v9, :cond_0

    .line 105
    iget-object v9, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    :cond_0
    throw v8

    .line 78
    .restart local v4       #mainTag:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 79
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 80
    .local v0, dirCount:I
    new-array v8, v0, [Ljava/lang/String;

    iput-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->names:[Ljava/lang/String;

    .line 81
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v8

    long-to-int v2, v8

    .line 82
    .local v2, dirPos:I
    const/4 v1, 0x0

    .local v1, dirIdx:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 83
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->tables:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 84
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-long v9, v2

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 85
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    mul-int/lit8 v9, v1, 0x4

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 86
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v8

    iput v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->directoryOffset:I

    .line 87
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v9, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->directoryOffset:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 88
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v8

    const/high16 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 89
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string v9, "1.is.not.a.valid.ttf.file"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->fileName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 90
    :cond_2
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 91
    .local v5, num_tables:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 92
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 93
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/EnumerateTTC;->readStandardString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, tag:Ljava/lang/String;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 95
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 96
    .local v6, table_location:[I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v9

    aput v9, v6, v8

    .line 97
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v9

    aput v9, v6, v8

    .line 98
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->tables:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v6           #table_location:[I
    .end local v7           #tag:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/EnumerateTTC;->getBaseFont()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 104
    .end local v3           #k:I
    .end local v5           #num_tables:I
    :cond_4
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    if-eqz v8, :cond_5

    .line 105
    iget-object v8, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 107
    :cond_5
    return-void
.end method

.method getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/itextpdf/text/pdf/EnumerateTTC;->names:[Ljava/lang/String;

    return-object v0
.end method
