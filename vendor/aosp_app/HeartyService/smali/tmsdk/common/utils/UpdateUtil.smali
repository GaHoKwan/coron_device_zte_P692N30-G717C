.class public Ltmsdk/common/utils/UpdateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;II)[B
    .locals 3
    .parameter "path"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-array v0, p2, [B

    .line 112
    .local v0, data:[B
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v1, is:Ljava/io/RandomAccessFile;
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 114
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 115
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 116
    return-object v0
.end method

.method public static getFileConfInfo(Ljava/lang/String;)Ltmsdkobf/r;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 40
    const/4 v4, 0x0

    .line 42
    .local v4, header:[B
    const/4 v5, 0x0

    const/16 v6, 0x18

    :try_start_0
    invoke-static {p0, v5, v6}, Ltmsdk/common/utils/UpdateUtil;->a(Ljava/lang/String;II)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    new-instance v1, Ltmsdkobf/r;

    invoke-direct {v1}, Ltmsdkobf/r;-><init>()V

    .line 49
    .local v1, confInfo:Ltmsdkobf/r;
    new-array v2, v8, [B

    .line 50
    .local v2, createTime:[B
    invoke-static {v4, v8, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {v2}, Ltmsdkobf/jr;->p([B)I

    move-result v5

    invoke-virtual {v1, v5}, Ltmsdkobf/r;->m(I)V

    .line 53
    new-array v0, v9, [B

    .line 54
    .local v0, checksum:[B
    const/16 v5, 0x8

    invoke-static {v4, v5, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-static {v0}, Ltmsdkobf/jr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltmsdkobf/r;->o(Ljava/lang/String;)V

    .line 57
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 58
    .end local v0           #checksum:[B
    .end local v1           #confInfo:Ltmsdkobf/r;
    .end local v2           #createTime:[B
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v3

    .line 44
    .local v3, e:Ljava/io/IOException;
    const-string v5, "UpdateUtil"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocationConfInfo(Ljava/lang/String;)Ltmsdkobf/r;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 65
    const/4 v4, 0x0

    .line 67
    .local v4, header:[B
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_0
    invoke-static {p0, v6, v7}, Ltmsdk/common/utils/UpdateUtil;->a(Ljava/lang/String;II)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 73
    new-instance v1, Ltmsdkobf/r;

    invoke-direct {v1}, Ltmsdkobf/r;-><init>()V

    .line 74
    .local v1, confInfo:Ltmsdkobf/r;
    aget-byte v6, v4, v8

    invoke-virtual {v1, v6}, Ltmsdkobf/r;->setVersion(I)V

    .line 76
    new-array v2, v9, [B

    .line 77
    .local v2, createTime:[B
    invoke-static {v4, v9, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-static {v2}, Ltmsdkobf/jr;->p([B)I

    move-result v6

    invoke-virtual {v1, v6}, Ltmsdkobf/r;->m(I)V

    .line 80
    new-array v0, v10, [B

    .line 81
    .local v0, checksum:[B
    const/16 v6, 0x8

    invoke-static {v4, v6, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    invoke-static {v0}, Ltmsdkobf/jr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ltmsdkobf/r;->o(Ljava/lang/String;)V

    .line 84
    new-array v5, v9, [B

    .line 85
    .local v5, updateTime:[B
    const/16 v6, 0x2c

    invoke-static {v4, v6, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {v5}, Ltmsdkobf/jr;->p([B)I

    move-result v6

    invoke-virtual {v1, v6}, Ltmsdkobf/r;->n(I)V

    .line 88
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 89
    .end local v0           #checksum:[B
    .end local v1           #confInfo:Ltmsdkobf/r;
    .end local v2           #createTime:[B
    .end local v5           #updateTime:[B
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, e:Ljava/io/IOException;
    const-string v6, "UpdateUtil"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMarkConfInfo(Ljava/lang/String;)Ltmsdkobf/r;
    .locals 4
    .parameter "path"

    .prologue
    .line 96
    const-class v3, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    .line 97
    .local v2, numMarkManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    invoke-virtual {v2}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->getMarkFileInfo()Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;

    move-result-object v1

    .line 98
    .local v1, flinfo:Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
    new-instance v0, Ltmsdkobf/r;

    invoke-direct {v0}, Ltmsdkobf/r;-><init>()V

    .line 99
    .local v0, confInfo:Ltmsdkobf/r;
    iget v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->version:I

    invoke-virtual {v0, v3}, Ltmsdkobf/r;->setVersion(I)V

    .line 100
    iget v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondWhole:I

    invoke-virtual {v0, v3}, Ltmsdkobf/r;->m(I)V

    .line 101
    iget v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondLastDiff:I

    if-eqz v3, :cond_0

    iget v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondLastDiff:I

    :goto_0
    invoke-virtual {v0, v3}, Ltmsdkobf/r;->n(I)V

    .line 102
    iget-object v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->md5:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->md5:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3}, Ltmsdkobf/r;->o(Ljava/lang/String;)V

    .line 103
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 104
    return-object v0

    .line 101
    :cond_0
    iget v3, v1, Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;->timeStampSecondWhole:I

    goto :goto_0

    .line 102
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public static getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/r;
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, confInfo:Ltmsdkobf/r;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 127
    .local v3, headerRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/RuleFileHeader;>;"
    invoke-static {v3, p1}, Ltmsdk/bg/tcc/SmsChecker;->getRuleFileHeader(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/tcc/RuleFileHeader;

    .line 129
    .local v2, header:Ltmsdk/common/tcc/RuleFileHeader;
    if-eqz v2, :cond_0

    .line 130
    new-instance v0, Ltmsdkobf/r;

    .end local v0           #confInfo:Ltmsdkobf/r;
    invoke-direct {v0}, Ltmsdkobf/r;-><init>()V

    .line 131
    .restart local v0       #confInfo:Ltmsdkobf/r;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 132
    iget-object v4, v2, Ltmsdk/common/tcc/RuleFileHeader;->md5str:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltmsdkobf/r;->o(Ljava/lang/String;)V

    .line 133
    iget v4, v2, Ltmsdk/common/tcc/RuleFileHeader;->time:I

    invoke-virtual {v0, v4}, Ltmsdkobf/r;->m(I)V

    .line 136
    .end local v2           #header:Ltmsdk/common/tcc/RuleFileHeader;
    .end local v3           #headerRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/RuleFileHeader;>;"
    :cond_0
    return-object v0
.end method

.method public static getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, virusClientInfo:Ltmsdkobf/ck;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-static {p0, p1}, Ltmsdk/fg/module/qscanner/AmScanner;->loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;

    move-result-object v1

    .line 168
    :cond_0
    return-object v1
.end method

.method public static getVirusConfInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/r;
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, confInfo:Ltmsdkobf/r;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-static {p0, p1}, Ltmsdk/fg/module/qscanner/AmScanner;->loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;

    move-result-object v2

    .line 147
    .local v2, virusClientInfo:Ltmsdkobf/ck;
    if-eqz v2, :cond_0

    .line 148
    new-instance v0, Ltmsdkobf/r;

    .end local v0           #confInfo:Ltmsdkobf/r;
    invoke-direct {v0}, Ltmsdkobf/r;-><init>()V

    .line 149
    .restart local v0       #confInfo:Ltmsdkobf/r;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 150
    iget v3, v2, Ltmsdkobf/ck;->d:I

    invoke-virtual {v0, v3}, Ltmsdkobf/r;->m(I)V

    .line 151
    iget v3, v2, Ltmsdkobf/ck;->version:I

    invoke-virtual {v0, v3}, Ltmsdkobf/r;->setVersion(I)V

    .line 154
    .end local v2           #virusClientInfo:Ltmsdkobf/ck;
    :cond_0
    return-object v0
.end method
