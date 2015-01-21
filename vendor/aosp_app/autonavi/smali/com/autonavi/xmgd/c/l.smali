.class public Lcom/autonavi/xmgd/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/c/e;
.implements Lcom/autonavi/xmgd/c/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/autonavi/xmgd/c/g",
        "<",
        "Lcom/autonavi/xmgd/c/k;",
        ">;",
        "Lcom/autonavi/xmgd/c/e;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static a:I

.field private static final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/h",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:[I

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/autonavi/xmgd/c/l;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/c/l;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    iput v2, p0, Lcom/autonavi/xmgd/c/l;->e:I

    iput v1, p0, Lcom/autonavi/xmgd/c/l;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/l;->g:Ljava/lang/String;

    const-string v0, "000"

    iput-object v0, p0, Lcom/autonavi/xmgd/c/l;->h:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/xmgd/c/l;->i:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/c/l;->j:[I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    iput v1, p0, Lcom/autonavi/xmgd/c/l;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    iput p1, p0, Lcom/autonavi/xmgd/c/l;->m:I

    iget v0, p0, Lcom/autonavi/xmgd/c/l;->m:I

    iput v0, p0, Lcom/autonavi/xmgd/c/l;->l:I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/c/l;->l:I

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;I)Z

    return-void
.end method

.method public static a(I)Lcom/autonavi/xmgd/c/l;
    .locals 3

    const/16 v0, 0x1b59

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b5b

    if-ne p0, v0, :cond_3

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/c/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    sget-object v0, Lcom/autonavi/xmgd/c/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/l;

    iget v0, v0, Lcom/autonavi/xmgd/c/l;->m:I

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/autonavi/xmgd/c/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/l;

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/autonavi/xmgd/c/l;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/c/l;-><init>(I)V

    sget-object v1, Lcom/autonavi/xmgd/c/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v1, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, ""

    const-string v4, "og"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "servcode"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "0005"

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "servcode"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "search"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "search"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "adcode"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "adcode"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "size"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "size"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "page"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "page"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "imei"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "imei"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "syscode"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v1, 0x4c3c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "syscode"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "sign"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x4c3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/MD5;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "sign"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "searchtype"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v1, p0, Lcom/autonavi/xmgd/c/l;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v4, "searchtype"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v4, v5, :cond_0

    :goto_0
    const-string v1, ""

    const-string v4, "language"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    const-string v1, "language"

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    const-string v1, "og"

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2, p3}, Lcom/autonavi/xmgd/c/l;->a(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p3}, Lcom/autonavi/xmgd/c/l;->a(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/c/l;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xmgd/c/l;->f:I

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/c/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/xmgd/c/h",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/autonavi/xmgd/c/l;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/xmgd/c/l;->h:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xmgd/c/l;->i:I

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/c/l;->e:I

    iput v1, p0, Lcom/autonavi/xmgd/c/l;->f:I

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/h;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/c/h;->citySearchResult(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/h;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/xmgd/c/h;->dataLoaded(Ljava/util/ArrayList;ZLjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/autonavi/xmgd/c/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/xmgd/c/h",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/l;->h:Ljava/lang/String;

    const/16 v2, 0x14

    iget v3, p0, Lcom/autonavi/xmgd/c/l;->e:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://mlbs.autonavi.com/servicesearch"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/c/l;->j:[I

    iget v4, p0, Lcom/autonavi/xmgd/c/l;->l:I

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetPoiDataLoaderHandler] startSearch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    const-string v1, "[-1]"

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/xmgd/c/l;->a(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    const/16 v5, 0xa

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/l;->h:Ljava/lang/String;

    iget v2, p0, Lcom/autonavi/xmgd/c/l;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/autonavi/xmgd/c/l;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://mlbs.autonavi.com/servicesearch"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/c/l;->j:[I

    iget v4, p0, Lcom/autonavi/xmgd/c/l;->l:I

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    return v0
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/c/l;->i()V

    iput v1, p0, Lcom/autonavi/xmgd/c/l;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/c/l;->e:I

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->k:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/l;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const-string v2, "[-1]"

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xmgd/c/l;->a(Ljava/util/ArrayList;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/c/l;->l:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/a;->a(I)V

    return-void
.end method

.method public onHttpException(Ljava/lang/Exception;IILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/autonavi/xmgd/c/l;->l:I

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[38]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xmgd/c/l;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onHttpRequestByteReceived(III)V
    .locals 0

    return-void
.end method

.method public onHttpRequestFinish([BIII)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NetPoiDataLoaderHandler] onHttpRequestFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/autonavi/xmgd/c/l;->l:I

    if-ne p4, v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xmgd/c/l;->j:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xmgd/c/l;->j:[I

    aget v1, v1, v4

    if-ne v1, p3, :cond_6

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    new-instance v2, Lcom/autonavi/xmgd/c/m;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/autonavi/xmgd/c/m;-><init>(Lcom/autonavi/xmgd/c/l;Lcom/autonavi/xmgd/c/c;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object v0, v2, Lcom/autonavi/xmgd/c/m;->b:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[83]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/autonavi/xmgd/c/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/autonavi/xmgd/c/l;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, v2, Lcom/autonavi/xmgd/c/m;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/autonavi/xmgd/c/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/autonavi/xmgd/c/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/c/l;->e:I

    iget v0, v2, Lcom/autonavi/xmgd/c/m;->a:I

    sget v1, Lcom/autonavi/xmgd/c/l;->a:I

    if-le v0, v1, :cond_3

    sget v0, Lcom/autonavi/xmgd/c/l;->a:I

    :goto_1
    iput v0, p0, Lcom/autonavi/xmgd/c/l;->f:I

    const/4 v0, 0x1

    iget-object v1, v2, Lcom/autonavi/xmgd/c/m;->c:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/autonavi/xmgd/c/m;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xmgd/c/l;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "[82]"

    invoke-direct {p0, v4, v5, v0}, Lcom/autonavi/xmgd/c/l;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget v0, v2, Lcom/autonavi/xmgd/c/m;->a:I

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/autonavi/xmgd/c/m;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/autonavi/xmgd/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, v2, Lcom/autonavi/xmgd/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/c/l;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "[-1]"

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xmgd/c/l;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    iput-boolean v4, p0, Lcom/autonavi/xmgd/c/l;->d:Z

    goto :goto_0
.end method

.method public onHttpTaskCanceled([BIII)V
    .locals 0

    return-void
.end method

.method public onHttpTimeOut(Ljava/lang/String;II)V
    .locals 3

    iget v0, p0, Lcom/autonavi/xmgd/c/l;->l:I

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "[1]"

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xmgd/c/l;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
