.class final Ltmsdkobf/jv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/jv;->b(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic xA:Ljava/util/List;

.field final synthetic xy:Ljava/util/List;

.field final synthetic xz:Z


# direct methods
.method constructor <init>(Ljava/util/List;ZLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Ltmsdkobf/jv$1;->xy:Ljava/util/List;

    iput-boolean p2, p0, Ltmsdkobf/jv$1;->xz:Z

    iput-object p3, p0, Ltmsdkobf/jv$1;->xA:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 987
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltmsdkobf/jv$1;->xy:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/jv$1;->xy:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    :cond_0
    const/4 v0, 0x1

    .line 995
    :goto_0
    return v0

    .line 991
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ltmsdkobf/jv$1;->xz:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Ltmsdkobf/jv;->f(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 992
    :cond_2
    iget-object v0, p0, Ltmsdkobf/jv$1;->xA:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
