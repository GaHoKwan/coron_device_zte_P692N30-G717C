.class public final La/a/e;
.super Ljava/util/AbstractMap;

# interfaces
.implements La/a/h;


# static fields
.field private static final a:La/a/e;


# instance fields
.field private final b:La/a/c;

.field private c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/e;

    sget-object v1, La/a/c;->a:La/a/c;

    invoke-direct {v0, v1}, La/a/e;-><init>(La/a/c;)V

    sput-object v0, La/a/e;->a:La/a/e;

    return-void
.end method

.method private constructor <init>(La/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/e;->c:Ljava/util/Set;

    iput-object p1, p0, La/a/e;->b:La/a/c;

    return-void
.end method

.method static synthetic a(La/a/e;)La/a/c;
    .locals 1

    iget-object v0, p0, La/a/e;->b:La/a/c;

    return-object v0
.end method

.method public static a()La/a/e;
    .locals 1

    sget-object v0, La/a/e;->a:La/a/e;

    return-object v0
.end method

.method private a(La/a/c;)La/a/e;
    .locals 1

    iget-object v0, p0, La/a/e;->b:La/a/c;

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, La/a/e;

    invoke-direct {p0, p1}, La/a/e;-><init>(La/a/c;)V

    goto :goto_0
.end method


# virtual methods
.method final a(I)La/a/e;
    .locals 4

    iget-object v0, p0, La/a/e;->b:La/a/c;

    int-to-long v1, p1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, La/a/c;->a(JI)La/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/e;->a(La/a/c;)La/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Object;)La/a/e;
    .locals 3

    iget-object v0, p0, La/a/e;->b:La/a/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p2}, La/a/c;->a(JLjava/lang/Object;)La/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/e;->a(La/a/c;)La/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)La/a/e;
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, La/a/e;->b:La/a/c;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, La/a/c;->c(J)La/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/e;->a(La/a/c;)La/a/e;

    move-result-object p0

    goto :goto_0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/e;->b:La/a/c;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, La/a/c;->a(J)Z

    move-result v0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, La/a/e;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, La/a/f;

    invoke-direct {v0, p0}, La/a/f;-><init>(La/a/e;)V

    iput-object v0, p0, La/a/e;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, La/a/e;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/e;->b:La/a/c;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, La/a/c;->b(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, La/a/e;->b:La/a/c;

    invoke-virtual {v0}, La/a/c;->b()I

    move-result v0

    return v0
.end method
