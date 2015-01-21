.class public Lals;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v0, p1}, Lals;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p3}, Lalg;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lals;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lals;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Lrr;

    iget-object v1, p0, Lals;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lals;->a:Lrr;

    .line 32
    return-void
.end method

.method private a()I
    .locals 4

    .prologue
    const/16 v0, 0x12

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v2, "feedback"

    iget-object v3, p0, Lals;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "contact"

    iget-object v3, p0, Lals;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lals;->a:Lrr;

    invoke-virtual {v2, v1}, Lrr;->a(Ljava/util/Map;)I

    move-result v1

    .line 73
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 74
    iget-object v0, p0, Lals;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lals;->c:Ljava/lang/String;

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lals;->b:Z

    .line 79
    const/4 v0, 0x7

    .line 82
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lals;->a:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lals;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lals;->b:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lals;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lals;->c:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lals;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 38
    :cond_0
    invoke-direct {p0}, Lals;->a()I

    move-result v0

    iput v0, p0, Lals;->a:I

    .line 39
    iget-object v0, p0, Lals;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lals;->c:Z

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lals;->a:Lalv;

    iget v1, p0, Lals;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 42
    :cond_1
    return-void
.end method
