.class public final Ln;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final a:La;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Hashtable;

.field private final a:[B

.field private a:[Lp;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lp;La;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;J)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lp;La;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text and bytes are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Ln;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Ln;->a:[B

    .line 57
    iput-object p3, p0, Ln;->a:[Lp;

    .line 58
    iput-object p4, p0, Ln;->a:La;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ln;->a:Ljava/util/Hashtable;

    .line 60
    iput-wide p5, p0, Ln;->a:J

    .line 61
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Ln;->a:J

    return-wide v0
.end method

.method public a()La;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ln;->a:La;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ln;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ln;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Ln;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 4
    .parameter

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Ln;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 115
    iput-object p1, p0, Ln;->a:Ljava/util/Hashtable;

    .line 125
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 118
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    iget-object v3, p0, Ln;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lo;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Ln;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ln;->a:Ljava/util/Hashtable;

    .line 109
    :cond_0
    iget-object v0, p0, Ln;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public a([Lp;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Ln;->a:[Lp;

    if-nez v0, :cond_1

    .line 129
    iput-object p1, p0, Ln;->a:[Lp;

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Ln;->a:[Lp;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lp;

    .line 132
    iget-object v1, p0, Ln;->a:[Lp;

    iget-object v2, p0, Ln;->a:[Lp;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v1, p0, Ln;->a:[Lp;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput-object v0, p0, Ln;->a:[Lp;

    goto :goto_0
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ln;->a:[B

    return-object v0
.end method

.method public a()[Lp;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ln;->a:[Lp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Ln;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ln;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ln;->a:Ljava/lang/String;

    goto :goto_0
.end method
