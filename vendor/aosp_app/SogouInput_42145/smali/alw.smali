.class public Lalw;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lrr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lrr;

    iget-object v1, p0, Lalw;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalw;->b:Lrr;

    .line 28
    iput-object p2, p0, Lalw;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 49
    const/4 v0, -0x1

    .line 51
    :try_start_0
    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    const-string v2, "sogou.action.send.hmt.contact.data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-boolean v1, Lace;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lace;->a:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    sget-object v1, Lace;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 53
    sget-object v1, Lace;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lalw;->b:Lrr;

    iget-object v3, p0, Lalw;->a:Landroid/content/Context;

    invoke-static {v3}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lrr;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32
    const-string v0, "onWork"

    invoke-direct {p0, v0}, Lalw;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lalw;->a()I

    move-result v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lalw;->a(Ljava/lang/String;)V

    .line 35
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lalw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalw;->a:Ljava/lang/String;

    const-string v1, "sogou.action.send.hmt.contact.data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lalw;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->w(Z)V

    .line 38
    sget-object v0, Lace;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lace;->a:Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    return-void
.end method
