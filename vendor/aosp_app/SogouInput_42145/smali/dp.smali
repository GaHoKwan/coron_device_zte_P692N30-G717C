.class final Ldp;
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
    .locals 0
    .parameter

    .prologue
    .line 45
    return p1
.end method

.method protected a(Ljava/lang/StringBuffer;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "(3103)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    return-void
.end method
