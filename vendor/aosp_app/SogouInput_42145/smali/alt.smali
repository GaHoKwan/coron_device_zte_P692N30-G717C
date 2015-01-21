.class public Lalt;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private a:Lrl;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lrr;

    iget-object v1, p0, Lalt;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalt;->a:Lrr;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lalt;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lalt;->a:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lalt;->b:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 41
    return-void
.end method

.method static synthetic a(Lalt;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lalt;->b:I

    return p1
.end method

.method static synthetic a(Lalt;)Lrl;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lalt;->a:Lrl;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method static synthetic b(Lalt;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lalt;->c:I

    return p1
.end method

.method private c()I
    .locals 4

    .prologue
    const/16 v0, 0x18

    .line 127
    iget-object v1, p0, Lalt;->a:Lrr;

    new-instance v2, Lalu;

    invoke-direct {v2, p0}, Lalu;-><init>(Lalt;)V

    invoke-virtual {v1, v2}, Lrr;->a(Lrl;)V

    .line 152
    iget-object v1, p0, Lalt;->a:Lrr;

    iget-object v2, p0, Lalt;->a:Ljava/lang/String;

    iget-object v3, p0, Lalt;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 153
    if-ne v1, v0, :cond_0

    .line 155
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 666 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lalt;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lalt;->b:I

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "    cancel()"

    invoke-direct {p0, v0}, Lalt;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lalt;->a:Lsg;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lalt;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIC ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalt;->a:Lrr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalt;->a(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lalt;->a:Lrr;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lalt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 115
    iget-object v0, p0, Lalt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 117
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalt;->b:Z

    .line 118
    iget-object v0, p0, Lalt;->a:Lalv;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lalt;->c:Z

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lalt;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lalt;->a:Lalv;

    .line 122
    :cond_2
    iget v0, p0, Lalt;->c:I

    iget v1, p0, Lalt;->b:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lalt;->b:Ljava/lang/String;

    invoke-static {v0}, Layw;->a(Ljava/lang/String;)Z

    .line 123
    :cond_3
    return-void
.end method

.method public a(Lrl;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lalt;->a:Lrl;

    .line 54
    return-void
.end method

.method public a(Lsg;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lalt;->a:Lalv;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lalt;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 93
    iput-object v1, p0, Lalt;->a:Lalv;

    .line 94
    iput-object v1, p0, Lalt;->a:Lrl;

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalt;->c:Z

    .line 97
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lalt;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lalt;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lalt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
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
    .line 57
    iget-object v0, p0, Lalt;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalt;->c:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lalt;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 60
    :cond_0
    invoke-direct {p0}, Lalt;->c()I

    move-result v0

    iput v0, p0, Lalt;->a:I

    .line 61
    iget-object v0, p0, Lalt;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lalt;->c:Z

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lalt;->a:Lalv;

    iget v1, p0, Lalt;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 64
    :cond_1
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lalt;->a:Lsg;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lalt;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lalt;->a:Lrr;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lalt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 72
    iget-object v0, p0, Lalt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 74
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalt;->b:Z

    .line 75
    iget-object v0, p0, Lalt;->a:Lalv;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lalt;->c:Z

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lalt;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lalt;->a:Lalv;

    .line 79
    :cond_2
    iget-object v0, p0, Lalt;->b:Ljava/lang/String;

    invoke-static {v0}, Layw;->a(Ljava/lang/String;)Z

    .line 80
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lalt;->b:Ljava/lang/String;

    invoke-static {v0}, Layw;->a(Ljava/lang/String;)Z

    .line 84
    return-void
.end method
