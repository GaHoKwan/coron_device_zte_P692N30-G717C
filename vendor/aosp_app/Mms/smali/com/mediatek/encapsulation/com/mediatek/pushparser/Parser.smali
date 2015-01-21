.class public abstract Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PUSH"


# instance fields
.field protected m_mimetype:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;->m_mimetype:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static createParser(Ljava/lang/String;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    .locals 4
    .parameter "mimetype"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    const-string v1, "text/vnd.wap.si"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiTextParser;

    .end local v0           #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiTextParser;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v0       #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v1, "application/vnd.wap.sic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;

    .end local v0           #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;-><init>(Ljava/lang/String;)V

    .restart local v0       #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "text/vnd.wap.sl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlTextParser;

    .end local v0           #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlTextParser;-><init>(Ljava/lang/String;)V

    .restart local v0       #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "application/vnd.wap.slc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;

    .end local v0           #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;-><init>(Ljava/lang/String;)V

    .restart local v0       #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    goto :goto_0

    .line 79
    :cond_3
    const-string v1, "text/vnd.wap.co"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoTextParser;

    .end local v0           #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoTextParser;-><init>(Ljava/lang/String;)V

    .restart local v0       #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    goto :goto_0

    .line 81
    :cond_4
    const-string v1, "application/vnd.wap.coc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;

    .end local v0           #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;-><init>(Ljava/lang/String;)V

    .restart local v0       #parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createParser: wrong type!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
.end method

.method public parseData([B)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 117
    .local v1, in:Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;->parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;

    move-result-object v2

    .line 119
    .local v2, msg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #msg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    :goto_0
    return-object v2

    .line 120
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #msg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/IOException;
    const-string v4, "PUSH"

    const-string v5, "InputStream Close Error:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 123
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #msg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    :cond_0
    move-object v2, v3

    .line 127
    goto :goto_0
.end method

.method public parseFile(Ljava/lang/String;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 93
    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, in:Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;->parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;

    move-result-object v2

    .line 98
    .local v2, msg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #msg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File Not Found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 103
    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/IOException;
    const-string v4, "PUSH"

    const-string v5, "InputStream Close Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 106
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    move-object v2, v3

    .line 109
    goto :goto_0
.end method
