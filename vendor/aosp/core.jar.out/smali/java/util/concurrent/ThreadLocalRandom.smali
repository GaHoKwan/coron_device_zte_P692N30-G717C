.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static final localRandom:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 77
    return-void
.end method

.method public static current()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .parameter "bits"

    .prologue
    .line 101
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    .line 102
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextDouble(D)D
    .locals 2
    .parameter "n"

    .prologue
    .line 176
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 4
    .parameter "least"
    .parameter "bound"

    .prologue
    .line 192
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public nextInt(II)I
    .locals 1
    .parameter "least"
    .parameter "bound"

    .prologue
    .line 116
    if-lt p1, p2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 118
    :cond_0
    sub-int v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public nextLong(J)J
    .locals 9
    .parameter "n"

    .prologue
    .line 131
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gtz v7, :cond_0

    .line 132
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "n must be positive"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 138
    :cond_0
    const-wide/16 v5, 0x0

    .line 139
    .local v5, offset:J
    :goto_0
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, p1, v7

    if-ltz v7, :cond_3

    .line 140
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/util/concurrent/ThreadLocalRandom;->next(I)I

    move-result v0

    .line 141
    .local v0, bits:I
    const/4 v7, 0x1

    ushr-long v1, p1, v7

    .line 142
    .local v1, half:J
    and-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_2

    move-wide v3, v1

    .line 143
    .local v3, nextn:J
    :goto_1
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_1

    .line 144
    sub-long v7, p1, v3

    add-long/2addr v5, v7

    .line 145
    :cond_1
    move-wide p1, v3

    .line 146
    goto :goto_0

    .line 142
    .end local v3           #nextn:J
    :cond_2
    sub-long v3, p1, v1

    goto :goto_1

    .line 147
    .end local v0           #bits:I
    .end local v1           #half:J
    :cond_3
    long-to-int v7, p1

    invoke-virtual {p0, v7}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v5

    return-wide v7
.end method

.method public nextLong(JJ)J
    .locals 2
    .parameter "least"
    .parameter "bound"

    .prologue
    .line 161
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 163
    :cond_0
    sub-long v0, p3, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 4
    .parameter "seed"

    .prologue
    .line 95
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 97
    :cond_0
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    .line 98
    return-void
.end method
