.class public Lalz;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "http://safe1.shouji.sogou.com/safe"

    iput-object v0, p0, Lalz;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Lrr;

    iget-object v1, p0, Lalz;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalz;->a:Lrr;

    .line 23
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 26
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    sget-boolean v0, Lga;->a:Z

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lga;->a()Lga;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Lga;->a()I

    move-result v2

    .line 36
    sget v0, Lga;->b:I

    if-le v2, v0, :cond_0

    .line 41
    invoke-virtual {v1}, Lga;->b()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 42
    invoke-virtual {v1}, Lga;->a()V

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {v1, v2}, Lga;->a(I)[Ljava/lang/String;
    :try_end_0
    .catch Lfz; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 58
    :goto_1
    if-nez v0, :cond_3

    .line 60
    invoke-virtual {v1}, Lga;->c()V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v2, p0, Lalz;->a:Lrr;

    iget-object v3, p0, Lalz;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lrr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_4

    .line 72
    const/4 v3, 0x1

    :try_start_1
    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lga;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lfz; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v1}, Lga;->c()V

    goto :goto_0

    .line 49
    :catch_1
    move-exception v2

    goto :goto_1
.end method
