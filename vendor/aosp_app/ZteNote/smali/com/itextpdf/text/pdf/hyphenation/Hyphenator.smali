.class public Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# static fields
.field private static final defaultHyphLocation:Ljava/lang/String; = "com/itextpdf/text/pdf/hyphenation/hyph/"

.field private static hyphenDir:Ljava/lang/String;

.field private static hyphenTrees:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

.field private pushCharCount:I

.field private remainCharCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTrees:Ljava/util/Hashtable;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "lang"
    .parameter "country"
    .parameter "leftMin"
    .parameter "rightMin"

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    .line 38
    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->remainCharCount:I

    .line 39
    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->pushCharCount:I

    .line 53
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    .line 54
    iput p3, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->remainCharCount:I

    .line 55
    iput p4, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->pushCharCount:I

    .line 56
    return-void
.end method

.method public static getFileHyphenationTree(Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    .locals 9
    .parameter "key"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 114
    :try_start_0
    sget-object v5, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenDir:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 132
    :goto_0
    return-object v1

    .line 116
    :cond_0
    const/4 v3, 0x0

    .line 117
    .local v3, stream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenDir:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v2, hyphenFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #stream:Ljava/io/InputStream;
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 121
    new-instance v2, Ljava/io/File;

    .end local v2           #hyphenFile:Ljava/io/File;
    sget-object v5, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenDir:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .restart local v2       #hyphenFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #stream:Ljava/io/InputStream;
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 125
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_2
    if-nez v3, :cond_3

    move-object v1, v4

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    new-instance v1, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;-><init>()V

    .line 128
    .local v1, hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->loadSimplePatterns(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1           #hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    .end local v2           #hyphenFile:Ljava/io/File;
    .end local v3           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v4

    .line 132
    goto :goto_0
.end method

.method public static getHyphenDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    .locals 4
    .parameter "lang"
    .parameter "country"

    .prologue
    .line 65
    move-object v1, p0

    .line 67
    .local v1, key:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTrees:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTrees:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    .line 85
    :goto_0
    return-object v2

    .line 74
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTrees:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget-object v2, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTrees:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v1}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->getResourceHyphenationTree(Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    move-result-object v0

    .line 79
    .local v0, hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    if-nez v0, :cond_3

    .line 80
    invoke-static {v1}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->getFileHyphenationTree(Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    move-result-object v0

    .line 82
    :cond_3
    if-eqz v0, :cond_4

    .line 83
    sget-object v2, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTrees:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, v0

    .line 85
    goto :goto_0
.end method

.method public static getResourceHyphenationTree(Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 94
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com/itextpdf/text/pdf/hyphenation/hyph/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 95
    .local v2, stream:Ljava/io/InputStream;
    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com/itextpdf/text/pdf/hyphenation/hyph/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    :cond_0
    if-nez v2, :cond_1

    move-object v1, v3

    .line 104
    .end local v2           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 99
    .restart local v2       #stream:Ljava/io/InputStream;
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;-><init>()V

    .line 100
    .local v1, hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->loadSimplePatterns(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v1           #hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    .end local v2           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v3

    .line 104
    goto :goto_0
.end method

.method public static hyphenate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    .locals 2
    .parameter "lang"
    .parameter "country"
    .parameter "word"
    .parameter "leftMin"
    .parameter "rightMin"

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    move-result-object v0

    .line 148
    .local v0, hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    if-nez v0, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 153
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hyphenate(Ljava/lang/String;II)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    move-result-object v1

    goto :goto_0
.end method

.method public static hyphenate(Ljava/lang/String;Ljava/lang/String;[CIIII)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    .locals 6
    .parameter "lang"
    .parameter "country"
    .parameter "word"
    .parameter "offset"
    .parameter "len"
    .parameter "leftMin"
    .parameter "rightMin"

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    move-result-object v0

    .line 170
    .local v0, hTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
    if-nez v0, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 175
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    move-result-object v1

    goto :goto_0
.end method

.method public static setHyphenDir(Ljava/lang/String;)V
    .locals 0
    .parameter "_hyphenDir"

    .prologue
    .line 236
    sput-object p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenDir:Ljava/lang/String;

    .line 237
    return-void
.end method


# virtual methods
.method public hyphenate(Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    .locals 3
    .parameter "word"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->remainCharCount:I

    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->pushCharCount:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hyphenate(Ljava/lang/String;II)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    move-result-object v0

    goto :goto_0
.end method

.method public hyphenate([CII)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    .locals 6
    .parameter "word"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    iget v4, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->remainCharCount:I

    iget v5, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->pushCharCount:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    move-result-object v0

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "lang"
    .parameter "country"

    .prologue
    .line 197
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenTree:Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;

    .line 198
    return-void
.end method

.method public setMinPushCharCount(I)V
    .locals 0
    .parameter "min"

    .prologue
    .line 189
    iput p1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->pushCharCount:I

    .line 190
    return-void
.end method

.method public setMinRemainCharCount(I)V
    .locals 0
    .parameter "min"

    .prologue
    .line 182
    iput p1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->remainCharCount:I

    .line 183
    return-void
.end method
