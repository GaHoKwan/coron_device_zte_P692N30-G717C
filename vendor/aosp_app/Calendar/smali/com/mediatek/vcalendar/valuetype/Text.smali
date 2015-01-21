.class public final Lcom/mediatek/vcalendar/valuetype/Text;
.super Ljava/lang/Object;
.source "Text.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Text"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "srcString"
    .parameter "encoding"

    .prologue
    .line 83
    const-string v0, "UTF-8"

    invoke-static {p0, v0, p1}, Lcom/mediatek/vcalendar/valuetype/Text;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcString"
    .parameter "charset"
    .parameter "encoding"

    .prologue
    .line 65
    move-object v0, p0

    .line 66
    .local v0, text:Ljava/lang/String;
    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p0, p1}, Lcom/mediatek/vcalendar/valuetype/Charset;->decodeQuotedPrintable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    const-string v1, "BASE64"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "Text"

    const-string v2, "decode: we do not support the BASE64 text decode"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    return-object v0
.end method

.method public static encoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"
    .parameter "encoding"

    .prologue
    .line 118
    const-string v0, "UTF-8"

    invoke-static {p0, v0, p1}, Lcom/mediatek/vcalendar/valuetype/Text;->encoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "charset"
    .parameter "encoding"

    .prologue
    .line 98
    move-object v0, p0

    .line 99
    .local v0, text:Ljava/lang/String;
    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {p0, p1}, Lcom/mediatek/vcalendar/valuetype/Charset;->encodeQuotedPrintable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    const-string v1, "BASE64"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "Text"

    const-string v2, "encode: we do not support the BASE64 text decode"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    return-object v0
.end method
