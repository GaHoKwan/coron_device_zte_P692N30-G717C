.class public final Lcom/zte/zdm/b/f/d/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0x10

.field public static final f:I = 0x1f

.field private static final g:[I = null

.field private static final h:[Ljava/lang/String; = null

.field private static final i:Ljava/lang/String; = "*"


# instance fields
.field private final j:Ljava/util/TreeMap;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/zdm/b/f/d/b;->g:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Add"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Get"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Replace"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zdm/b/f/d/b;->h:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    iget v1, p1, Lcom/zte/zdm/b/f/d/b;->k:I

    xor-int/lit8 v2, p3, -0x1

    and-int/2addr v2, v1

    const-string v3, "*"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v2}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/util/TreeMap;I)V

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    iput p3, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    return-void

    :cond_0
    invoke-static {p2}, Lcom/zte/zdm/b/f/d/b;->c(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot revoke globally set permissions ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/zte/zdm/b/f/d/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from a specific principal ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, p2, p3}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/util/TreeMap;Ljava/lang/String;I)V

    move p3, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    iput v2, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const/16 v0, 0x26

    invoke-static {p1, v0, v12}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;CI)[Ljava/lang/String;

    move-result-object v6

    move v1, v2

    move v0, v2

    :goto_1
    array-length v3, v6

    if-ge v1, v3, :cond_9

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ACL string: empty ACL entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v3, v6, v1

    const/16 v4, 0x3d

    const/4 v7, 0x2

    invoke-static {v3, v4, v7}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;CI)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v11, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ACL string: no \'=\' in ACL entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-object v4, v3, v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ACL string: no server identifiers in ACL entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/zte/zdm/b/f/d/b;->b(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v3, v11

    const/16 v4, 0x2b

    invoke-static {v3, v4, v12}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;CI)[Ljava/lang/String;

    move-result-object v8

    move v4, v2

    move v3, v0

    :goto_2
    array-length v0, v8

    if-ge v4, v0, :cond_8

    aget-object v0, v8, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ACL string: empty server identifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    aget-object v0, v8, v4

    const-string v9, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/2addr v3, v7

    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_6
    aget-object v0, v8, v4

    const-string v9, "Invalid ACL string: server ID contains illegal character"

    invoke-static {v0, v9}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v8, v4

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    aget-object v9, v8, v4

    new-instance v10, Ljava/lang/Integer;

    or-int/2addr v0, v7

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto/16 :goto_1

    :cond_9
    iput-object v5, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    iput v0, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    goto/16 :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lengths of the principal and permission arrays are not the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    const-string v3, "*"

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/zte/zdm/b/f/d/b;->c(Ljava/lang/String;)V

    :cond_1
    aget v3, p2, v0

    invoke-static {v3}, Lcom/zte/zdm/b/f/d/b;->c(I)V

    new-instance v3, Ljava/lang/Integer;

    aget v4, p2, v0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aget-object v4, p1, v0

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Principal \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' appears multiple times in the principal array."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_4
    iput-object v2, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    iput v1, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    and-int/2addr v0, p1

    if-lez v0, :cond_1

    const-string v2, "*"

    :cond_0
    if-nez v2, :cond_2

    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p1

    if-lez v1, :cond_3

    const/16 v1, 0x2b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/zte/zdm/b/f/d/b;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    const-string v2, "*=+&"

    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/TreeMap;I)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v0, v3

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/util/TreeMap;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/TreeMap;Ljava/lang/String;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;CI)[Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v1

    move v4, v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, p1, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 v6, p2, -0x1

    if-ne v4, v6, :cond_0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez p2, :cond_5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v0

    :goto_3
    if-ltz v3, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :cond_5
    move v2, v0

    :cond_6
    new-array v3, v2, [Ljava/lang/String;

    :goto_4
    if-ge v1, v2, :cond_7

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v3
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/zte/zdm/b/f/d/b;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ACL string: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/zte/zdm/b/f/d/b;->g:[I

    aget v0, v1, v0

    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    sget-object v2, Lcom/zte/zdm/b/f/d/b;->g:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/zte/zdm/b/f/d/b;->g:[I

    aget v2, v2, v1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    const/16 v2, 0x2c

    sget-object v3, Lcom/zte/zdm/b/f/d/b;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v2, v3}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static c(I)V
    .locals 3

    and-int/lit8 v0, p0, -0x20

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ACL permission value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Principal is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Principal name contains illegal character"

    invoke-static {p0, v0}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zte/zdm/b/f/d/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Lcom/zte/zdm/b/f/d/b;
    .locals 1

    invoke-static {p2}, Lcom/zte/zdm/b/f/d/b;->c(I)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/f/d/b;->d(Ljava/lang/String;I)Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/b;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {p0, v5, p1}, Lcom/zte/zdm/b/f/d/b;->c(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    and-int/2addr v2, p1

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;I)Lcom/zte/zdm/b/f/d/b;
    .locals 2

    invoke-static {p2}, Lcom/zte/zdm/b/f/d/b;->c(I)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;)I

    move-result v0

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/f/d/b;->d(Ljava/lang/String;I)Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p2}, Lcom/zte/zdm/b/f/d/b;->c(I)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d/b;->a(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;I)Lcom/zte/zdm/b/f/d/b;
    .locals 1

    invoke-static {p2}, Lcom/zte/zdm/b/f/d/b;->c(I)V

    new-instance v0, Lcom/zte/zdm/b/f/d/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/zdm/b/f/d/b;-><init>(Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/zte/zdm/b/f/d/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/zte/zdm/b/f/d/b;

    iget v1, p0, Lcom/zte/zdm/b/f/d/b;->k:I

    iget v2, p1, Lcom/zte/zdm/b/f/d/b;->k:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    iget-object v2, p1, Lcom/zte/zdm/b/f/d/b;->j:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    :try_start_0
    sget-object v2, Lcom/zte/zdm/b/f/d/b;->g:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/zte/zdm/b/f/d/b;->g:[I

    aget v2, v2, v1

    invoke-direct {p0, v2, v0}, Lcom/zte/zdm/b/f/d/b;->a(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
