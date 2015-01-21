.class public Lamh;
.super Lalg;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "RegisterController"

    sput-object v0, Lamh;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lamh;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p4}, Lalg;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lamh;->b:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lamh;->c:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lamh;->d:Ljava/lang/String;

    .line 30
    new-instance v0, Lrr;

    sget-object v1, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, p4, v1}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamh;->a:Lrr;

    .line 31
    return-void
.end method

.method private a()I
    .locals 6

    .prologue
    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v3, "u"

    iget-object v4, p0, Lamh;->b:Ljava/lang/String;

    invoke-static {v4}, Lsa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "p"

    iget-object v4, p0, Lamh;->c:Ljava/lang/String;

    invoke-static {v4}, Lsa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v3, p0, Lamh;->a:Lrr;

    invoke-virtual {v3, v2}, Lrr;->b(Ljava/util/Map;)I

    move-result v2

    .line 66
    sget-boolean v3, Lamh;->a:Z

    if-eqz v3, :cond_0

    sget-object v3, Lamh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-boolean v3, Lamh;->a:Z

    if-eqz v3, :cond_1

    sget-object v3, Lamh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "username:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lamh;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 69
    iget-object v0, p0, Lamh;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    const-string v2, "updateurl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 79
    :cond_2
    :goto_0
    return v0

    .line 73
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    const/16 v0, 0x9

    goto :goto_0

    .line 76
    :cond_4
    iput-boolean v1, p0, Lamh;->b:Z

    .line 77
    const/16 v0, 0x8

    goto :goto_0

    .line 79
    :cond_5
    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamh;->b:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lamh;->a:Lalv;

    .line 50
    iget-object v0, p0, Lamh;->a:Lsg;

    if-eqz v0, :cond_1

    .line 51
    sget-boolean v0, Lamh;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lamh;->a:Ljava/lang/String;

    const-string v1, "     cancel the pc merge controller process through set flag to canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v0, p0, Lamh;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 54
    :cond_1
    iget-object v0, p0, Lamh;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 55
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lamh;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lamh;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
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
    .line 34
    iget-object v0, p0, Lamh;->a:Lalv;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lamh;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 37
    :cond_0
    invoke-direct {p0}, Lamh;->a()I

    move-result v0

    iput v0, p0, Lamh;->a:I

    .line 38
    iget-object v0, p0, Lamh;->a:Lalv;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lamh;->a:Lalv;

    iget v1, p0, Lamh;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 41
    :cond_1
    return-void
.end method
