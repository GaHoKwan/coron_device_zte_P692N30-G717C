.class public final Lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lj;->a:I

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lj;->a:I

    .line 44
    iput p1, p0, Lj;->a:I

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;La;IILjava/util/Hashtable;)Lbe;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    sget-object v0, La;->e:La;

    if-ne p2, v0, :cond_0

    .line 58
    new-instance v0, Lcu;

    invoke-direct {v0}, Lcu;-><init>()V

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 72
    invoke-interface/range {v0 .. v5}, Lr;->a(Ljava/lang/String;La;IILjava/util/Hashtable;)Lbe;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    sget-object v0, La;->f:La;

    if-ne p2, v0, :cond_1

    .line 60
    new-instance v0, Lcs;

    invoke-direct {v0}, Lcs;-><init>()V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, La;->a:La;

    if-ne p2, v0, :cond_2

    .line 62
    new-instance v0, Leo;

    iget v1, p0, Lj;->a:I

    invoke-direct {v0, v1}, Leo;-><init>(I)V

    goto :goto_0

    .line 63
    :cond_2
    sget-object v0, La;->i:La;

    if-ne p2, v0, :cond_3

    .line 64
    new-instance v0, Lcp;

    invoke-direct {v0}, Lcp;-><init>()V

    goto :goto_0

    .line 65
    :cond_3
    sget-object v0, La;->h:La;

    if-ne p2, v0, :cond_4

    .line 66
    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    goto :goto_0

    .line 67
    :cond_4
    sget-object v0, La;->l:La;

    if-ne p2, v0, :cond_5

    .line 68
    new-instance v0, Lcx;

    invoke-direct {v0}, Lcx;-><init>()V

    goto :goto_0

    .line 70
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No encoder available for format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
