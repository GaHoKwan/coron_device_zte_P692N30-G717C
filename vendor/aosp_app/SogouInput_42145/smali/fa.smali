.class Lfa;
.super Ler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ler;-><init>(Les;)V

    return-void
.end method

.method constructor <init>(Les;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lfa;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    add-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    mul-int v1, p1, p2

    rem-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
