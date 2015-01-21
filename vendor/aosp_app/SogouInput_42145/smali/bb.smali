.class public final Lbb;
.super Lah;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    sget-object v0, Lai;->k:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 29
    iput-object p2, p0, Lbb;->a:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lbb;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lbb;->c:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 48
    iget-object v1, p0, Lbb;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lbb;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 49
    iget-object v1, p0, Lbb;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lbb;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 50
    iget-object v1, p0, Lbb;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lbb;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
