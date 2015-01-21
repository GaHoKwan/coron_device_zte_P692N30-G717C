.class public Lcom/zte/zdm/b/a/g;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field b:Lcom/zte/zdm/e/b;

.field final synthetic c:Lcom/zte/zdm/b/a/d;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/b/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/g;->a:Ljava/util/List;

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->q()Lcom/zte/zdm/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a/g;->b:Lcom/zte/zdm/e/b;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a/g;-><init>(Lcom/zte/zdm/b/a/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a/g;-><init>(Lcom/zte/zdm/b/a/d;)V

    return-void
.end method


# virtual methods
.method a(Lcom/zte/zdm/b/c/b/c;)I
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/zte/zdm/b/a/f;

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-direct {v0, v1, v4}, Lcom/zte/zdm/b/a/f;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    new-instance v1, Lcom/zte/zdm/b/a/h;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zdm/b/a/h;-><init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/a/h;->start()V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->e()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/a/g;->g(Lcom/zte/zdm/b/c/b/c;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->c()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1, v4, v0, v4}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V

    return v0
.end method

.method a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/zte/zdm/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a/g;->b:Lcom/zte/zdm/e/b;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ai;-><init>()V

    new-instance v1, Lcom/zte/zdm/d/c/n;

    invoke-direct {v1, p1}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/n;)V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/zte/zdm/b/c/b/c;)I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "zdm_alert_test in confirmation"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/f;

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/b/a/f;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    new-instance v1, Lcom/zte/zdm/b/a/i;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zdm/b/a/i;-><init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->e()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zdm_alert_test after confirmation status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/a/g;->g(Lcom/zte/zdm/b/c/b/c;)V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1, v3, v0, v3}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V

    return v0
.end method

.method c(Lcom/zte/zdm/b/c/b/c;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/b/a/f;

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/b/a/f;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    new-instance v1, Lcom/zte/zdm/b/a/j;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zdm/b/a/j;-><init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->e()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/a/g;->g(Lcom/zte/zdm/b/c/b/c;)V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    iget-object v2, p0, Lcom/zte/zdm/b/a/g;->a:Ljava/util/List;

    invoke-static {v0, v3, v1, v2}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V

    return v1
.end method

.method d(Lcom/zte/zdm/b/c/b/c;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/b/a/f;

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/b/a/f;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    new-instance v1, Lcom/zte/zdm/b/a/k;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zdm/b/a/k;-><init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->e()I

    move-result v1

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    iget-object v2, p0, Lcom/zte/zdm/b/a/g;->a:Ljava/util/List;

    invoke-static {v0, v3, v1, v2}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V

    return v1
.end method

.method e(Lcom/zte/zdm/b/c/b/c;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/b/a/f;

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-direct {v0, v1, v3}, Lcom/zte/zdm/b/a/f;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    new-instance v1, Lcom/zte/zdm/b/a/l;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zdm/b/a/l;-><init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    invoke-static {v1}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->e()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/a/g;->c:Lcom/zte/zdm/b/a/d;

    iget-object v2, p0, Lcom/zte/zdm/b/a/g;->a:Ljava/util/List;

    invoke-static {v0, v3, v1, v2}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V

    return v1
.end method

.method f(Lcom/zte/zdm/b/c/b/c;)I
    .locals 1

    const/16 v0, 0x196

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/a/g;->g(Lcom/zte/zdm/b/c/b/c;)V

    return v0
.end method

.method g(Lcom/zte/zdm/b/c/b/c;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " MINDT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", MAXDT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", MAXLEN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", DR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", IT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->h()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", ET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->i()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert Type   [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert Option ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->c()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zte/zdm/b/c/b/c;->c()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert Message["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    return-void
.end method
