.class public Lcom/zte/update/tools/FileTools;
.super Ljava/lang/Object;
.source "FileTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "path"

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string v1, "com.zte.update.tools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 88
    :cond_0
    return-object v0
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "pathname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/zte/update/tools/FileTools;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/update/tools/FileTools;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 69
    :cond_0
    return-object v0
.end method

.method public static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "filename"
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/zte/update/tools/FileTools;->createPathname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/update/tools/FileTools;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/update/tools/FileTools;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 79
    :cond_0
    return-object v0
.end method

.method public static createPathname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"
    .parameter "dirPath"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 4
    .parameter "pathname"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/zte/update/tools/FileTools;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, file:Ljava/io/File;
    const-string v1, "com.zte.update.tools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the file to delete ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "dir"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/zte/update/tools/FileTools;->createPathname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/update/tools/FileTools;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, file:Ljava/io/File;
    const-string v1, "com.zte.update.tools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the file to delete ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    :cond_0
    return-void
.end method

.method public static deleteFileFromAppDir(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/zte/update/tools/FileTools;->getFileFromAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_0
    return-void
.end method

.method public static getAbsPathByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileFromAppDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 29
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 30
    .local v0, cxt:Landroid/content/Context;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v1, file:Ljava/io/File;
    return-object v1
.end method

.method public static getFileFromDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "dir"
    .parameter "fileName"

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method public static getFileFromPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "pathname"

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method public static isExisting(Ljava/lang/String;)Z
    .locals 2
    .parameter "pathname"

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isFileInDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "fileName"
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, dir:Ljava/io/File;
    const-string v6, "com.zte.update.tools"

    const-string v7, "Enter to isFileInDir"

    invoke-static {v6, v7}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    .line 112
    const-string v6, "com.zte.update.tools"

    const-string v7, "No file in dir"

    invoke-static {v6, v7}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return v5

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 116
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, p0, :cond_2

    .line 117
    const-string v5, "com.zte.update.tools"

    const-string v6, "got file"

    invoke-static {v5, v6}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x1

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
