.class Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 81
    .local v0, exists:Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 108
    :goto_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 109
    return-void

    .line 102
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    goto :goto_0
.end method

.method private delete(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 290
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 294
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "host"
    .parameter "port"

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .locals 10

    .prologue
    .line 260
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 261
    .local v4, initialFiles:[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 262
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 266
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 267
    .local v2, diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 269
    .local v6, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 270
    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v6           #name:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 277
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v7

    .line 278
    .local v7, newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    .line 279
    .local v1, cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    iget-object v8, v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 281
    .end local v1           #cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    :cond_2
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 283
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 286
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v7           #newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_3
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "host"
    .parameter "file"
    .parameter "t"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading session data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "host"
    .parameter "file"
    .parameter "t"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing session data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    return-void
.end method

.method private makeRoom()V
    .locals 4

    .prologue
    .line 240
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    .line 253
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->indexFiles()V

    .line 247
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v1, v2, -0xc

    .line 248
    .local v1, removals:I
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 252
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    goto :goto_0
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .locals 9
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v6, 0x0

    .line 136
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 139
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_2

    .line 141
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    move-object v0, v6

    .line 171
    :goto_0
    monitor-exit p0

    return-object v0

    .line 147
    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_1

    move-object v0, v6

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .restart local v2       #file:Ljava/io/File;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    .line 166
    .local v5, size:I
    new-array v0, v5, [B

    .line 167
    .local v0, data:[B
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 173
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 136
    .end local v0           #data:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 160
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {p1, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v6

    .line 162
    goto :goto_0

    .line 169
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 170
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-static {p1, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    :try_start_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v6

    .line 171
    goto :goto_0

    .line 173
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .locals 10
    .parameter "session"
    .parameter "sessionData"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, host:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 185
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "sessionData == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v4           #host:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 188
    .restart local v4       #host:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v8

    invoke-static {v4, v8}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 196
    .local v2, existedBefore:Z
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    .local v6, out:Ljava/io/FileOutputStream;
    if-nez v2, :cond_1

    .line 205
    :try_start_3
    iget v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 208
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    :cond_1
    const/4 v7, 0x0

    .line 213
    .local v7, writeSuccessful:Z
    :try_start_4
    invoke-virtual {v6, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 214
    const/4 v7, 0x1

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, closeSuccessful:Z
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    const/4 v0, 0x1

    .line 225
    if-eqz v7, :cond_2

    if-nez v0, :cond_10

    .line 227
    :cond_2
    :try_start_6
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    .end local v0           #closeSuccessful:Z
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #writeSuccessful:Z
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 215
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #writeSuccessful:Z
    :catch_1
    move-exception v1

    .line 216
    .local v1, e:Ljava/io/IOException;
    :try_start_8
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 218
    const/4 v0, 0x0

    .line 220
    .restart local v0       #closeSuccessful:Z
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 221
    const/4 v0, 0x1

    .line 225
    if-eqz v7, :cond_3

    if-nez v0, :cond_b

    .line 227
    :cond_3
    :try_start_a
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 218
    .end local v0           #closeSuccessful:Z
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v8

    const/4 v0, 0x0

    .line 220
    .restart local v0       #closeSuccessful:Z
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 221
    const/4 v0, 0x1

    .line 225
    if-eqz v7, :cond_4

    if-nez v0, :cond_6

    .line 227
    :cond_4
    :try_start_c
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 218
    :goto_1
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 222
    :catch_2
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_d
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 225
    if-eqz v7, :cond_5

    if-nez v0, :cond_7

    .line 227
    :cond_5
    :try_start_e
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .restart local v1       #e:Ljava/io/IOException;
    :cond_7
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v8

    if-eqz v7, :cond_8

    if-nez v0, :cond_9

    .line 227
    :cond_8
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 225
    :goto_2
    throw v8

    .line 230
    :cond_9
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 222
    .restart local v1       #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 223
    :try_start_f
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 225
    if-eqz v7, :cond_a

    if-nez v0, :cond_c

    .line 227
    :cond_a
    :try_start_10
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 230
    :cond_b
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_c
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :catchall_3
    move-exception v8

    if-eqz v7, :cond_d

    if-nez v0, :cond_e

    .line 227
    :cond_d
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 225
    :goto_3
    throw v8

    .line 230
    :cond_e
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    .line 222
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_11
    invoke-static {v4, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 225
    if-eqz v7, :cond_f

    if-nez v0, :cond_11

    .line 227
    :cond_f
    :try_start_12
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    :cond_10
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .restart local v1       #e:Ljava/io/IOException;
    :cond_11
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 225
    .end local v1           #e:Ljava/io/IOException;
    :catchall_4
    move-exception v8

    if-eqz v7, :cond_12

    if-nez v0, :cond_13

    .line 227
    :cond_12
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 225
    :goto_4
    throw v8

    .line 230
    :cond_13
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_4
.end method
