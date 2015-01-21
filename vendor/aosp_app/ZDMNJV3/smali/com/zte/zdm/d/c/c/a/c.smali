.class Lcom/zte/zdm/d/c/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/c;


# instance fields
.field a:Lcom/zte/zdm/d/c/c/b;

.field b:I

.field final synthetic c:Lcom/zte/zdm/d/c/c/a/b;

.field private d:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/zte/zdm/d/c/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a/c;->c:Lcom/zte/zdm/d/c/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/d/c/c/c;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "RTProperties"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/zte/zdm/d/c/c/a/m;->values()[Lcom/zte/zdm/d/c/c/a/m;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3, p2}, Lcom/zte/zdm/d/c/c/a/m;->a(Lcom/zte/zdm/d/c/c/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/c/a/m;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v4}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "RTProperties"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/g/f/c;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/c;->d:Ljava/util/Iterator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/c;->d:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zte/zdm/d/c/c/a/c;

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/c;->c:Lcom/zte/zdm/d/c/c/a/b;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/c/a/c;-><init>(Lcom/zte/zdm/d/c/c/a/b;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/c/a/c;->a(Lcom/zte/zdm/d/c/c/b;)V

    iget v0, p0, Lcom/zte/zdm/d/c/c/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/c/a/c;->a(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/d/c/c/a/c;->b:I

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/c/b;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a/c;->a:Lcom/zte/zdm/d/c/c/b;

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/c;->a:Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a/c;->d:Ljava/util/Iterator;

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/c/a/c;->a(Lcom/zte/zdm/d/c/c/b;)V

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/zte/zdm/d/c/c/a/g;->values()[Lcom/zte/zdm/d/c/c/a/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/zte/zdm/d/c/c/a/c;->a:Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v3, v4}, Lcom/zte/zdm/d/c/c/a/g;->a(Lcom/zte/zdm/d/c/c/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/c/a/g;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Format"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    const-string v5, "Format"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "Format"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v5, "Type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "Type"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "MIME"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v4, :cond_1

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    const-string v3, "MIME"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "Type"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    invoke-static {p1, v3, v4}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/c;->a:Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/b;->l()Lcom/zte/zdm/d/c/c/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/d/c/c/a/c;->a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/d/c/c/c;)V

    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public c(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
