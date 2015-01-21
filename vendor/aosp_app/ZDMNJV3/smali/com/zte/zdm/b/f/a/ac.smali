.class Lcom/zte/zdm/b/f/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/c;


# static fields
.field private static a:Lcom/zte/zdm/d/d/b;


# instance fields
.field private b:Lcom/zte/zdm/b/f/d;

.field private c:I

.field private d:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/d/d/b;

    invoke-direct {v0}, Lcom/zte/zdm/d/d/b;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/f/a/ac;->a:Lcom/zte/zdm/d/d/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/g/f/c;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/ac;->d:Ljava/util/Iterator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/f/a/ac;->d:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zte/zdm/b/f/a/ac;

    invoke-direct {v1}, Lcom/zte/zdm/b/f/a/ac;-><init>()V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/ac;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/a/ac;->a(Lcom/zte/zdm/b/f/d;)V

    iget v0, p0, Lcom/zte/zdm/b/f/a/ac;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/a/ac;->a(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/f/a/ac;->c:I

    return-void
.end method

.method public a(Lcom/zte/zdm/b/f/d;)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/b/f/a/ac;->b:Lcom/zte/zdm/b/f/d;

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/ac;->b:Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/ac;->d:Ljava/util/Iterator;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zte/zdm/b/f/d;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/a/ac;->a(Lcom/zte/zdm/b/f/d;)V

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/ac;->b:Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const-string v1, "name"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->h()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "permanent"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->l()Lcom/zte/zdm/b/f/d/b;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/zte/zdm/b/f/a/ac;->a:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/zdm/d/d/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "acl"

    invoke-static {p1, v2, v1}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->m()Lcom/zte/zdm/b/f/d/a;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/zte/zdm/b/f/a/ac;->a:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/zdm/d/d/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accesstype"

    invoke-static {p1, v2, v1}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "title"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->p()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "verno"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-class v1, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    const-string v1, "value"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/e;->a()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, v1, v2}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/e;->a()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/zte/zdm/b/f/d/e;

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/ac;->b:Lcom/zte/zdm/b/f/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "leaf"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "node"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public c(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/zte/zdm/b/f/d/e;

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/ac;->b:Lcom/zte/zdm/b/f/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "leaf"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "node"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method
