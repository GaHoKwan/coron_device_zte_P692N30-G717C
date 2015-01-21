.class final Ldq;
.super Ldu;
.source "SourceFile"


# direct methods
.method constructor <init>(Lbd;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ldu;-><init>(Lbd;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1
    .parameter

    .prologue
    .line 49
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 52
    :goto_0
    return p1

    :cond_0
    add-int/lit16 p1, p1, -0x2710

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuffer;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    .line 42
    const-string v0, "(3202)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "(3203)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
