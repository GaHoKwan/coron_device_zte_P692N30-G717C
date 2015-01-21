.class Lorg/apache/commons/compress/compressors/pack200/h;
.super Ljava/io/FileInputStream;


# instance fields
.field final synthetic pw:Lorg/apache/commons/compress/compressors/pack200/d;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/pack200/d;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/h;->pw:Lorg/apache/commons/compress/compressors/pack200/d;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/h;->pw:Lorg/apache/commons/compress/compressors/pack200/d;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/pack200/d;->a(Lorg/apache/commons/compress/compressors/pack200/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
