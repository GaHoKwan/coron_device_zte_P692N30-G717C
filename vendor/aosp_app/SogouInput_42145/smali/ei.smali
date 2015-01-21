.class public final Lei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll;


# static fields
.field private static final a:[Lp;


# instance fields
.field private final a:Lel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lp;

    sput-object v0, Lei;->a:[Lp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lel;

    invoke-direct {v0}, Lel;-><init>()V

    iput-object v0, p0, Lei;->a:Lel;

    return-void
.end method


# virtual methods
.method public a(Lc;Ljava/util/Hashtable;)Ln;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p2, :cond_0

    sget-object v0, Le;->b:Le;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lc;->a()Lbe;

    move-result-object v0

    invoke-static {v0}, Len;->a(Lbe;)Lbe;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lei;->a:Lel;

    invoke-virtual {v1, v0}, Lel;->a(Lbe;)Lbj;

    move-result-object v1

    .line 65
    sget-object v0, Lei;->a:[Lp;

    .line 71
    :goto_0
    new-instance v2, Ln;

    invoke-virtual {v1}, Lbj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbj;->a()[B

    move-result-object v1

    sget-object v4, La;->n:La;

    invoke-direct {v2, v3, v1, v0, v4}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    return-object v2

    .line 67
    :cond_0
    new-instance v0, Lem;

    invoke-direct {v0, p1}, Lem;-><init>(Lc;)V

    invoke-virtual {v0}, Lem;->a()Lbl;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lei;->a:Lel;

    invoke-virtual {v0}, Lbl;->a()Lbe;

    move-result-object v2

    invoke-virtual {v1, v2}, Lel;->a(Lbe;)Lbj;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lbl;->a()[Lp;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
