.class Lakk;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 1885
    iput-object p1, p0, Lakk;->a:Lajq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1887
    iget-object v0, p0, Lakk;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Lrr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1888
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1889
    iget-object v0, p0, Lakk;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1890
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1891
    iget-object v0, p0, Lakk;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajj;

    invoke-virtual {v0}, Lajj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lakk;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajj;

    invoke-virtual {v0}, Lajj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1893
    add-int/lit8 v0, v3, -0x1

    if-eq v1, v0, :cond_0

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1890
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1896
    :cond_1
    iget-object v0, p0, Lakk;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Lrr;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrr;->e(Ljava/lang/String;)I

    .line 1898
    :cond_2
    return-void
.end method
