.class final Lcom/nuance/dragon/toolkit/file/FileManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/file/FileManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/file/FileManager$1;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/file/FileManager$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileManager$1;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileManager$1;->a:Ljava/lang/String;

    return-object v0
.end method
