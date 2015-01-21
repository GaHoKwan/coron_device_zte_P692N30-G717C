.class public Lqv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;

.field private static a:Layx;

.field private static a:Ljava/lang/String;

.field private static a:Lqv;

.field private static b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sput-object p1, Lqv;->b:Ljava/lang/String;

    .line 37
    new-instance v0, Layx;

    invoke-direct {v0, p1}, Layx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqv;->a:Layx;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lqv;->a:Landroid/util/SparseArray;

    .line 39
    invoke-direct {p0}, Lqv;->a()V

    .line 40
    invoke-direct {p0}, Lqv;->b()V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)Lqv;
    .locals 1
    .parameter

    .prologue
    .line 20
    sget-object v0, Lqv;->a:Lqv;

    if-eqz v0, :cond_0

    sget-object v0, Lqv;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Lqv;

    invoke-direct {v0, p0}, Lqv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqv;->a:Lqv;

    .line 23
    :cond_1
    sget-object v0, Lqv;->a:Lqv;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lqv;->a:Layx;

    const-string v1, "Info"

    const-string v2, "NAME"

    const-string v3, "Default"

    invoke-static {v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqv;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lqv;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 49
    sget-object v0, Lqv;->a:Layx;

    invoke-virtual {v0}, Layx;->a()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 50
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 51
    new-instance v3, Lqw;

    invoke-direct {v3}, Lqw;-><init>()V

    .line 52
    aget-object v4, v2, v0

    iput-object v4, v3, Lqw;->a:Ljava/lang/String;

    .line 53
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "CODE"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->a:I

    .line 54
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "TARGET"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->b:I

    .line 55
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "SHIFT_PRESSED"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->c:I

    .line 56
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "ALT_PRESSED"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->d:I

    .line 57
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "SYM_PRESSED"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->e:I

    .line 58
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "SHIFT_ON"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->f:I

    .line 59
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "ALT_ON"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->g:I

    .line 60
    sget-object v4, Lqv;->a:Layx;

    aget-object v5, v2, v0

    const-string v6, "SYM_ON"

    invoke-static {v4, v5, v6, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lqw;->h:I

    .line 61
    sget-object v4, Lqv;->a:Landroid/util/SparseArray;

    iget v5, v3, Lqw;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lqw;
    .locals 1
    .parameter

    .prologue
    .line 85
    sget-object v0, Lqv;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lqv;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqw;

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
