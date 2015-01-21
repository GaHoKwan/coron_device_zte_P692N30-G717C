.class public Labt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Labt;


# instance fields
.field private a:Laur;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Labt;->a:Labt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Labt;->a:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/symcommon.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labt;->a:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Labt;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Labt;->a(Ljava/lang/String;)V

    .line 37
    const-string v0, "CommonUse"

    iput-object v0, p0, Labt;->b:Ljava/lang/String;

    .line 38
    new-instance v0, Laur;

    invoke-direct {v0}, Laur;-><init>()V

    iput-object v0, p0, Labt;->a:Laur;

    .line 39
    iget-object v0, p0, Labt;->a:Laur;

    iget-object v1, p0, Labt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laur;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Labt;->a:Laur;

    iget-object v1, p0, Labt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laur;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labt;->a:Ljava/util/List;

    .line 42
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Labt;
    .locals 3
    .parameter

    .prologue
    .line 28
    const-class v1, Labt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labt;->a:Labt;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Labt;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Labt;-><init>(Ljava/lang/String;)V

    sput-object v0, Labt;->a:Labt;

    .line 31
    :cond_0
    sget-object v0, Labt;->a:Labt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Labt;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-object v1, p0, Labt;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v1, p0, Labt;->a:Laur;

    invoke-virtual {v1}, Laur;->a()Ljava/util/List;

    move-result-object v1

    .line 48
    iget-object v2, p0, Labt;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    iget-object v2, p0, Labt;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    new-instance v2, Laus;

    invoke-direct {v2}, Laus;-><init>()V

    .line 52
    iget-object v3, p0, Labt;->a:Ljava/util/List;

    iput-object v3, v2, Laus;->a:Ljava/util/List;

    .line 53
    const-string v3, ""

    iput-object v3, v2, Laus;->a:Ljava/lang/String;

    .line 54
    iput-boolean v0, v2, Laus;->b:Z

    .line 55
    iput-boolean v0, v2, Laus;->a:Z

    .line 56
    iget-object v3, p0, Labt;->a:Laur;

    invoke-virtual {v3}, Laur;->a()Ljava/util/Map;

    move-result-object v3

    .line 57
    iget-object v4, p0, Labt;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v4, p0, Labt;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "save common use symbols"

    invoke-direct {p0, v2}, Labt;->a(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Labt;->a:Laur;

    iget-object v4, p0, Labt;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v1, v3}, Laur;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labt;->a:Ljava/util/List;

    .line 69
    :cond_0
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Labt;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 75
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labt;->a:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Labt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method
