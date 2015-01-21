.class public Lcom/zte/zdm/b/f/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/f/a/c;


# static fields
.field private static e:I = 0x0

.field private static final f:Ljava/lang/String; = "TreeFormatter"

.field private static g:Lcom/zte/zdm/g/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zte/zdm/b/f/a/ag;->e:I

    new-instance v0, Lcom/zte/zdm/g/f/a;

    invoke-direct {v0}, Lcom/zte/zdm/g/f/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/f/a/ag;->g:Lcom/zte/zdm/g/f/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/b/f/c;Ljava/io/OutputStream;)V
    .locals 3

    new-instance v0, Lcom/zte/zdm/b/f/a/af;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/a/af;-><init>()V

    sget-object v1, Lcom/zte/zdm/b/f/a/ag;->g:Lcom/zte/zdm/g/f/a;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/zte/zdm/g/f/a;->a(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/c;)V

    return-void
.end method

.method static a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    const-string v0, "\n"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/zte/zdm/b/f/a/ag;->e:I

    if-ge v0, v1, :cond_0

    const-string v1, "\t"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 13

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "."

    const-string v1, "node"

    const/4 v8, 0x0

    const-string v9, "text/plain"

    new-instance v10, Lcom/zte/zdm/b/f/d/b;

    const-string v1, "Add=*&Replace=*"

    invoke-direct {v10, v1}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v7, v1, [B

    fill-array-data v7, :array_0

    new-instance v1, Lcom/zte/zdm/b/f/d/d;

    invoke-direct {v1, v0, v8, v9, v10}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/d/f;->c(Ljava/lang/String;)V

    new-instance v11, Lcom/zte/zdm/b/f/d;

    invoke-direct {v11, v1}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/zte/zdm/b/f/d/d;

    const-string v1, "child"

    invoke-direct {v0, v1, v8, v4, v10}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    const-string v1, "child1"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/f;->c(Ljava/lang/String;)V

    new-instance v12, Lcom/zte/zdm/b/f/d;

    invoke-direct {v12, v0}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/zte/zdm/b/f/d/e;

    const-string v1, "parkname"

    const-string v2, "chr"

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;I[B)V

    const-string v1, "parkname"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/e;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/b/f/d;

    invoke-direct {v1, v0}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    new-instance v0, Lcom/zte/zdm/b/f/d/d;

    const-string v1, "child"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    const-string v1, "child2"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/f;->c(Ljava/lang/String;)V

    new-instance v8, Lcom/zte/zdm/b/f/d;

    invoke-direct {v8, v0}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/zte/zdm/b/f/d/e;

    const-string v1, "parkname"

    const-string v2, "chr"

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;I[B)V

    const-string v1, "parkname"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/e;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/b/f/d;

    invoke-direct {v1, v0}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v11, v12}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v11, v8}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    new-instance v0, Lcom/zte/zdm/b/f/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/b;-><init>()V

    const-string v1, "0.10"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/b;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/ag;->a(Lcom/zte/zdm/b/f/c;)[B

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "resource/out.xml"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public static a(Lcom/zte/zdm/b/f/c;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/zte/zdm/b/f/a/ag;->a(Lcom/zte/zdm/b/f/c;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/zte/zdm/b/f/c;)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p0}, Lcom/zte/zdm/b/f/a/ag;->a(Lcom/zte/zdm/b/f/c;)[B
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
