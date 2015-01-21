.class abstract Ldw;
.super Ldy;
.source "SourceFile"


# direct methods
.method constructor <init>(Lbd;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ldy;-><init>(Lbd;)V

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    move v2, v1

    move v3, v1

    .line 68
    :goto_0
    const/16 v0, 0xd

    if-ge v2, v0, :cond_1

    .line 69
    add-int v0, v2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 70
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    mul-int/lit8 v0, v0, 0x3

    :cond_0
    add-int/2addr v3, v0

    .line 68
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 73
    :cond_1
    rem-int/lit8 v0, v3, 0xa

    rsub-int/lit8 v0, v0, 0xa

    .line 74
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 78
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/StringBuffer;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    .line 52
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Ldw;->a:Leh;

    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, p2

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Leh;->a(II)I

    move-result v1

    .line 54
    div-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    :cond_0
    div-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p1, p3}, Ldw;->a(Ljava/lang/StringBuffer;I)V

    .line 64
    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 46
    const/16 v1, 0x39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0, p1, p2, v0}, Ldw;->a(Ljava/lang/StringBuffer;II)V

    .line 49
    return-void
.end method
