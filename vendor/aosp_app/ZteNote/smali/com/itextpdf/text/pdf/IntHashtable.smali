.class public Lcom/itextpdf/text/pdf/IntHashtable;
.super Ljava/lang/Object;
.source "IntHashtable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;,
        Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private loadFactor:F

.field private transient table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    const/16 v0, 0x96

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>(IF)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 95
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>(IF)V

    .line 96
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 5
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-gez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.capacity.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.load.1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    if-nez p1, :cond_2

    .line 116
    const/4 p1, 0x1

    .line 118
    :cond_2
    iput p2, p0, Lcom/itextpdf/text/pdf/IntHashtable;->loadFactor:F

    .line 119
    new-array v0, p1, [Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 120
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/text/pdf/IntHashtable;->threshold:I

    .line 121
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 341
    .local v1, tab:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    array-length v0, v1

    .local v0, index:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 342
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    .line 344
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    .line 345
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 467
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 468
    .local v3, t:Lcom/itextpdf/text/pdf/IntHashtable;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    array-length v4, v4

    new-array v4, v4, [Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iput-object v4, v3, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 469
    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    array-length v1, v4

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-lez v2, :cond_1

    .line 470
    iget-object v5, v3, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    :goto_1
    aput-object v4, v5, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 474
    .end local v1           #i:I
    .end local v3           #t:Lcom/itextpdf/text/pdf/IntHashtable;
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 473
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    .restart local v1       #i:I
    .restart local v3       #t:Lcom/itextpdf/text/pdf/IntHashtable;
    :cond_1
    return-object v3
.end method

.method public contains(I)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 162
    iget-object v3, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 163
    .local v3, tab:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    array-length v1, v3

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-lez v2, :cond_2

    .line 164
    aget-object v0, v3, v1

    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_1
    if-eqz v0, :cond_1

    .line 165
    iget v4, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    if-ne v4, p1, :cond_0

    .line 166
    const/4 v4, 0x1

    .line 170
    .end local v0           #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_2
    return v4

    .line 164
    .restart local v0       #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    goto :goto_1

    :cond_1
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 170
    .end local v0           #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public containsKey(I)Z
    .locals 6
    .parameter "key"

    .prologue
    .line 199
    iget-object v3, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 200
    .local v3, tab:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    move v1, p1

    .line 201
    .local v1, hash:I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 202
    .local v2, index:I
    aget-object v0, v3, v2

    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 203
    iget v4, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    if-ne v4, v1, :cond_0

    iget v4, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    if-ne v4, p1, :cond_0

    .line 204
    const/4 v4, 0x1

    .line 207
    :goto_1
    return v4

    .line 202
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    goto :goto_0

    .line 207
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public containsValue(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->contains(I)Z

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 6
    .parameter "key"

    .prologue
    .line 220
    iget-object v3, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 221
    .local v3, tab:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    move v1, p1

    .line 222
    .local v1, hash:I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 223
    .local v2, index:I
    aget-object v0, v3, v2

    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 224
    iget v4, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    if-ne v4, v1, :cond_0

    iget v4, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    if-ne v4, p1, :cond_0

    .line 225
    iget v4, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    .line 228
    :goto_1
    return v4

    .line 223
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    goto :goto_0

    .line 228
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/itextpdf/text/pdf/IntHashtable$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;-><init>([Lcom/itextpdf/text/pdf/IntHashtable$Entry;)V

    return-object v0
.end method

.method public getKeys()[I
    .locals 8

    .prologue
    .line 437
    iget v7, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    new-array v6, v7, [I

    .line 438
    .local v6, res:[I
    const/4 v4, 0x0

    .line 439
    .local v4, ptr:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    array-length v2, v7

    .line 440
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    move v5, v4

    .line 442
    .end local v4           #ptr:I
    .local v5, ptr:I
    :goto_0
    if-nez v1, :cond_0

    move v3, v2

    .line 443
    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    if-lez v3, :cond_0

    iget-object v7, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    aget-object v1, v7, v2

    if-nez v1, :cond_0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 444
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_0
    if-nez v1, :cond_1

    .line 450
    return-object v6

    .line 446
    :cond_1
    move-object v0, v1

    .line 447
    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 448
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    iget v7, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    aput v7, v6, v5

    move v5, v4

    .line 449
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_0
.end method

.method public getOneKey()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 454
    iget v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    if-nez v4, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v3

    .line 456
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    array-length v1, v4

    .line 457
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    move v2, v1

    .line 458
    .end local v1           #index:I
    .local v2, index:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    aget-object v0, v4, v1

    if-nez v0, :cond_2

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 459
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_2
    if-eqz v0, :cond_0

    .line 461
    iget v3, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(II)I
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const v7, 0x7fffffff

    .line 279
    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 280
    .local v4, tab:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    move v1, p1

    .line 281
    .local v1, hash:I
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 282
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 283
    iget v5, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    if-ne v5, v1, :cond_0

    iget v5, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    if-ne v5, p1, :cond_0

    .line 284
    iget v3, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    .line 285
    .local v3, old:I
    iput p2, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    .line 302
    .end local v3           #old:I
    :goto_1
    return v3

    .line 282
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    goto :goto_0

    .line 290
    :cond_1
    iget v5, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    iget v6, p0, Lcom/itextpdf/text/pdf/IntHashtable;->threshold:I

    if-lt v5, v6, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/IntHashtable;->rehash()V

    .line 294
    iget-object v4, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 295
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 299
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .end local v0           #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;-><init>(IIILcom/itextpdf/text/pdf/IntHashtable$Entry;)V

    .line 300
    .restart local v0       #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    aput-object v0, v4, v2

    .line 301
    iget v5, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    .line 302
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected rehash()V
    .locals 11

    .prologue
    .line 241
    iget-object v9, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    array-length v7, v9

    .line 242
    .local v7, oldCapacity:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 244
    .local v8, oldMap:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 245
    .local v4, newCapacity:I
    new-array v5, v4, [Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 247
    .local v5, newMap:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    int-to-float v9, v4

    iget v10, p0, Lcom/itextpdf/text/pdf/IntHashtable;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/itextpdf/text/pdf/IntHashtable;->threshold:I

    .line 248
    iput-object v5, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 250
    move v1, v7

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-lez v2, :cond_1

    .line 251
    aget-object v6, v8, v1

    .local v6, old:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_1
    if-eqz v6, :cond_0

    .line 252
    move-object v0, v6

    .line 253
    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    iget-object v6, v6, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 255
    iget v9, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 256
    .local v3, index:I
    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 257
    aput-object v0, v5, v3

    goto :goto_1

    .end local v0           #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    .end local v3           #index:I
    :cond_0
    move v2, v1

    .line 258
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 260
    .end local v2           #i:I
    .end local v6           #old:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public remove(I)I
    .locals 9
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 317
    iget-object v5, p0, Lcom/itextpdf/text/pdf/IntHashtable;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 318
    .local v5, tab:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    move v1, p1

    .line 319
    .local v1, hash:I
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    .line 320
    .local v2, index:I
    aget-object v0, v5, v2

    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    const/4 v4, 0x0

    .local v4, prev:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 321
    iget v7, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    if-ne v7, v1, :cond_1

    iget v7, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    if-ne v7, p1, :cond_1

    .line 322
    if-eqz v4, :cond_0

    .line 323
    iget-object v7, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iput-object v7, v4, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 327
    :goto_1
    iget v7, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    .line 328
    iget v3, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    .line 329
    .local v3, oldValue:I
    iput v6, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    .line 333
    .end local v3           #oldValue:I
    :goto_2
    return v3

    .line 325
    :cond_0
    iget-object v7, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    aput-object v7, v5, v2

    goto :goto_1

    .line 320
    :cond_1
    move-object v4, v0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    goto :goto_0

    :cond_2
    move v3, v6

    .line 333
    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/itextpdf/text/pdf/IntHashtable;->count:I

    return v0
.end method

.method public toOrderedKeys()[I
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/IntHashtable;->getKeys()[I

    move-result-object v0

    .line 432
    .local v0, res:[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 433
    return-object v0
.end method
