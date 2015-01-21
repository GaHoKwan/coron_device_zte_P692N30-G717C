.class public Laly;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p3}, Lalg;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Laly;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Laly;->b:Ljava/lang/String;

    .line 28
    new-instance v0, Lrr;

    iget-object v1, p0, Laly;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Laly;->a:Lrr;

    .line 29
    return-void
.end method


# virtual methods
.method a()I
    .locals 6

    .prologue
    const/16 v0, 0x12

    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-string v4, "u"

    iget-object v5, p0, Laly;->a:Ljava/lang/String;

    invoke-static {v5}, Lsa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v4, "p"

    iget-object v5, p0, Laly;->b:Ljava/lang/String;

    invoke-static {v5}, Lsa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v4, p0, Laly;->a:Lrr;

    invoke-virtual {v4, v3}, Lrr;->c(Ljava/util/Map;)I

    move-result v3

    .line 70
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 71
    iget-object v0, p0, Laly;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_1

    const-string v0, "updateurl"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "error"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-eqz v3, :cond_4

    const-string v0, "backuptime"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "backuptime"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Laly;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    const-string v0, "backuptime"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lafp;->b(J)V

    .line 85
    :cond_3
    iput-boolean v1, p0, Laly;->b:Z

    .line 86
    const/16 v0, 0xa

    goto :goto_0

    .line 81
    :cond_4
    if-nez v3, :cond_3

    move v0, v2

    .line 82
    goto :goto_0

    .line 89
    :cond_5
    if-eq v3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Laly;->b:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Laly;->a:Lalv;

    .line 52
    iget-object v0, p0, Laly;->a:Lsg;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Laly;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Laly;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 57
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Laly;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
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
    .line 33
    iget-object v0, p0, Laly;->a:Lalv;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Laly;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 36
    :cond_0
    invoke-virtual {p0}, Laly;->a()I

    move-result v0

    iput v0, p0, Laly;->a:I

    .line 37
    iget-object v0, p0, Laly;->a:Lalv;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Laly;->a:Lalv;

    iget v1, p0, Laly;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 40
    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Laly;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    const-string v1, "keyurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "keyurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Laly;->a:Lalv;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Laly;->a:Lalv;

    invoke-interface {v0}, Lalv;->h()V

    .line 47
    :cond_0
    return-void
.end method
