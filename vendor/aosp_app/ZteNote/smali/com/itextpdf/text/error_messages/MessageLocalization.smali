.class public final Lcom/itextpdf/text/error_messages/MessageLocalization;
.super Ljava/lang/Object;
.source "MessageLocalization.java"


# static fields
.field private static final BASE_PATH:Ljava/lang/String; = "com/itextpdf/text/l10n/error/"

.field private static currentLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->defaultLanguage:Ljava/util/HashMap;

    .line 72
    :try_start_0
    const-string v0, "en"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getLanguageMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->defaultLanguage:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    sget-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->defaultLanguage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->defaultLanguage:Ljava/util/HashMap;

    .line 78
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "p1"

    .prologue
    const/4 v3, 0x0

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .parameter "key"
    .parameter "param"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, msg:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 127
    const/4 v1, 0x1

    .line 128
    .local v1, i:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 129
    .local v5, o:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #o:Ljava/lang/Object;
    :cond_1
    return-object v4
.end method

.method private static getLanguageMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .parameter "language"
    .parameter "country"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    if-nez p0, :cond_0

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The language cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    const/4 v1, 0x0

    .line 170
    .local v1, is:Ljava/io/InputStream;
    if-eqz p1, :cond_2

    .line 171
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, file:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com/itextpdf/text/l10n/error/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/text/error_messages/MessageLocalization;

    invoke-direct {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_3

    .line 176
    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->readLanguageStream(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 188
    if-eqz v1, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 192
    :cond_1
    :goto_1
    return-object v2

    .line 173
    .end local v0           #file:Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0       #file:Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_3
    if-nez p1, :cond_4

    .line 188
    if-eqz v1, :cond_1

    .line 189
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v3

    goto :goto_1

    .line 179
    :cond_4
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com/itextpdf/text/l10n/error/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/text/error_messages/MessageLocalization;

    invoke-direct {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_5

    .line 182
    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->readLanguageStream(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 188
    if-eqz v1, :cond_1

    .line 189
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 191
    :catch_1
    move-exception v3

    goto :goto_1

    .line 188
    :cond_5
    if-eqz v1, :cond_1

    .line 189
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 191
    :catch_2
    move-exception v3

    goto :goto_1

    .line 187
    .end local v0           #file:Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 188
    if-eqz v1, :cond_6

    .line 189
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 192
    :cond_6
    :goto_2
    throw v2

    .line 191
    .restart local v0       #file:Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_1

    .end local v0           #file:Ljava/lang/String;
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 86
    sget-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->currentLanguage:Ljava/util/HashMap;

    .line 88
    .local v0, cl:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 97
    :goto_0
    return-object v2

    .line 93
    .end local v1           #val:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->defaultLanguage:Ljava/util/HashMap;

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .restart local v1       #val:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No message found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static readLanguageStream(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->readLanguageStream(Ljava/io/Reader;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static readLanguageStream(Ljava/io/Reader;)Ljava/util/HashMap;
    .locals 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v3, lang:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 206
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 207
    .local v1, idxeq:I
    if-ltz v1, :cond_0

    .line 209
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, key:Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    .end local v1           #idxeq:I
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static setLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "language"
    .parameter "country"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getLanguageMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 149
    .local v0, lang:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 151
    :cond_0
    sput-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->currentLanguage:Ljava/util/HashMap;

    .line 152
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setMessages(Ljava/io/Reader;)V
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->readLanguageStream(Ljava/io/Reader;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/error_messages/MessageLocalization;->currentLanguage:Ljava/util/HashMap;

    .line 162
    return-void
.end method
