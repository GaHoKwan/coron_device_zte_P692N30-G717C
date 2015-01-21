.class public Laja;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Laja;


# instance fields
.field private a:Laho;

.field private a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/LinkedList;

.field private a:Ljava/util/concurrent/ExecutorService;

.field private final a:Z

.field private b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "RecommendApkFileDownloaderManager"

    iput-object v0, p0, Laja;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Laja;->a:Z

    .line 25
    iput-object v1, p0, Laja;->a:Ljava/util/HashMap;

    .line 26
    iput-object v1, p0, Laja;->b:Ljava/util/HashMap;

    .line 27
    iput-object v1, p0, Laja;->a:Ljava/util/LinkedList;

    .line 28
    iput-object v1, p0, Laja;->a:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object v1, p0, Laja;->a:Laho;

    .line 45
    iput-object p1, p0, Laja;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laja;->a:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laja;->b:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laja;->a:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Laho;

    iget-object v1, p0, Laja;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Laho;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laja;->a:Laho;

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Laja;->a:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Laja;
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-object v0, Laja;->a:Laja;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Laja;

    invoke-direct {v0, p0}, Laja;-><init>(Landroid/content/Context;)V

    sput-object v0, Laja;->a:Laja;

    .line 36
    :cond_0
    sget-object v0, Laja;->a:Laja;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Laja;->a:Laho;

    invoke-virtual {v0, p1}, Laho;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Laix;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laix;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lajb;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Laja;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Laja;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajb;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JJ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 143
    const-string v0, ""

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Laja;->a:Laho;

    invoke-virtual {v0, p1}, Laho;->a(Ljava/lang/String;)Lahq;

    move-result-object v1

    .line 189
    const/4 v0, 0x0

    .line 190
    if-eqz v1, :cond_0

    .line 191
    iget-object v0, v1, Lahq;->d:Ljava/lang/String;

    .line 193
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Laja;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v2, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laix;

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Laix;->a(Laiz;)V

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public a(Laiz;Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadApkFile appInfo is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laja;->d(Ljava/lang/String;)V

    .line 66
    iget-object v1, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laix;

    .line 68
    if-nez v0, :cond_2

    .line 69
    iget-object v0, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    iget v2, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    invoke-virtual {p0, v0, v2}, Laja;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v0, Laix;

    iget-object v3, p0, Laja;->a:Landroid/content/Context;

    iget-object v4, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    iget v6, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    iget-object v7, p2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:Ljava/lang/String;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Laix;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Laiz;)V

    .line 72
    iget-object v2, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Laja;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Laix;->a(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Laix;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Laja;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Laix;->a(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laja;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laix;

    .line 86
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Laix;->c()V

    .line 90
    :cond_2
    iget-object v0, p0, Laja;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Laja;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Laja;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Laja;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajb;

    .line 157
    if-eqz v0, :cond_1

    .line 158
    iput p2, v0, Lajb;->a:I

    .line 159
    iput p3, v0, Lajb;->b:I

    .line 165
    :goto_1
    iget-object v1, p0, Laja;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Lajb;

    invoke-direct {v0}, Lajb;-><init>()V

    .line 162
    iput p2, v0, Lajb;->a:I

    .line 163
    iput p3, v0, Lajb;->b:I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Laja;->a:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Laja;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
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

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Laja;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Laja;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Laja;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Laja;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
