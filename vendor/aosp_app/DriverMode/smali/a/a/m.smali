.class public final La/a/m;
.super Ljava/util/AbstractList;

# interfaces
.implements La/a/k;


# static fields
.field private static final a:La/a/m;


# instance fields
.field private final b:La/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/m;

    invoke-static {}, La/a/e;->a()La/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/m;-><init>(La/a/e;)V

    sput-object v0, La/a/m;->a:La/a/m;

    return-void
.end method

.method private constructor <init>(La/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, La/a/m;->b:La/a/e;

    return-void
.end method

.method public static a()La/a/m;
    .locals 1

    sget-object v0, La/a/m;->a:La/a/m;

    return-object v0
.end method

.method private a(I)La/a/m;
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, La/a/m;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, La/a/m;

    iget-object v1, p0, La/a/m;->b:La/a/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, La/a/e;->a(Ljava/lang/Object;)La/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, La/a/e;->a(I)La/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/m;-><init>(La/a/e;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)La/a/m;
    .locals 3

    new-instance v0, La/a/m;

    iget-object v1, p0, La/a/m;->b:La/a/e;

    invoke-virtual {p0}, La/a/m;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, La/a/e;->a(Ljava/lang/Integer;Ljava/lang/Object;)La/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/m;-><init>(La/a/e;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)La/a/m;
    .locals 3

    iget-object v0, p0, La/a/m;->b:La/a/e;

    invoke-virtual {v0}, La/a/e;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, La/a/m;->a(I)La/a/m;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, La/a/m;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/m;->b:La/a/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, La/a/m;->b:La/a/e;

    invoke-virtual {v0}, La/a/e;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, La/a/m;->b:La/a/e;

    invoke-virtual {v0}, La/a/e;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    :goto_0
    invoke-virtual {p0}, La/a/m;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ne p1, p2, :cond_3

    sget-object p0, La/a/m;->a:La/a/m;

    :cond_2
    return-object p0

    :cond_3
    if-nez p1, :cond_4

    if-eq p2, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, La/a/m;->a(I)La/a/m;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/m;->a(I)La/a/m;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method
