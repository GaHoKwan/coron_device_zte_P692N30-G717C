.class public Lkr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lkr;


# instance fields
.field private a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/LinkedList;

.field private a:Lks;

.field private final a:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "QrAPKDownloadManager"

    iput-object v0, p0, Lkr;->a:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkr;->a:Z

    .line 23
    iput-object v1, p0, Lkr;->a:Ljava/util/HashMap;

    .line 24
    iput-object v1, p0, Lkr;->a:Ljava/util/LinkedList;

    .line 26
    iput-object v1, p0, Lkr;->a:Lks;

    .line 41
    iput-object p1, p0, Lkr;->a:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkr;->a:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Lks;

    iget-object v1, p0, Lkr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkr;->a:Lks;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lkr;
    .locals 1
    .parameter

    .prologue
    .line 29
    sget-object v0, Lkr;->a:Lkr;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lkr;

    invoke-direct {v0, p0}, Lkr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lkr;->a:Lkr;

    .line 32
    :cond_0
    sget-object v0, Lkr;->a:Lkr;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_1
    invoke-virtual {p0, p1, p2}, Lkr;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->as:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lko;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lko;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lko;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lko;->d()V

    .line 87
    :cond_1
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lkq;Lku;Landroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const-string v0, "=====downloadApkFile====="

    invoke-direct {p0, v0}, Lkr;->d(Ljava/lang/String;)V

    .line 61
    if-eqz p2, :cond_0

    iget-object v0, p2, Lku;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadApkFile appInfo is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkr;->d(Ljava/lang/String;)V

    .line 65
    iget-object v6, p2, Lku;->e:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lkr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lko;

    .line 67
    iget-object v1, p0, Lkr;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lkr;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    if-nez v0, :cond_0

    .line 70
    iget-object v0, p2, Lku;->b:Ljava/lang/String;

    iget v1, p2, Lku;->a:I

    invoke-virtual {p0, v0, v1, v6}, Lkr;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v0, Lko;

    iget-object v2, p0, Lkr;->a:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lko;-><init>(Ljava/lang/String;Landroid/content/Context;Lku;Lkq;Landroid/os/Handler;)V

    .line 72
    iget-object v1, p0, Lkr;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Lko;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    iget-object v2, p0, Lkr;->a:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-object v2, p0, Lkr;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lkr;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lkr;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lkr;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lkr;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lkr;->a:Lks;

    invoke-virtual {v0, p1}, Lks;->a(Ljava/lang/String;)V

    .line 149
    return-void
.end method
