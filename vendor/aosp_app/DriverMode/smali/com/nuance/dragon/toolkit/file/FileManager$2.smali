.class final Lcom/nuance/dragon/toolkit/file/FileManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/util/regex/Pattern;

.field final synthetic b:Lcom/nuance/dragon/toolkit/file/FileManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/regex/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/file/FileManager$2;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/file/FileManager$2;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileManager$2;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileManager$2;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
