.class public Ljava/util/concurrent/ConcurrentSkipListMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BASE_HEADER:Ljava/lang/Object; = null

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final LT:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

.field private static final seedGenerator:Ljava/util/Random; = null

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient randomSeed:I

.field private transient values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 299
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    .line 304
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    .line 3083
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    .line 3084
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 3085
    .local v1, k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    return-void

    .line 3087
    :catch_0
    move-exception v0

    .line 3088
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1352
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1353
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1354
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1355
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1366
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1367
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1368
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1381
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1383
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1384
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    .line 1385
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, m:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1397
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1398
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1399
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1400
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    return-object v0
.end method

.method private addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V
    .locals 9
    .parameter
    .parameter
    .parameter "indexLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    move v1, p3

    .line 943
    .local v1, insertionLevel:I
    iget-object v8, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v8, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 944
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    if-nez v3, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 949
    :cond_0
    iget v2, p2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 950
    .local v2, j:I
    move-object v5, p2

    .line 951
    .local v5, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 952
    .local v6, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v7, p1

    .line 954
    .local v7, t:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_2

    .line 955
    iget-object v4, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 957
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 958
    .local v0, c:I
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 959
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 961
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 962
    goto :goto_0

    .line 964
    :cond_1
    if-lez v0, :cond_2

    .line 965
    move-object v5, v6

    .line 966
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 967
    goto :goto_0

    .line 971
    .end local v0           #c:I
    .end local v4           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    if-ne v2, v1, :cond_5

    .line 973
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 974
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 983
    :cond_3
    :goto_1
    return-void

    .line 977
    :cond_4
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 979
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_5

    .line 981
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 982
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_1

    .line 987
    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_6

    if-ge v2, p3, :cond_6

    .line 988
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 989
    :cond_6
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 990
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1427
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p1, :cond_0

    .line 1428
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1430
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1431
    .local v2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1435
    .local v0, basepred:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v10, preds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v4, v14, :cond_1

    .line 1439
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1440
    :cond_1
    move-object v11, v2

    .line 1441
    .local v11, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v4, :cond_2

    .line 1442
    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1441
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1446
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1448
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1449
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1450
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v8

    .line 1451
    .local v8, j:I
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v8, v14, :cond_4

    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v8, v14, 0x1

    .line 1452
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 1453
    .local v9, k:Ljava/lang/Object;,"TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 1454
    .local v12, v:Ljava/lang/Object;,"TV;"
    if-eqz v9, :cond_5

    if-nez v12, :cond_6

    .line 1455
    :cond_5
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1456
    :cond_6
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1457
    .local v13, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1458
    move-object v0, v13

    .line 1459
    if-lez v8, :cond_3

    .line 1460
    const/4 v5, 0x0

    .line 1461
    .local v5, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v4, 0x1

    move-object v6, v5

    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v3, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    if-gt v4, v8, :cond_a

    .line 1462
    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v5, v13, v6, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1463
    .end local v6           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v4, v14, :cond_9

    .line 1464
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v2, v14, v3, v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1466
    .end local v3           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_7

    .line 1467
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v5, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1468
    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1461
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v6       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3

    .line 1470
    .end local v3           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_7
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1474
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v8           #j:I
    .end local v9           #k:Ljava/lang/Object;,"TK;"
    .end local v12           #v:Ljava/lang/Object;,"TV;"
    .end local v13           #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_8
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1475
    return-void

    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .restart local v3       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8       #j:I
    .restart local v9       #k:Ljava/lang/Object;,"TK;"
    .restart local v12       #v:Ljava/lang/Object;,"TV;"
    .restart local v13       #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_9
    move-object v2, v3

    .end local v3           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v6       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_a
    move-object v2, v3

    .end local v3           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private clearIndexToFirst()V
    .locals 3

    .prologue
    .line 1143
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1145
    .local v0, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1146
    .local v1, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_1

    .line 1149
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v2, :cond_3

    .line 1150
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 1151
    :cond_3
    return-void
.end method

.method private comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 630
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 631
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;-><init>(Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 633
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "okey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 798
    .local v0, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 799
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 800
    const/4 v2, 0x0

    .line 803
    :goto_0
    return-object v2

    .line 801
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 802
    .local v2, v:Ljava/lang/Object;
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, kkey:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 820
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 821
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 823
    .local v5, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v5, :cond_4

    .line 824
    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 825
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v5, v8, :cond_0

    .line 827
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 828
    .local v6, v:Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 829
    invoke-virtual {v5, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 832
    :cond_1
    if-eq v6, v5, :cond_0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 834
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 835
    .local v1, c:I
    if-lez v1, :cond_2

    .line 836
    move-object v0, v5

    .line 837
    move-object v5, v2

    .line 838
    goto :goto_1

    .line 840
    :cond_2
    if-nez v1, :cond_4

    .line 841
    if-nez p3, :cond_3

    invoke-virtual {v5, v6, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 855
    .end local v1           #c:I
    .end local v2           #f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v6           #v:Ljava/lang/Object;
    :cond_3
    :goto_2
    return-object v6

    .line 849
    :cond_4
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v7, p1, p2, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 850
    .local v7, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {v0, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 852
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v4

    .line 853
    .local v4, level:I
    if-lez v4, :cond_5

    .line 854
    invoke-direct {p0, v7, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V

    .line 855
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    const/4 v5, 0x0

    .line 759
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 760
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 762
    .local v3, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_2

    move-object v3, v5

    .line 778
    .end local v3           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    :goto_2
    return-object v3

    .line 764
    .restart local v3       #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 765
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v3, v6, :cond_0

    .line 767
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 768
    .local v4, v:Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 769
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 772
    :cond_3
    if-eq v4, v3, :cond_0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 774
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 775
    .local v1, c:I
    if-eqz v1, :cond_1

    .line 777
    if-gez v1, :cond_4

    move-object v3, v5

    .line 778
    goto :goto_2

    .line 779
    :cond_4
    move-object v0, v3

    .line 780
    move-object v3, v2

    .line 781
    goto :goto_1
.end method

.method private findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    if-nez p1, :cond_0

    .line 683
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 685
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 686
    .local v3, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 688
    .local v4, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 689
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 690
    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 691
    .local v1, k:Ljava/lang/Object;,"TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 692
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 694
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 695
    goto :goto_0

    .line 697
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    .line 698
    move-object v3, v4

    .line 699
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 700
    goto :goto_0

    .line 703
    .end local v1           #k:Ljava/lang/Object;,"TK;"
    .end local v2           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 704
    .local v0, d:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 705
    move-object v3, v0

    .line 706
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0

    .line 708
    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v5
.end method

.method private findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1215
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1218
    .local v1, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v2, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 1219
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1220
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_0

    .line 1224
    :cond_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_1

    .line 1225
    move-object v1, v2

    .line 1226
    goto :goto_1

    .line 1229
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v0, d:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 1230
    move-object v1, v0

    goto :goto_1

    .line 1232
    :cond_2
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v3
.end method

.method private insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V
    .locals 15
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 888
    .local v1, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v8, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 890
    .local v8, max:I
    move/from16 v0, p2

    if-gt v0, v8, :cond_1

    .line 891
    const/4 v3, 0x0

    .line 892
    .local v3, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x1

    .local v2, i:I
    move-object v4, v3

    .end local v3           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v4, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    move/from16 v0, p2

    if-gt v2, v0, :cond_0

    .line 893
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 892
    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_0

    .line 894
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v4, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    .line 931
    :goto_1
    return-void

    .line 905
    .end local v2           #i:I
    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    add-int/lit8 p2, v8, 0x1

    .line 906
    add-int/lit8 v14, p2, 0x1

    new-array v5, v14, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v5, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 907
    .local v5, idxs:[Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x0

    .line 908
    .restart local v3       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x1

    .restart local v2       #i:I
    move-object v4, v3

    .end local v3           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_2
    move/from16 v0, p2

    if-gt v2, v0, :cond_2

    .line 909
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v3, v5, v2

    .line 908
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_2

    .line 914
    :cond_2
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 915
    .local v13, oldh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v11, v13, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 916
    .local v11, oldLevel:I
    move/from16 v0, p2

    if-gt v0, v11, :cond_3

    .line 917
    move/from16 v7, p2

    .line 929
    .local v7, k:I
    :goto_3
    aget-object v14, v5, v7

    invoke-direct {p0, v14, v13, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    goto :goto_1

    .line 920
    .end local v7           #k:I
    :cond_3
    move-object v9, v13

    .line 921
    .local v9, newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v12, v13, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 922
    .local v12, oldbase:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    add-int/lit8 v6, v11, 0x1

    .local v6, j:I
    move-object v10, v9

    .end local v9           #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v10, newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    move/from16 v0, p2

    if-gt v6, v0, :cond_4

    .line 923
    new-instance v9, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    aget-object v14, v5, v6

    invoke-direct {v9, v12, v10, v14, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 922
    .end local v10           #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v9       #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    add-int/lit8 v6, v6, 0x1

    move-object v10, v9

    .end local v9           #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v10       #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    .line 924
    :cond_4
    invoke-direct {p0, v13, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 925
    move v7, v11

    .line 926
    .restart local v7       #k:I
    goto :goto_3
.end method

.method private randomLevel()I
    .locals 3

    .prologue
    .line 870
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 871
    .local v1, x:I
    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 872
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 873
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 874
    const v2, -0x7fffffff

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 875
    const/4 v0, 0x0

    .line 878
    :cond_0
    return v0

    .line 876
    :cond_1
    const/4 v0, 0x1

    .line 877
    .local v0, level:I
    :goto_0
    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 15
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1512
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1514
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1524
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1525
    .local v1, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1526
    .local v0, basepred:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    .local v9, preds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v3, v14, :cond_0

    .line 1528
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1529
    :cond_0
    move-object v10, v1

    .line 1530
    .local v10, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v3, :cond_2

    .line 1531
    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1532
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1530
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v5, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, j:I
    .local v7, k:Ljava/lang/Object;
    .local v8, key:Ljava/lang/Object;,"TK;"
    .local v11, v:Ljava/lang/Object;
    .local v12, val:Ljava/lang/Object;,"TV;"
    .local v13, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    move-object v1, v2

    .line 1536
    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6           #j:I
    .end local v7           #k:Ljava/lang/Object;
    .end local v8           #key:Ljava/lang/Object;,"TK;"
    .end local v11           #v:Ljava/lang/Object;
    .end local v12           #val:Ljava/lang/Object;,"TV;"
    .end local v13           #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 1537
    .restart local v7       #k:Ljava/lang/Object;
    if-nez v7, :cond_3

    .line 1564
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1565
    return-void

    .line 1539
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    .line 1540
    .restart local v11       #v:Ljava/lang/Object;
    if-nez v11, :cond_4

    .line 1541
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1542
    :cond_4
    move-object v8, v7

    .line 1543
    .restart local v8       #key:Ljava/lang/Object;,"TK;"
    move-object v12, v11

    .line 1544
    .restart local v12       #val:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v6

    .line 1545
    .restart local v6       #j:I
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v6, v14, :cond_5

    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v6, v14, 0x1

    .line 1546
    :cond_5
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1547
    .restart local v13       #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1548
    move-object v0, v13

    .line 1549
    if-lez v6, :cond_2

    .line 1550
    const/4 v4, 0x0

    .line 1551
    .local v4, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x1

    move-object v5, v4

    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_2
    if-gt v3, v6, :cond_1

    .line 1552
    new-instance v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v5, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1553
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v3, v14, :cond_7

    .line 1554
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v1, v14, v2, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1556
    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 1557
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v4, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1558
    invoke-virtual {v9, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2

    .line 1560
    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_7
    move-object v1, v2

    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2271
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v2, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2273
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2274
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v2
.end method

.method private tryReduceLevel()V
    .locals 5

    .prologue
    .line 1079
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1082
    .local v2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v0, d:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v1, e:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v1, :cond_0

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v3, :cond_0

    .line 1090
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    .line 1091
    .end local v0           #d:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v1           #e:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_0
    return-void
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
    .line 1491
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1494
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1495
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1496
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    .line 1497
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1498
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1494
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1501
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1502
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2071
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2079
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2080
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1694
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1695
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 1413
    .local v0, clone:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1414
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    return-object v0

    .line 1416
    .end local v0           #clone:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 1417
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1922
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 641
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, k1:Ljava/lang/Object;,"TK;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 642
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 645
    .end local p1           #k1:Ljava/lang/Object;,"TK;"
    :goto_0
    return v1

    .restart local p1       #k1:Ljava/lang/Object;,"TK;"
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    .end local p1           #k1:Ljava/lang/Object;,"TK;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1580
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 1647
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1648
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1649
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1650
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1651
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1652
    const/4 v2, 0x1

    .line 1654
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :goto_1
    return v2

    .line 1649
    .restart local v1       #v:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1654
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1798
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1792
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1793
    .local v7, dm:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    if-eqz v7, :cond_0

    .end local v7           #dm:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :goto_0
    return-object v7

    .restart local v7       #dm:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    move-object v7, v0

    goto :goto_0
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "okey"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1017
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1019
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1020
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1022
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_2

    move-object v5, v6

    .line 1053
    :cond_1
    :goto_2
    return-object v5

    .line 1024
    :cond_2
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1025
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1027
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1028
    .local v5, v:Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1029
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1032
    :cond_3
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1034
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1035
    .local v1, c:I
    if-gez v1, :cond_4

    move-object v5, v6

    .line 1036
    goto :goto_2

    .line 1037
    :cond_4
    if-lez v1, :cond_5

    .line 1038
    move-object v0, v4

    .line 1039
    move-object v4, v2

    .line 1040
    goto :goto_1

    .line 1042
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v5, v6

    .line 1043
    goto :goto_2

    .line 1044
    :cond_6
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1046
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1047
    :cond_7
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_2

    .line 1049
    :cond_8
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1050
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_1

    .line 1051
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
.end method

.method doRemoveFirstEntry()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 1117
    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1118
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1119
    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    .line 1134
    :goto_1
    return-object v4

    .line 1121
    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1122
    .local v1, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v2, v5, :cond_0

    .line 1124
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1125
    .local v3, v:Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 1126
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1131
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1132
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1133
    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    .line 1134
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method doRemoveLastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1244
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1245
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1246
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v4, :cond_2

    .line 1247
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1279
    :goto_1
    return-object v6

    .line 1263
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v5, v:Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_4

    .line 1264
    move-object v0, v4

    .line 1265
    move-object v4, v2

    .line 1253
    .end local v2           #f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5           #v:Ljava/lang/Object;
    :cond_2
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1254
    .restart local v2       #f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1256
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1257
    .restart local v5       #v:Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1258
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1261
    :cond_3
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v7, :cond_1

    goto :goto_0

    .line 1268
    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1270
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 1271
    .local v3, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1272
    .local v1, ck:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1273
    :cond_5
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1279
    :cond_6
    :goto_2
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1275
    :cond_7
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1276
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_6

    .line 1277
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2258
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1787
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 1788
    .local v0, es:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #es:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #es:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .end local v0           #es:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1816
    if-ne p1, p0, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return v7

    .line 1818
    :cond_1
    instance-of v9, p1, Ljava/util/Map;

    if-nez v9, :cond_2

    move v7, v8

    .line 1819
    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 1820
    check-cast v4, Ljava/util/Map;

    .line 1822
    .local v4, m:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1823
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v8

    .line 1824
    goto :goto_0

    .line 1825
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1826
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1827
    .local v3, k:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 1828
    .local v6, v:Ljava/lang/Object;
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_5

    :cond_6
    move v7, v8

    .line 1829
    goto :goto_0

    .line 1832
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #k:Ljava/lang/Object;
    .end local v6           #v:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .local v5, unused:Ljava/lang/ClassCastException;
    move v7, v8

    .line 1833
    goto :goto_0

    .line 1834
    .end local v5           #unused:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v5

    .local v5, unused:Ljava/lang/NullPointerException;
    move v7, v8

    .line 1835
    goto :goto_0
.end method

.method findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1102
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1103
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 1104
    const/4 v1, 0x0

    .line 1106
    .end local v1           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_0
    return-object v1

    .line 1105
    .restart local v1       #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1107
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
.end method

.method findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1170
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1173
    .local v4, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v5, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v5, :cond_1

    .line 1174
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1175
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 1176
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    .line 1179
    :cond_0
    move-object v4, v5

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v1, d:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    .line 1181
    move-object v4, v1

    goto :goto_0

    .line 1183
    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1184
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1186
    .local v3, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_4

    .line 1187
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    .end local v0           #b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    return-object v0

    .line 1188
    .restart local v0       #b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1189
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v3, v7, :cond_6

    .line 1201
    :cond_5
    :goto_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    .line 1191
    :cond_6
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1192
    .local v6, v:Ljava/lang/Object;
    if-nez v6, :cond_7

    .line 1193
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_2

    .line 1196
    :cond_7
    if-eq v6, v3, :cond_5

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 1198
    move-object v0, v3

    .line 1199
    move-object v3, v2

    .line 1200
    goto :goto_1
.end method

.method findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, kkey:Ljava/lang/Object;,"TK;"
    const/4 v6, 0x0

    .line 1299
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1301
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1302
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1304
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_3

    .line 1305
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move-object v0, v6

    .line 1321
    .end local v0           #b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    :goto_2
    return-object v0

    .line 1306
    .restart local v0       #b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1307
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1309
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1310
    .local v5, v:Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 1311
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1314
    :cond_4
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1316
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1317
    .local v1, c:I
    if-nez v1, :cond_5

    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_6

    :cond_5
    if-gez v1, :cond_7

    and-int/lit8 v7, p2, 0x2

    if-nez v7, :cond_7

    :cond_6
    move-object v0, v4

    .line 1319
    goto :goto_2

    .line 1320
    :cond_7
    if-gtz v1, :cond_9

    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_9

    .line 1321
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v6, v0

    goto :goto_3

    .line 1322
    :cond_9
    move-object v0, v4

    .line 1323
    move-object v4, v2

    .line 1324
    goto :goto_1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2115
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2116
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 2117
    const/4 v0, 0x0

    .line 2120
    :goto_0
    return-object v0

    .line 2118
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2119
    .local v0, e:Ljava/util/AbstractMap$SimpleImmutableEntry;,"Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1929
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1930
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1931
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1932
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2048
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2057
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2058
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

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
    .line 1598
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 2
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1336
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1337
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 1338
    const/4 v0, 0x0

    .line 1341
    :goto_0
    return-object v0

    .line 1339
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 1340
    .local v0, e:Ljava/util/AbstractMap$SimpleImmutableEntry;,"Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2001
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v3, 0x0

    .line 1967
    if-nez p1, :cond_0

    .line 1968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1969
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2094
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2103
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2104
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method inHalfOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, least:Ljava/lang/Object;,"TK;"
    .local p3, fence:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 656
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method inOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, least:Ljava/lang/Object;,"TK;"
    .local p3, fence:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 667
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initialize()V
    .locals 4

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 339
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 340
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 341
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 342
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 343
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 344
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 346
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1687
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2250
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1730
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1731
    .local v0, ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    .end local v0           #ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    .restart local v0       #ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0           #ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2132
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2133
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 2134
    const/4 v0, 0x0

    .line 2137
    :goto_0
    return-object v0

    .line 2135
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2136
    .local v0, e:Ljava/util/AbstractMap$SimpleImmutableEntry;,"Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1939
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1940
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1941
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1942
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2025
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2033
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2034
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1735
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1736
    .local v0, ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    .end local v0           #ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    .restart local v0       #ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0           #ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2148
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2158
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1615
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_0

    .line 1616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1617
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1851
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_0

    .line 1852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1853
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 1631
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1864
    if-nez p1, :cond_0

    .line 1865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1866
    :cond_0
    if-nez p2, :cond_2

    .line 1868
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1906
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_0

    .line 1907
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1908
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1910
    .local v0, k:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1911
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_2

    .line 1912
    const/4 v2, 0x0

    .line 1915
    :goto_0
    return-object v2

    .line 1913
    :cond_2
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1914
    .local v2, v:Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    const/4 v3, 0x0

    .line 1879
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1880
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1881
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1883
    .local v0, k:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_2
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1884
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_4

    .line 1891
    :cond_3
    :goto_0
    return v3

    .line 1886
    :cond_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1887
    .local v2, v:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 1888
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1890
    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1891
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 1674
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1675
    .local v0, count:J
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 1676
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1677
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 1675
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1679
    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    const v3, 0x7fffffff

    :goto_1
    return v3

    :cond_2
    long-to-int v3, v0

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1992
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1954
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p3, toKey:Ljava/lang/Object;,"TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1955
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1956
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2010
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    const/4 v5, 0x0

    .line 1980
    if-nez p1, :cond_0

    .line 1981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1982
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2254
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1758
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 1759
    .local v0, vs:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #vs:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #vs:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .end local v0           #vs:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    goto :goto_0
.end method
