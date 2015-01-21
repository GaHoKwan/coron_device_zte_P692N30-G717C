.class public Lpj;
.super Lalg;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "ExpressionRepoDownloadController"

    sput-object v0, Lpj;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lpj;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lrr;

    iget-object v1, p0, Lpj;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lpj;->a:Lrr;

    .line 38
    return-void
.end method

.method private a()I
    .locals 7

    .prologue
    const/16 v0, 0x3d

    const/16 v3, 0x25

    const/16 v2, 0x21

    const/16 v1, 0x20

    .line 54
    iget-object v4, p0, Lpj;->a:Lrr;

    invoke-virtual {v4}, Lrr;->q()I

    move-result v4

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downlad result is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lpj;->a(Ljava/lang/String;)V

    .line 56
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 57
    const-string v1, "download success!!"

    invoke-direct {p0, v1}, Lpj;->a(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lpj;->a:Lrr;

    invoke-virtual {v1}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Laox;->k:Ljava/lang/String;

    sget-object v2, Laox;->at:Ljava/lang/String;

    sget-object v3, Laox;->au:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Layw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v0

    .line 67
    :cond_0
    const/16 v0, 0x3c

    goto :goto_0

    .line 68
    :cond_1
    if-ne v4, v1, :cond_2

    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-ne v4, v2, :cond_3

    move v0, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-ne v4, v3, :cond_4

    move v0, v3

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    const-string v1, "Expression repo download fail"

    invoke-direct {p0, v1}, Lpj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    sget-boolean v0, Lpj;->a:Z

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lpj;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lpj;->a:Lalv;

    .line 83
    iget-object v0, p0, Lpj;->a:Lsg;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lpj;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lpj;->a:Lrr;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lpj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 88
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lpj;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpj;->c:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lpj;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 44
    :cond_0
    invoke-direct {p0}, Lpj;->a()I

    move-result v0

    .line 46
    iget-object v1, p0, Lpj;->a:Lalv;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lpj;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 50
    :cond_1
    return-void
.end method
