.class Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;
.super Ljava/lang/Object;
.source "FilerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/filer/FilerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cmp:Ljava/util/Comparator;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;->cmp:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 250
    new-instance v0, Ljava/io/File;

    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v0, fa:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v1, fb:Ljava/io/File;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 261
    const/4 v2, 0x1

    goto :goto_0

    .line 263
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const/4 v2, -0x1

    goto :goto_0
.end method
