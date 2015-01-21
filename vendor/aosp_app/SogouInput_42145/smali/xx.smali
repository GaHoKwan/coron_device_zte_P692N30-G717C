.class public Lxx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lxx;


# instance fields
.field private a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/LinkedList;

.field private a:Lwl;

.field private final a:Z

.field private b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "PlatformApkFileDownloaderManager"

    iput-object v0, p0, Lxx;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxx;->a:Z

    .line 24
    iput-object v1, p0, Lxx;->a:Ljava/util/HashMap;

    .line 25
    iput-object v1, p0, Lxx;->b:Ljava/util/HashMap;

    .line 26
    iput-object v1, p0, Lxx;->a:Ljava/util/LinkedList;

    .line 28
    iput-object v1, p0, Lxx;->a:Lwl;

    .line 38
    iput-object p1, p0, Lxx;->a:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxx;->b:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lxx;->a:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Lwl;

    iget-object v1, p0, Lxx;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxx;->a:Lwl;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Lxx;->a:Lxx;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lxx;

    invoke-direct {v0, p0}, Lxx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxx;->a:Lxx;

    .line 34
    :cond_0
    sget-object v0, Lxx;->a:Lxx;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lxx;->a:Lwl;

    invoke-virtual {v0, p1}, Lwl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(JJ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 158
    const-string v0, ""

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lxx;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method public a()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lxx;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lxu;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lxy;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lxx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxy;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxx;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 73
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lxu;->e()V

    .line 77
    :cond_2
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lxx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lxx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxy;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iput p2, v0, Lxy;->a:I

    .line 171
    iput p3, v0, Lxy;->b:I

    .line 177
    :goto_0
    iget-object v1, p0, Lxx;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void

    .line 173
    :cond_0
    new-instance v0, Lxy;

    invoke-direct {v0}, Lxy;-><init>()V

    .line 174
    iput p2, v0, Lxy;->a:I

    .line 175
    iput p3, v0, Lxy;->b:I

    goto :goto_0
.end method

.method public a(Lxw;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 56
    if-nez v0, :cond_2

    .line 57
    iget-object v0, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v2, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {p0, v0, v2}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v0, Lxu;

    iget-object v3, p0, Lxx;->a:Landroid/content/Context;

    iget-object v4, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v6, p2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lxu;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILxw;)V

    .line 59
    iget-object v2, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Lxu;->a()V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lxu;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v0}, Lxu;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lxx;->a:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v1, p0, Lxx;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lxx;->a:Lwl;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "mAppDownloadDao is null"

    invoke-direct {p0, v0}, Lxx;->e(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lxx;->a:Lwl;

    invoke-virtual {v0, p1}, Lwl;->a(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lxx;->a:Lwl;

    if-nez v0, :cond_0

    .line 204
    const-string v0, "mAppDownloadDao is null"

    invoke-direct {p0, v0}, Lxx;->e(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lxx;->a:Lwl;

    invoke-virtual {v0, p1, p2, p3}, Lwl;->a(Ljava/util/List;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
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

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lxy;
    .locals 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lxx;->a:Lwl;

    invoke-virtual {v0, p1}, Lwl;->a(Ljava/lang/String;)Lwn;

    move-result-object v1

    .line 186
    const/4 v0, 0x0

    .line 187
    if-eqz v1, :cond_0

    .line 188
    new-instance v0, Lxy;

    invoke-direct {v0}, Lxy;-><init>()V

    .line 189
    iget v2, v1, Lwn;->d:I

    iput v2, v0, Lxy;->a:I

    .line 190
    iget v1, v1, Lwn;->c:I

    iput v1, v0, Lxy;->b:I

    .line 192
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lxx;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lxx;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lxx;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lxx;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lxx;->a:Lwl;

    invoke-virtual {v0, p1}, Lwl;->a(Ljava/lang/String;)V

    .line 140
    return-void
.end method
