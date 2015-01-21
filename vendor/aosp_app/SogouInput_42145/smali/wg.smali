.class public Lwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field private a:I

.field private a:Lalv;

.field private a:Landroid/content/Context;

.field private a:Ljava/util/List;

.field private a:Lrr;

.field private a:Lwh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lwg;->a:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lwg;->a:I

    .line 39
    iput-object p1, p0, Lwg;->a:Landroid/content/Context;

    .line 40
    new-instance v0, Lrr;

    iget-object v1, p0, Lwg;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lwg;->a:Lrr;

    .line 41
    iput-object p2, p0, Lwg;->a:Ljava/util/List;

    .line 42
    return-void
.end method

.method private a(I)I
    .locals 6
    .parameter

    .prologue
    const/16 v1, 0x23

    const/4 v5, 0x1

    const/16 v2, 0x24

    .line 133
    iget-object v0, p0, Lwg;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    move v0, v2

    .line 161
    :goto_0
    return v0

    .line 138
    :cond_1
    :try_start_0
    iget-object v0, p0, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->an:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v1

    .line 143
    goto :goto_0

    .line 145
    :cond_2
    iget-object v4, p0, Lwg;->a:Lrr;

    iget-object v0, p0, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 146
    const/16 v4, 0x18

    if-ne v0, v4, :cond_3

    .line 148
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 666 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 161
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    .line 151
    goto :goto_0

    :cond_3
    move v0, v2

    .line 154
    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    move v0, v2

    .line 159
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    return-void
.end method


# virtual methods
.method public a(Lalv;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lwg;->a:Lalv;

    .line 51
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lwg;->a:Lalv;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lwg;->a:Lalv;

    invoke-interface {v0}, Lalv;->d()V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    return-void
.end method

.method public a(Lwh;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lwg;->a:Lwh;

    .line 46
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lwg;->a:Lalv;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lwg;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 66
    :cond_0
    iget-object v0, p0, Lwg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 68
    invoke-direct {p0, v1}, Lwg;->a(I)I

    move-result v0

    iput v0, p0, Lwg;->a:I

    .line 69
    iget v0, p0, Lwg;->a:I

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    .line 70
    iget-object v0, p0, Lwg;->a:Lwh;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->an:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    iget-object v3, p0, Lwg;->a:Lwh;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lwh;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 67
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lwg;->a:Lwh;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lwh;->a(Ljava/lang/Integer;)V

    goto :goto_1

    .line 84
    :cond_3
    iget v0, p0, Lwg;->a:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_4

    .line 85
    const-string v0, "download app detail images fail!"

    invoke-direct {p0, v0}, Lwg;->a(Ljava/lang/String;)V

    .line 87
    :cond_4
    return-void
.end method

.method public b(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lwg;->a:Lalv;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lwg;->a:Lalv;

    invoke-interface {v0}, Lalv;->h()V

    .line 94
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lwg;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 99
    iget-object v0, p0, Lwg;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 100
    iget-object v0, p0, Lwg;->a:Lalv;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lwg;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lwg;->a:Lalv;

    .line 105
    :cond_0
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    return-void
.end method
