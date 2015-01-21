.class public Lcom/zte/zdm/b/f/a/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/c;


# instance fields
.field a:Z

.field private b:Lcom/zte/zdm/b/f/c;

.field private c:Lcom/zte/zdm/b/f/d;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/g/f/c;
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/zte/zdm/b/f/a/af;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/f/a/ac;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/a/ac;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/af;->c:Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/a/ac;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/f/a/ac;->a(I)V

    iput-boolean v2, p0, Lcom/zte/zdm/b/f/a/af;->a:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/f/a/af;->d:I

    return-void
.end method

.method public a(Lcom/zte/zdm/b/f/c;)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/b/f/a/af;->b:Lcom/zte/zdm/b/f/c;

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/af;->b:Lcom/zte/zdm/b/f/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/c;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/af;->c:Lcom/zte/zdm/b/f/d;

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/af;->c:Lcom/zte/zdm/b/f/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/a/af;->a:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/a/af;->a:Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zte/zdm/b/f/c;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/a/af;->a(Lcom/zte/zdm/b/f/c;)V

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const-string v0, "version"

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/af;->b:Lcom/zte/zdm/b/f/c;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/zdm/g/f/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "zdmtree"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public c(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "zdmtree"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
