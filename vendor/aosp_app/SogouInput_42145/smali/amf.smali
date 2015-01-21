.class public Lamf;
.super Lalg;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "NetSwitchController"

    sput-object v0, Lamf;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lamf;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lrr;

    sget-object v1, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamf;->a:Lrr;

    .line 24
    return-void
.end method

.method private a()I
    .locals 5

    .prologue
    const/16 v0, 0x12

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lamf;->a:Lrr;

    invoke-virtual {v2}, Lrr;->p()I

    move-result v2

    .line 58
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 59
    iget-object v0, p0, Lamf;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    const-string v0, "apkmarket"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "apkmarket"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lamf;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lafp;->G(Z)V

    .line 67
    :cond_0
    :goto_0
    const-string v0, "ntspeedtest"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "ntspeedtest"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lamf;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lafp;->E(Z)V

    .line 73
    :cond_1
    :goto_1
    const-string v0, "datatest"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "datatest"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, p0, Lamf;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lafp;->F(Z)V

    .line 81
    :cond_2
    :goto_2
    const/16 v0, 0x8

    .line 83
    :cond_3
    :goto_3
    return v0

    .line 64
    :cond_4
    const-string v0, "apkmarket"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lamf;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->G(Z)V

    goto :goto_0

    .line 70
    :cond_5
    const-string v0, "ntspeedtest"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lamf;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->E(Z)V

    goto :goto_1

    .line 76
    :cond_6
    const-string v0, "datatest"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lamf;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->F(Z)V

    goto :goto_2

    .line 83
    :cond_7
    if-eq v2, v0, :cond_3

    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lamf;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lamf;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lamf;->a:Lalv;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lamf;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 30
    :cond_0
    invoke-direct {p0}, Lamf;->a()I

    move-result v0

    iput v0, p0, Lamf;->a:I

    .line 31
    iget-object v0, p0, Lamf;->a:Lalv;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lamf;->a:Lalv;

    iget v1, p0, Lamf;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 34
    :cond_1
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lamf;->a:Lalv;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lamf;->a:Lalv;

    invoke-interface {v0}, Lalv;->h()V

    .line 40
    :cond_0
    return-void
.end method
