.class public Lcom/zte/zdm/d/b/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/zte/zdm/d/b/a;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/kxml2/wap/WbxmlParser;)Lorg/kxml2/kdom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/b/a;->a(Lorg/kxml2/kdom/Document;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/zte/zdm/d/b/a;->a([BLjava/lang/String;Lorg/kxml2/wap/WbxmlParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLjava/lang/String;Lorg/kxml2/wap/WbxmlParser;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/zte/zdm/d/b/a;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/kxml2/wap/WbxmlParser;)Lorg/kxml2/kdom/Document;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/d/b/a;->a(Lorg/kxml2/kdom/Document;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Lorg/kxml2/wap/WbxmlParser;)Lorg/kxml2/kdom/Document;
    .locals 1

    new-instance v0, Lorg/kxml2/kdom/Document;

    invoke-direct {v0}, Lorg/kxml2/kdom/Document;-><init>()V

    invoke-virtual {p2, p0, p1}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/kxml2/kdom/Document;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "E:\\synccap\\sync"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "E:\\synccap\\sync%3fsid=1400MjAxMjAzMjEtMTUyODIwLTgzOS0xOTIuMTY4LjIzNC4yMDQ(5)"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lcom/zte/zdm/d/b/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/b/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/kxml2/kdom/Document;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v2}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    invoke-virtual {v2, v1}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Lorg/kxml2/kdom/Document;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
