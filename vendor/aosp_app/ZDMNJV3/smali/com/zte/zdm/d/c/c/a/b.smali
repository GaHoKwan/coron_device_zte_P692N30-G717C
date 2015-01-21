.class public Lcom/zte/zdm/d/c/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/c;


# instance fields
.field private a:Lcom/zte/zdm/d/c/c/a;

.field private b:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/g/f/c;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/b;->b:Ljava/util/Iterator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/b;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zte/zdm/d/c/c/a/c;

    invoke-direct {v1, p0}, Lcom/zte/zdm/d/c/c/a/c;-><init>(Lcom/zte/zdm/d/c/c/a/b;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/c/a/c;->a(Lcom/zte/zdm/d/c/c/b;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/c/a/c;->a(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/c/a;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a/b;->a:Lcom/zte/zdm/d/c/c/a;

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/b;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a/b;->b:Ljava/util/Iterator;

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/c/a/b;->a(Lcom/zte/zdm/d/c/c/a;)V

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const-string v0, "Man"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/b;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mod"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/b;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VerDTD"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/b;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/c/a;->d()Lcom/zte/zdm/d/c/bo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MgmtTree"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "xmlns"

    const-string v1, "syncml:dmddf1.2"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public c(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "MgmtTree"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
