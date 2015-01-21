.class public final Lcom/itextpdf/text/html/HtmlEncoder;
.super Ljava/lang/Object;
.source "HtmlEncoder.java"


# static fields
.field private static final HTML_CODE:[Ljava/lang/String;

.field private static final NEWLINETAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0xa

    .line 91
    new-array v1, v5, [Ljava/lang/String;

    sput-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 95
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/16 v0, 0xa

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_1
    const/16 v0, 0x20

    :goto_2
    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 103
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_2
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\t"

    aput-object v3, v1, v2

    .line 108
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    const-string v2, "<br />\n"

    aput-object v2, v1, v4

    .line 109
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, "&quot;"

    aput-object v3, v1, v2

    .line 110
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    const/16 v2, 0x26

    const-string v3, "&amp;"

    aput-object v3, v1, v2

    .line 111
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    const/16 v2, 0x3c

    const-string v3, "&lt;"

    aput-object v3, v1, v2

    .line 112
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    const/16 v2, 0x3e

    const-string v3, "&gt;"

    aput-object v3, v1, v2

    .line 114
    const/16 v0, 0x80

    :goto_3
    if-ge v0, v5, :cond_3

    .line 115
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 203
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->NEWLINETAGS:Ljava/util/Set;

    .line 207
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->NEWLINETAGS:Ljava/util/Set;

    const-string v2, "p"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->NEWLINETAGS:Ljava/util/Set;

    const-string v2, "blockquote"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/itextpdf/text/html/HtmlEncoder;->NEWLINETAGS:Ljava/util/Set;

    const-string v2, "br"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static encode(Lcom/itextpdf/text/BaseColor;)Ljava/lang/String;
    .locals 4
    .parameter "color"

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x10

    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 130
    .local v3, n:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 135
    .local v1, character:C
    const/16 v4, 0x100

    if-ge v1, v4, :cond_0

    .line 136
    sget-object v4, Lcom/itextpdf/text/html/HtmlEncoder;->HTML_CODE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const-string v4, "&#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 143
    .end local v1           #character:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAlignment(I)Ljava/lang/String;
    .locals 1
    .parameter "alignment"

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 195
    const-string v0, ""

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    const-string v0, "left"

    goto :goto_0

    .line 180
    :pswitch_1
    const-string v0, "center"

    goto :goto_0

    .line 182
    :pswitch_2
    const-string v0, "right"

    goto :goto_0

    .line 185
    :pswitch_3
    const-string v0, "justify"

    goto :goto_0

    .line 187
    :pswitch_4
    const-string v0, "top"

    goto :goto_0

    .line 189
    :pswitch_5
    const-string v0, "middle"

    goto :goto_0

    .line 191
    :pswitch_6
    const-string v0, "bottom"

    goto :goto_0

    .line 193
    :pswitch_7
    const-string v0, "baseline"

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method public static isNewLineTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 217
    sget-object v0, Lcom/itextpdf/text/html/HtmlEncoder;->NEWLINETAGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
