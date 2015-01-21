.class final Ldt;
.super Ldx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ldx;-><init>(Lbd;)V

    .line 47
    iput-object p3, p0, Ldt;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Ldt;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private c(Ljava/lang/StringBuffer;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    .line 66
    iget-object v0, p0, Ldt;->a:Leh;

    const/16 v1, 0x10

    invoke-virtual {v0, p2, v1}, Leh;->a(II)I

    move-result v0

    .line 67
    const v1, 0x9600

    if-ne v0, v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    iget-object v1, p0, Ldt;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    rem-int/lit8 v1, v0, 0x20

    .line 76
    div-int/lit8 v0, v0, 0x20

    .line 77
    rem-int/lit8 v2, v0, 0xc

    add-int/lit8 v2, v2, 0x1

    .line 78
    div-int/lit8 v0, v0, 0xc

    .line 81
    div-int/lit8 v3, v0, 0xa

    if-nez v3, :cond_1

    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    div-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    div-int/lit8 v0, v1, 0xa

    if-nez v0, :cond_3

    .line 90
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method protected a(I)I
    .locals 1
    .parameter

    .prologue
    .line 104
    const v0, 0x186a0

    rem-int v0, p1, v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Ldt;->a:Lbd;

    iget v0, v0, Lbd;->a:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 53
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ldt;->b(Ljava/lang/StringBuffer;I)V

    .line 59
    const/16 v1, 0x30

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2}, Ldt;->b(Ljava/lang/StringBuffer;II)V

    .line 60
    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Ldt;->c(Ljava/lang/StringBuffer;I)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/StringBuffer;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    const v0, 0x186a0

    div-int v0, p2, v0

    .line 97
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Ldt;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method
