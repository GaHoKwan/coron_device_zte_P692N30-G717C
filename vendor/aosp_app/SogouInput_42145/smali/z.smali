.class public final Lz;
.super Lah;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    sget-object v0, Lai;->j:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 39
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-static {p2}, Lz;->a(Ljava/lang/String;)V

    .line 43
    if-nez p3, :cond_1

    move-object p3, p2

    .line 48
    :goto_0
    iput-object p1, p0, Lz;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lz;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lz;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lz;->d:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lz;->e:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lz;->f:Ljava/lang/String;

    .line 54
    return-void

    .line 46
    :cond_1
    invoke-static {p3}, Lz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xf

    const/16 v3, 0x8

    .line 108
    if-eqz p0, :cond_6

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    if-le v1, v3, :cond_6

    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x54

    if-eq v0, v2, :cond_3

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_3
    const/16 v0, 0x9

    :goto_1
    if-ge v0, v4, :cond_5

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_5
    if-ne v1, v5, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_6

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lz;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    iget-object v1, p0, Lz;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lz;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 93
    iget-object v1, p0, Lz;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lz;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 94
    iget-object v1, p0, Lz;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lz;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 95
    iget-object v1, p0, Lz;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lz;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 96
    iget-object v1, p0, Lz;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lz;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 97
    iget-object v1, p0, Lz;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lz;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
