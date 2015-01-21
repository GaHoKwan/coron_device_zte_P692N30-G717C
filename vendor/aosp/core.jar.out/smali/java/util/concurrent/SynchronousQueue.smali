.class public Ljava/util/concurrent/SynchronousQueue;
.super Ljava/util/AbstractQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$WaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$EmptyIterator;,
        Ljava/util/concurrent/SynchronousQueue$TransferQueue;,
        Ljava/util/concurrent/SynchronousQueue$TransferStack;,
        Ljava/util/concurrent/SynchronousQueue$Transferer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final NCPUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final maxTimedSpins:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final maxUntimedSpins:I = 0x0

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field static final spinForTimeoutThreshold:J = 0x3e8L


# instance fields
.field private qlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile transient transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

.field private waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

.field private waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljava/util/concurrent/SynchronousQueue;->NCPUS:I

    .line 163
    sget v0, Ljava/util/concurrent/SynchronousQueue;->NCPUS:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    .line 170
    sget v0, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    mul-int/lit8 v0, v0, 0x10

    sput v0, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    return-void

    .line 163
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 825
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    .line 826
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "fair"

    .prologue
    .line 834
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 835
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    .line 836
    return-void

    .line 835
    :cond_0
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;-><init>()V

    goto :goto_0
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .parameter "UNSAFE"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 1165
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1166
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1170
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1154
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1155
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    instance-of v0, v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    if-eqz v0, :cond_0

    .line 1156
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    .line 1159
    :goto_0
    return-void

    .line 1158
    :cond_0
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1138
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    instance-of v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    .line 1139
    .local v0, fair:Z
    if-eqz v0, :cond_0

    .line 1140
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1141
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 1142
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 1149
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1150
    return-void

    .line 1145
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1146
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 1147
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 963
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 973
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 1081
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1082
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1083
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1084
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1085
    :cond_1
    const/4 v1, 0x0

    .line 1086
    .local v1, n:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2

    .line 1087
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1090
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1101
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1102
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1104
    :cond_1
    const/4 v1, 0x0

    .line 1105
    .local v1, n:I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2

    .line 1106
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 935
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1039
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    .line 882
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 883
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    .line 864
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 865
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v1, p1, v0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 868
    :goto_0
    return v0

    .line 867
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 868
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 911
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 912
    .local v0, e:Ljava/lang/Object;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 913
    :cond_0
    return-object v0

    .line 914
    :cond_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 846
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 847
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 848
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 849
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 851
    :cond_1
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 955
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 984
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1017
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 945
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 894
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 895
    .local v0, e:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 896
    return-object v0

    .line 897
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 898
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1057
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p0, this:Ljava/util/concurrent/SynchronousQueue;,"Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 1071
    :cond_0
    return-object p1
.end method
