.class Let;
.super Ler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ler;-><init>(Les;)V

    return-void
.end method

.method constructor <init>(Les;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Let;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    add-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
