.class abstract Ler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ler;

    const/4 v1, 0x0

    new-instance v2, Let;

    invoke-direct {v2, v3}, Let;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Leu;

    invoke-direct {v2, v3}, Leu;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lev;

    invoke-direct {v2, v3}, Lev;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lew;

    invoke-direct {v2, v3}, Lew;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lex;

    invoke-direct {v2, v3}, Lex;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ley;

    invoke-direct {v2, v3}, Ley;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lez;

    invoke-direct {v2, v3}, Lez;-><init>(Les;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lfa;

    invoke-direct {v2, v3}, Lfa;-><init>(Les;)V

    aput-object v2, v0, v1

    sput-object v0, Ler;->a:[Ler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(Les;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ler;-><init>()V

    return-void
.end method

.method static a(I)Ler;
    .locals 1
    .parameter

    .prologue
    .line 76
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_1
    sget-object v0, Ler;->a:[Ler;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method final a(Lbe;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    move v0, v1

    .line 60
    :goto_1
    if-ge v0, p2, :cond_1

    .line 61
    invoke-virtual {p0, v2, v0}, Ler;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p1, v0, v2}, Lbe;->b(II)V

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method

.method abstract a(II)Z
.end method
