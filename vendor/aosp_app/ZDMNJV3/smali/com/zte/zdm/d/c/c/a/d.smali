.class public Lcom/zte/zdm/d/c/c/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x0

.field private static final b:Ljava/lang/String; = "TreeFormatter"

.field private static c:Lcom/zte/zdm/g/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zte/zdm/d/c/c/a/d;->a:I

    new-instance v0, Lcom/zte/zdm/g/f/a;

    invoke-direct {v0}, Lcom/zte/zdm/g/f/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/d;->c:Lcom/zte/zdm/g/f/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/c/a;Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/zte/zdm/d/c/c/a/d;->a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/d/c/c/a;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method static a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const-string v0, "\n"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/zte/zdm/d/c/c/a/d;->a:I

    if-ge v0, v1, :cond_0

    const-string v1, "\t"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/d/c/c/a;)V
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/c/a/b;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/a/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/a/b;->a(Lcom/zte/zdm/d/c/c/a;)V

    sget-object v1, Lcom/zte/zdm/d/c/c/a/d;->c:Lcom/zte/zdm/g/f/a;

    invoke-virtual {v1, p0, v0}, Lcom/zte/zdm/g/f/a;->a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/g/f/c;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/io/FileInputStream;

    const-string v0, "resource/mgmttree.xml"

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/d/c/c/a/v;->a(Ljava/io/InputStream;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/b;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/zte/zdm/d/c/c/b;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/b;->l()Lcom/zte/zdm/d/c/c/c;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/c/c/c;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/c/a;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/zte/zdm/d/c/c/a/d;->a(Lcom/zte/zdm/d/c/c/a;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/zte/zdm/d/c/c/a;Ljava/io/OutputStream;)V
    .locals 2

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createDMSerializer()Lorg/kxml2/wap/WbxmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/zte/zdm/d/c/c/a/d;->a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/d/c/c/a;)V

    invoke-virtual {v0}, Lorg/kxml2/wap/WbxmlSerializer;->endDocument()V

    return-void
.end method

.method public static b(Lcom/zte/zdm/d/c/c/a;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/zte/zdm/d/c/c/a/d;->b(Lcom/zte/zdm/d/c/c/a;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/zte/zdm/d/c/c/a;)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p0}, Lcom/zte/zdm/d/c/c/a/d;->a(Lcom/zte/zdm/d/c/c/a;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "TreeFormatter"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TreeFormatter"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "TreeFormatter"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Lcom/zte/zdm/d/c/c/a;)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p0}, Lcom/zte/zdm/d/c/c/a/d;->b(Lcom/zte/zdm/d/c/c/a;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "TreeFormatter"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TreeFormatter"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "TreeFormatter"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
