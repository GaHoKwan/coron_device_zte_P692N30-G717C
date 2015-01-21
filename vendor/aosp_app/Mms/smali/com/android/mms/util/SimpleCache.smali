.class public Lcom/android/mms/util/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/SimpleCache$HardReferenceMap;,
        Lcom/android/mms/util/SimpleCache$SoftReferenceMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<TK;TV;>.HardReferenceMap;"
        }
    .end annotation
.end field

.field private final mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<TK;TV;>.SoftReferenceMap;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIFZ)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "maxCapacity"
    .parameter "loadFactor"
    .parameter "useHardReferences"

    .prologue
    .local p0, this:Lcom/android/mms/util/SimpleCache;,"Lcom/android/mms/util/SimpleCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p4, :cond_0

    .line 91
    iput-object v1, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    .line 92
    new-instance v0, Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/util/SimpleCache$HardReferenceMap;-><init>(Lcom/android/mms/util/SimpleCache;IIF)V

    iput-object v0, p0, Lcom/android/mms/util/SimpleCache;->mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/util/SimpleCache$SoftReferenceMap;-><init>(Lcom/android/mms/util/SimpleCache;IIF)V

    iput-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    .line 95
    iput-object v1, p0, Lcom/android/mms/util/SimpleCache;->mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    goto :goto_0
.end method

.method private static unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/SoftReference",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TV;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 120
    .local p0, this:Lcom/android/mms/util/SimpleCache;,"Lcom/android/mms/util/SimpleCache<TK;TV;>;"
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/android/mms/util/SimpleCache;,"Lcom/android/mms/util/SimpleCache<TK;TV;>;"
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/android/mms/util/SimpleCache;->unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/android/mms/util/SimpleCache;,"Lcom/android/mms/util/SimpleCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/android/mms/util/SimpleCache;->unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/android/mms/util/SimpleCache;,"Lcom/android/mms/util/SimpleCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mSoftReferences:Lcom/android/mms/util/SimpleCache$SoftReferenceMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/android/mms/util/SimpleCache;->unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/SimpleCache;->mHardReferences:Lcom/android/mms/util/SimpleCache$HardReferenceMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
