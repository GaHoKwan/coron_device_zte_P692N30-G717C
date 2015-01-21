.class public Lamp;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Lhf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lamp;->a:Lhf;

    .line 30
    new-instance v0, Lhf;

    iget-object v1, p0, Lamp;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamp;->a:Lhf;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 145
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 146
    aget-object v3, v2, v0

    sget-object v4, Laox;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 148
    if-nez v3, :cond_0

    .line 153
    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method

.method private b()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 53
    const-string v0, "[[updateThemeAdvertisementRes]]"

    invoke-direct {p0, v0}, Lamp;->a(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->Q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Laox;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Lamp;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    iget-object v0, p0, Lamp;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()Lhh;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lamp;->a:Lhf;

    invoke-virtual {v1}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_5

    const-string v2, "themeadvertisements"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    iget-object v2, p0, Lamp;->a:Lhf;

    new-instance v3, Lamq;

    invoke-direct {v3, p0}, Lamq;-><init>(Lamp;)V

    invoke-virtual {v2, v3}, Lhf;->a(Lrl;)V

    .line 71
    if-eqz v0, :cond_2

    .line 72
    iget-object v0, v0, Lhh;->c:Ljava/lang/String;

    .line 73
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[themeAdvertisement]] download new pic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lamp;->a(Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->Q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 79
    :cond_1
    iget-object v3, p0, Lamp;->a:Lhf;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->Q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lhf;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    .line 90
    :cond_2
    iget-object v0, p0, Lamp;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lafp;->I(Z)V

    .line 91
    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lamp;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lafp;->x(Ljava/lang/String;)V

    .line 93
    :cond_3
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 82
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_5
    const-string v0, "[[themeAdvertisement]] no need to down theme advertisement"

    invoke-direct {p0, v0}, Lamp;->a(Ljava/lang/String;)V

    .line 87
    const/16 v0, 0x1d

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 97
    .line 99
    new-instance v2, Ljava/io/File;

    sget-object v3, Laox;->Q:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    iget-object v2, p0, Lamp;->a:Lhf;

    invoke-virtual {v2}, Lhf;->n()I

    move-result v2

    .line 104
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 105
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->Q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laox;->R:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lamp;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->x()Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v0, ""

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    :try_start_0
    invoke-static {v2}, Lcom/sohu/util/CoreString;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 119
    :goto_0
    if-eqz v2, :cond_4

    const-string v0, ""

    if-eq v2, v0, :cond_4

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lamp;->a:Lhf;

    invoke-virtual {v0}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_7

    const-string v3, "themeadvertisements"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    const/4 v0, 0x1

    .line 124
    iget-object v3, p0, Lamp;->a:Landroid/content/Context;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lafp;->y(Ljava/lang/String;)V

    .line 126
    :goto_1
    iget-object v2, p0, Lamp;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lafp;->I(Z)V

    move v1, v0

    .line 136
    :cond_1
    :goto_2
    if-eqz v1, :cond_6

    .line 137
    const/16 v1, 0x1c

    .line 139
    :cond_2
    :goto_3
    return v1

    .line 111
    :catch_0
    move-exception v2

    .line 113
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v2, v0

    .line 117
    goto :goto_0

    .line 114
    :catch_1
    move-exception v2

    .line 116
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    move-object v2, v0

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lamp;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->I(Z)V

    goto :goto_2

    .line 132
    :cond_5
    if-ne v2, v0, :cond_2

    move v1, v0

    goto :goto_3

    .line 139
    :cond_6
    const/16 v1, 0x1d

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lamp;->a()I

    move-result v0

    .line 36
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 38
    invoke-direct {p0}, Lamp;->b()I

    move-result v0

    iput v0, p0, Lamp;->a:I

    .line 40
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lamp;->a:Lsg;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lamp;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lamp;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 48
    iget-object v0, p0, Lamp;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamp;->b:Z

    .line 50
    return-void
.end method
