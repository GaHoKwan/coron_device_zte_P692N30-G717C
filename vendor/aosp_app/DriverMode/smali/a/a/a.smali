.class public final La/a/a;
.super Ljava/util/AbstractSequentialList;

# interfaces
.implements La/a/j;


# static fields
.field private static final a:La/a/a;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:La/a/a;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a;

    invoke-direct {v0}, La/a/a;-><init>()V

    sput-object v0, La/a/a;->a:La/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    sget-object v0, La/a/a;->a:La/a/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "empty constructor should only be used once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La/a/a;->d:I

    iput-object v1, p0, La/a/a;->b:Ljava/lang/Object;

    iput-object v1, p0, La/a/a;->c:La/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;La/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    iput-object p1, p0, La/a/a;->b:Ljava/lang/Object;

    iput-object p2, p0, La/a/a;->c:La/a/a;

    iget v0, p2, La/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a;->d:I

    return-void
.end method

.method static synthetic a(La/a/a;)I
    .locals 1

    iget v0, p0, La/a/a;->d:I

    return v0
.end method

.method public static a()La/a/a;
    .locals 1

    sget-object v0, La/a/a;->a:La/a/a;

    return-object v0
.end method

.method private a(II)La/a/a;
    .locals 5

    :goto_0
    if-ltz p1, :cond_0

    iget v0, p0, La/a/a;->d:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, La/a/a;->d:I

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, La/a/a;->a(I)La/a/a;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    if-ne p1, p2, :cond_3

    sget-object v0, La/a/a;->a:La/a/a;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    new-instance v0, La/a/a;

    iget-object v1, p0, La/a/a;->b:Ljava/lang/Object;

    iget-object v2, p0, La/a/a;->c:La/a/a;

    const/4 v3, 0x0

    add-int/lit8 v4, p2, -0x1

    invoke-direct {v2, v3, v4}, La/a/a;->a(II)La/a/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La/a/a;-><init>(Ljava/lang/Object;La/a/a;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, La/a/a;->c:La/a/a;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method static synthetic b(La/a/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(La/a/a;)La/a/a;
    .locals 1

    iget-object v0, p0, La/a/a;->c:La/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/a;
    .locals 1

    :goto_0
    if-ltz p1, :cond_0

    iget v0, p0, La/a/a;->d:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    :cond_2
    iget-object p0, p0, La/a/a;->c:La/a/a;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)La/a/j;
    .locals 1

    new-instance v0, La/a/a;

    invoke-direct {v0, p1, p0}, La/a/a;-><init>(Ljava/lang/Object;La/a/a;)V

    return-object v0
.end method

.method public final synthetic b()La/a/j;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/a;->a(I)La/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, La/a/a;->d:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, La/a/b;

    invoke-direct {v0, p0, p1}, La/a/b;-><init>(La/a/a;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, La/a/a;->d:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, La/a/a;->a(II)La/a/a;

    move-result-object v0

    return-object v0
.end method
