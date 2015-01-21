.class final Ljava/nio/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SelectorImpl$UnaddableSet;
    }
.end annotation


# instance fields
.field final keysLock:Ljava/lang/Object;

.field private final mutableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/SelectionKeyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final pollFds:Ljava/util/UnsafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/UnsafeArrayList",
            "<",
            "Llibcore/io/StructPollfd;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeupIn:Ljava/io/FileDescriptor;

.field private final wakeupOut:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 54
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    .line 56
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    .line 62
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    .line 65
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    .line 71
    new-instance v2, Ljava/nio/SelectorImpl$UnaddableSet;

    iget-object v3, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/nio/SelectorImpl$UnaddableSet;-><init>(Ljava/util/Set;)V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 81
    new-instance v2, Ljava/util/UnsafeArrayList;

    const-class v3, Llibcore/io/StructPollfd;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Ljava/util/UnsafeArrayList;-><init>(Ljava/lang/Class;I)V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    .line 92
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 93
    .local v1, pipeFds:[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    .line 94
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    .line 95
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 96
    iget-object v2, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    new-instance v3, Llibcore/io/StructPollfd;

    invoke-direct {v3}, Llibcore/io/StructPollfd;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/UnsafeArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    sget v4, Llibcore/io/OsConstants;->POLLIN:I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/nio/SelectorImpl;->setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 98
    .end local v1           #pipeFds:[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 99
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private checkClosed()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method private doCancel()I
    .locals 6

    .prologue
    .line 301
    const/4 v3, 0x0

    .line 303
    .local v3, deselected:I
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v1

    .line 304
    .local v1, cancelledKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v1

    .line 305
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 306
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 307
    .local v2, currentKey:Ljava/nio/channels/SelectionKey;
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    move-object v0, v2

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectionKey;

    move-object v5, v0

    invoke-virtual {p0, v5}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 309
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    .end local v2           #currentKey:Ljava/nio/channels/SelectionKey;
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 315
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v1

    .line 317
    return v3

    .line 315
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private ensurePollFdsCapacity()V
    .locals 2

    .prologue
    .line 225
    :goto_0
    iget-object v0, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v0}, Ljava/util/UnsafeArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    new-instance v1, Llibcore/io/StructPollfd;

    invoke-direct {v1}, Llibcore/io/StructPollfd;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/UnsafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method private preparePollFds()V
    .locals 7

    .prologue
    .line 207
    const/4 v1, 0x1

    .line 208
    .local v1, i:I
    iget-object v6, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/SelectionKeyImpl;

    .line 209
    .local v5, key:Ljava/nio/SelectionKeyImpl;
    invoke-virtual {v5}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v4

    .line 210
    .local v4, interestOps:I
    const/4 v0, 0x0

    .line 211
    .local v0, eventMask:S
    and-int/lit8 v6, v4, 0x11

    if-eqz v6, :cond_1

    .line 212
    sget v6, Llibcore/io/OsConstants;->POLLIN:I

    or-int/2addr v6, v0

    int-to-short v0, v6

    .line 214
    :cond_1
    and-int/lit8 v6, v4, 0xc

    if-eqz v6, :cond_2

    .line 215
    sget v6, Llibcore/io/OsConstants;->POLLOUT:I

    or-int/2addr v6, v0

    int-to-short v0, v6

    .line 217
    :cond_2
    if-eqz v0, :cond_0

    .line 218
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v5}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/FileDescriptorChannel;

    invoke-interface {v6}, Ljava/nio/FileDescriptorChannel;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {p0, v1, v6, v0, v5}, Ljava/nio/SelectorImpl;->setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 221
    .end local v0           #eventMask:S
    .end local v4           #interestOps:I
    .end local v5           #key:Ljava/nio/SelectionKeyImpl;
    :cond_3
    return-void
.end method

.method private processPollFds()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 234
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v8, v10}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llibcore/io/StructPollfd;

    iget-short v8, v8, Llibcore/io/StructPollfd;->revents:S

    sget v9, Llibcore/io/OsConstants;->POLLIN:I

    if-ne v8, v9, :cond_1

    .line 236
    const/16 v8, 0x8

    new-array v0, v8, [B

    .line 237
    .local v0, buffer:[B
    :cond_0
    iget-object v8, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    const/4 v9, 0x1

    invoke-static {v8, v0, v10, v9}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v8

    if-gtz v8, :cond_0

    .line 241
    .end local v0           #buffer:[B
    :cond_1
    const/4 v5, 0x0

    .line 242
    .local v5, readyKeyCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v8}, Ljava/util/UnsafeArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 243
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v8, v1}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llibcore/io/StructPollfd;

    .line 244
    .local v4, pollFd:Llibcore/io/StructPollfd;
    iget-short v8, v4, Llibcore/io/StructPollfd;->revents:S

    if-nez v8, :cond_3

    .line 242
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_3
    iget-object v8, v4, Llibcore/io/StructPollfd;->fd:Ljava/io/FileDescriptor;

    if-nez v8, :cond_5

    .line 287
    .end local v4           #pollFd:Llibcore/io/StructPollfd;
    :cond_4
    return v5

    .line 251
    .restart local v4       #pollFd:Llibcore/io/StructPollfd;
    :cond_5
    iget-object v2, v4, Llibcore/io/StructPollfd;->userData:Ljava/lang/Object;

    check-cast v2, Ljava/nio/SelectionKeyImpl;

    .line 253
    .local v2, key:Ljava/nio/SelectionKeyImpl;
    iput-object v11, v4, Llibcore/io/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 254
    iput-object v11, v4, Llibcore/io/StructPollfd;->userData:Ljava/lang/Object;

    .line 256
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v3

    .line 257
    .local v3, ops:I
    const/4 v6, 0x0

    .line 258
    .local v6, selectedOps:I
    iget-short v8, v4, Llibcore/io/StructPollfd;->revents:S

    sget v9, Llibcore/io/OsConstants;->POLLHUP:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    .line 261
    or-int/2addr v6, v3

    .line 263
    :cond_6
    iget-short v8, v4, Llibcore/io/StructPollfd;->revents:S

    sget v9, Llibcore/io/OsConstants;->POLLIN:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    .line 264
    and-int/lit8 v8, v3, 0x11

    or-int/2addr v6, v8

    .line 266
    :cond_7
    iget-short v8, v4, Llibcore/io/StructPollfd;->revents:S

    sget v9, Llibcore/io/OsConstants;->POLLOUT:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    .line 267
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 268
    and-int/lit8 v8, v3, 0x4

    or-int/2addr v6, v8

    .line 274
    :cond_8
    :goto_2
    if-eqz v6, :cond_2

    .line 275
    iget-object v8, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 276
    .local v7, wasSelected:Z
    if-eqz v7, :cond_a

    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    move-result v8

    if-eq v8, v6, :cond_a

    .line 277
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    move-result v8

    or-int/2addr v8, v6

    invoke-virtual {v2, v8}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    .end local v7           #wasSelected:Z
    :cond_9
    and-int/lit8 v8, v3, 0x8

    or-int/2addr v6, v8

    goto :goto_2

    .line 279
    .restart local v7       #wasSelected:Z
    :cond_a
    if-nez v7, :cond_2

    .line 280
    invoke-virtual {v2, v6}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    .line 281
    iget-object v8, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private selectInternal(J)I
    .locals 9
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v5, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 167
    :try_start_1
    iget-object v6, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 168
    :try_start_2
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    .line 169
    const-wide/16 v7, 0x0

    cmp-long v4, p1, v7

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 170
    .local v1, isBlock:Z
    :goto_0
    iget-object v7, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->preparePollFds()V

    .line 172
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    const/4 v2, -0x1

    .line 175
    .local v2, rc:I
    if-eqz v1, :cond_0

    .line 176
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->begin()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 179
    :cond_0
    :try_start_5
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v4}, Ljava/util/UnsafeArrayList;->array()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Llibcore/io/StructPollfd;

    long-to-int v8, p1

    invoke-interface {v7, v4, v8}, Llibcore/io/Os;->poll([Llibcore/io/StructPollfd;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    .line 186
    :cond_1
    if-eqz v1, :cond_2

    .line 187
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->end()V

    .line 191
    :cond_2
    if-lez v2, :cond_3

    invoke-direct {p0}, Ljava/nio/SelectorImpl;->processPollFds()I

    move-result v3

    .line 192
    .local v3, readyCount:I
    :cond_3
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    move-result v4

    sub-int/2addr v3, v4

    .line 193
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return v3

    .end local v1           #isBlock:Z
    .end local v2           #rc:I
    .end local v3           #readyCount:I
    :cond_4
    move v1, v3

    .line 169
    goto :goto_0

    .line 172
    .restart local v1       #isBlock:Z
    :catchall_0
    move-exception v4

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v4

    .line 194
    .end local v1           #isBlock:Z
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4

    .line 195
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v4

    .line 196
    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v4

    .line 180
    .restart local v1       #isBlock:Z
    .restart local v2       #rc:I
    :catch_0
    move-exception v0

    .line 181
    .local v0, errnoException:Llibcore/io/ErrnoException;
    :try_start_d
    iget v4, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EINTR:I

    if-eq v4, v7, :cond_1

    .line 182
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 186
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    :catchall_4
    move-exception v4

    if-eqz v1, :cond_5

    .line 187
    :try_start_e
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->end()V

    :cond_5
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method private setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .parameter "i"
    .parameter "fd"
    .parameter "events"
    .parameter "object"

    .prologue
    .line 200
    iget-object v1, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v1, p1}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/StructPollfd;

    .line 201
    .local v0, pollFd:Llibcore/io/StructPollfd;
    iput-object p2, v0, Llibcore/io/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 202
    int-to-short v1, p3

    iput-short v1, v0, Llibcore/io/StructPollfd;->events:S

    .line 203
    iput-object p4, v0, Llibcore/io/StructPollfd;->userData:Ljava/lang/Object;

    .line 204
    return-void
.end method


# virtual methods
.method protected implCloseSelector()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v3, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    :try_start_1
    iget-object v4, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 109
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 110
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    .line 111
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/SelectionKeyImpl;

    .line 112
    .local v1, sk:Ljava/nio/channels/SelectionKey;
    check-cast v1, Ljava/nio/channels/spi/AbstractSelectionKey;

    .end local v1           #sk:Ljava/nio/channels/SelectionKey;
    invoke-virtual {p0, v1}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    goto :goto_0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 115
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 116
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 114
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 117
    return-void
.end method

.method public declared-synchronized keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    .line 137
    iget-object v0, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .parameter "channel"
    .parameter "operations"
    .parameter "attachment"

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 124
    :cond_0
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    new-instance v0, Ljava/nio/SelectionKeyImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Ljava/nio/SelectionKeyImpl;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V

    .line 128
    .local v0, selectionKey:Ljava/nio/SelectionKeyImpl;
    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->ensurePollFdsCapacity()V

    .line 130
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 131
    .end local v0           #selectionKey:Ljava/nio/SelectionKeyImpl;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 132
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public select()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 152
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

    .end local p1
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public selectNow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized selectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    .line 292
    iget-object v0, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 5

    .prologue
    .line 322
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-object p0

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method
