.class public Lcom/tutego/jrtf/RtfTemplate;
.super Ljava/lang/Object;
.source "RtfTemplate.java"


# static fields
.field private static final VARIABLE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private template:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "%%(\\S+)%%"

    .line 59
    const/16 v1, 0x28

    .line 58
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tutego/jrtf/RtfTemplate;->VARIABLE_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .parameter "inputStream"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2000

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->template:Ljava/lang/StringBuilder;

    .line 55
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->map:Ljava/util/Map;

    .line 68
    const/4 v3, 0x0

    .line 71
    .local v3, reader:Ljava/io/Reader;
    :try_start_0
    instance-of v5, p1, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 72
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v2, inputStream:Ljava/io/InputStream;
    move-object p1, v2

    .line 74
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local p1
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Lcom/tutego/jrtf/Rtf;->CHARSET1252:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 76
    .end local v3           #reader:Ljava/io/Reader;
    .local v4, reader:Ljava/io/Reader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/Reader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .local v0, c:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 85
    if-eqz v4, :cond_1

    .line 86
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    :cond_1
    return-void

    .line 77
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->template:Ljava/lang/StringBuilder;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 79
    .end local v0           #c:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 81
    .end local v4           #reader:Ljava/io/Reader;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/Reader;
    :goto_1
    :try_start_4
    new-instance v5, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v5, v1}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 85
    :goto_2
    if-eqz v3, :cond_3

    .line 86
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 87
    :cond_3
    throw v5

    .line 86
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    new-instance v5, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v5, v1}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/Reader;
    .restart local v0       #c:I
    .restart local v4       #reader:Ljava/io/Reader;
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    new-instance v5, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v5, v1}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v0           #c:I
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/Reader;
    .restart local v3       #reader:Ljava/io/Reader;
    goto :goto_2

    .line 79
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public inject(Ljava/lang/String;Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTemplate;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTemplate;->map:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object p0
.end method

.method public inject(Ljava/util/Map;)Lcom/tutego/jrtf/RtfTemplate;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tutego/jrtf/RtfTemplate;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tutego/jrtf/RtfTemplate;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    return-object p0
.end method

.method public out()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 121
    iget-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->template:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    :goto_0
    return-object v5

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->template:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 125
    .local v2, result:Ljava/lang/StringBuffer;
    sget-object v5, Lcom/tutego/jrtf/RtfTemplate;->VARIABLE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v6, p0, Lcom/tutego/jrtf/RtfTemplate;->template:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 127
    .local v1, matcher:Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 129
    :cond_2
    iget-object v5, p0, Lcom/tutego/jrtf/RtfTemplate;->map:Ljava/util/Map;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/tutego/jrtf/RtfText;->rtf(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v5, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public out(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/tutego/jrtf/RtfTemplate;->out()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, out2:Ljava/lang/String;
    sget-object v2, Lcom/tutego/jrtf/Rtf;->CHARSET1252:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 172
    return-void

    .line 164
    .end local v1           #out2:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v2, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 170
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 171
    throw v2

    .line 170
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    new-instance v2, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v2, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #out2:Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    new-instance v2, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v2, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
