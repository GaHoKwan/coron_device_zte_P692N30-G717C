.class Lafq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lafp;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lafp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2842
    iput-object p1, p0, Lafq;->a:Lafp;

    iput-object p2, p0, Lafq;->a:Ljava/lang/String;

    iput-object p3, p0, Lafq;->b:Ljava/lang/String;

    iput-object p4, p0, Lafq;->a:Ljava/util/List;

    iput-object p5, p0, Lafq;->b:Ljava/util/List;

    iput-object p6, p0, Lafq;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2844
    const-string v0, ".ini"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lafq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2846
    new-instance v1, Layx;

    invoke-direct {v1, v0}, Layx;-><init>(Ljava/lang/String;)V

    .line 2847
    const-string v2, "Info"

    const-string v3, "NAME"

    iget-object v4, p0, Lafq;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2848
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lafq;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2849
    :cond_0
    iget-object v2, p0, Lafq;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lafq;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2850
    :cond_1
    iget-object v1, p0, Lafq;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lafq;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2852
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
