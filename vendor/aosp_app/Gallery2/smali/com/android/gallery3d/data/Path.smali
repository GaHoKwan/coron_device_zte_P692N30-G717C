.class public Lcom/android/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/Path"

.field private static sRoot:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcom/android/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mMtkInclusion:I

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/android/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    .line 66
    iput-object p2, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static clearAll()V
    .locals 4

    .prologue
    .line 294
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 295
    :try_start_0
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll()V
    .locals 3

    .prologue
    .line 300
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/data/Path;->dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method static dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "p"
    .parameter "prefix1"
    .parameter "prefix2"

    .prologue
    .line 304
    const-class v8, Lcom/android/gallery3d/data/Path;

    monitor-enter v8

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    .line 306
    .local v6, obj:Lcom/android/gallery3d/data/MediaObject;
    const-string v9, "Gallery2/Path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v6, :cond_0

    const-string v7, "null"

    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v7, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-eqz v7, :cond_3

    .line 309
    iget-object v7, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v7}, Lcom/android/gallery3d/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object v1

    .line 310
    .local v1, childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 311
    .local v5, n:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 312
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v7, v4}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 313
    .local v0, child:Lcom/android/gallery3d/data/Path;
    if-nez v0, :cond_1

    .line 314
    add-int/lit8 v2, v2, 0x1

    .line 315
    goto :goto_1

    .line 306
    .end local v0           #child:Lcom/android/gallery3d/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #n:I
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 317
    .restart local v0       #child:Lcom/android/gallery3d/data/Path;
    .restart local v1       #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #n:I
    :cond_1
    const-string v7, "Gallery2/Path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_2

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/android/gallery3d/data/Path;->dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    .end local v0           #child:Lcom/android/gallery3d/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #n:I
    .end local v6           #obj:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 321
    .restart local v0       #child:Lcom/android/gallery3d/data/Path;
    .restart local v1       #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #n:I
    .restart local v6       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/android/gallery3d/data/Path;->dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    .end local v0           #child:Lcom/android/gallery3d/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #n:I
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 6
    .parameter "s"

    .prologue
    .line 170
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 174
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 176
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, segments:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 178
    .local v0, current:Lcom/android/gallery3d/data/Path;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 179
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    monitor-exit v4

    return-object v0

    .line 182
    .end local v0           #current:Lcom/android/gallery3d/data/Path;
    .end local v1           #i:I
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "s"
    .parameter "mtkInclusion"

    .prologue
    .line 186
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 187
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, segments:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 189
    .local v0, current:Lcom/android/gallery3d/data/Path;
    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 191
    aget-object v3, v2, v1

    invoke-virtual {v0, v3, p1}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    monitor-exit v4

    return-object v0

    .line 194
    .end local v0           #current:Lcom/android/gallery3d/data/Path;
    .end local v1           #i:I
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 214
    .local v4, n:I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 237
    :goto_0
    return-object v5

    .line 215
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 216
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 220
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 224
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 225
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 223
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 226
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 227
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 229
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 230
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v2, v3, 0x1

    .line 234
    goto :goto_1

    .line 235
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 236
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 244
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 245
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 249
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 253
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 254
    .local v1, c:C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 252
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 256
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 258
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 259
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 261
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v2, v3, 0x1

    .line 263
    goto :goto_0

    .line 264
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 265
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 266
    return-object v5
.end method


# virtual methods
.method public clearObject()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 149
    return-void
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getChild(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"
    .parameter "mtkInclusion"

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 123
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(JI)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"
    .parameter "mtkInclusion"

    .prologue
    .line 127
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "segment"

    .prologue
    .line 70
    move-object v2, p1

    .line 71
    .local v2, segmentExt:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/Path;->mMtkInclusion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    :cond_0
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v3, :cond_2

    .line 76
    new-instance v3, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v3}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 82
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 83
    .local v0, p:Lcom/android/gallery3d/data/Path;
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v4

    move-object v1, v0

    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .local v1, p:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 78
    .end local v1           #p:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 79
    .restart local v0       #p:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_1

    monitor-exit v4

    move-object v1, v0

    .restart local v1       #p:Ljava/lang/Object;
    goto :goto_0

    .line 85
    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .end local v1           #p:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "segment"
    .parameter "mtkInclusion"

    .prologue
    .line 89
    move-object v2, p1

    .line 90
    .local v2, segmentExt:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    :cond_0
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v3, :cond_2

    .line 95
    new-instance v3, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v3}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 101
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 102
    .local v0, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 103
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v4

    move-object v1, v0

    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .local v1, p:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 97
    .end local v1           #p:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 98
    .restart local v0       #p:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_1

    monitor-exit v4

    move-object v1, v0

    .restart local v1       #p:Ljava/lang/Object;
    goto :goto_0

    .line 105
    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .end local v1           #p:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMtkInclusion()I
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 51
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/data/Path;->mMtkInclusion:I

    monitor-exit v1

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObject()Lcom/android/gallery3d/data/MediaObject;
    .locals 2

    .prologue
    .line 138
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaObject;

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/android/gallery3d/data/Path;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    .line 275
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 276
    move-object v0, p0

    .line 277
    .local v0, current:Lcom/android/gallery3d/data/Path;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 280
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v1, v3, :cond_1

    .line 281
    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 283
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setMtkInclusion(I)V
    .locals 3
    .parameter "mtkInclusion"

    .prologue
    .line 55
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 56
    move-object v0, p0

    .line 57
    .local v0, current:Lcom/android/gallery3d/data/Path;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    monitor-exit v2

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/data/Path;->mMtkInclusion:I

    .line 59
    monitor-exit v2

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 131
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 198
    const-class v6, Lcom/android/gallery3d/data/Path;

    monitor-enter v6

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, n:I
    move-object v3, p0

    .local v3, p:Lcom/android/gallery3d/data/Path;
    :goto_0
    :try_start_0
    sget-object v5, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_0

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 200
    iget-object v3, v3, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 203
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    .line 204
    .local v4, segments:[Ljava/lang/String;
    add-int/lit8 v0, v2, -0x1

    .line 205
    .local v0, i:I
    move-object v3, p0

    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_1

    .line 206
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, v3, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 205
    iget-object v3, v3, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 208
    :cond_1
    monitor-exit v6

    return-object v4

    .line 209
    .end local v1           #i:I
    .end local v4           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 154
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, segments:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 157
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 161
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
