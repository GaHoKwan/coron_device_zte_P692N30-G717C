.class public Laiv;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field public a:Ljava/lang/StringBuffer;

.field private a:Ljava/util/List;

.field public a:Z

.field public b:I

.field public b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private final b:Z

.field public c:I

.field public c:Ljava/lang/String;

.field private c:Z

.field public d:I

.field public d:Ljava/lang/String;

.field public e:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 15
    const-string v0, "AppRecommendXMLHandler"

    iput-object v0, p0, Laiv;->q:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Laiv;->b:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Laiv;->r:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Laiv;->c:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laiv;->a:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laiv;->b:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Laiv;->a:Ljava/lang/StringBuffer;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 180
    const/16 v1, 0x32

    .line 181
    if-nez p1, :cond_0

    move v0, v1

    .line 196
    :goto_0
    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 185
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const/4 v0, 0x0

    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    :cond_1
    if-eqz v0, :cond_2

    .line 190
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    move v0, v1

    .line 193
    goto :goto_0

    :cond_2
    move v0, v1

    .line 196
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Laiv;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Laiv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laiv;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 162
    :cond_0
    iget-object v0, p0, Laiv;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Laiv;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laiv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Laiv;->b:Ljava/util/List;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 61
    iget-boolean v0, p0, Laiv;->c:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Laiv;->r:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    if-ge p2, p3, :cond_0

    .line 64
    iget-object v0, p0, Laiv;->a:Ljava/lang/StringBuffer;

    aget-char v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Laiv;->c:Z

    .line 75
    const-string v0, "appInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    invoke-direct {v0}, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;-><init>()V

    .line 77
    iget-object v1, p0, Laiv;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Laiv;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    .line 79
    iget v1, p0, Laiv;->a:I

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:I

    .line 80
    iget v1, p0, Laiv;->b:I

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:I

    .line 81
    iget-object v1, p0, Laiv;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Laiv;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:Ljava/lang/String;

    .line 83
    iget v1, p0, Laiv;->c:I

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    .line 84
    iget-object v1, p0, Laiv;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->e:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Laiv;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->f:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Laiv;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Laiv;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->h:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Laiv;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->i:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Laiv;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->j:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Laiv;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->e:I

    .line 91
    iget-object v1, p0, Laiv;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    const-string v0, "advertisement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Laiw;

    invoke-direct {v0}, Laiw;-><init>()V

    .line 95
    iget-boolean v1, p0, Laiv;->a:Z

    iput-boolean v1, v0, Laiw;->a:Z

    .line 96
    iget-object v1, p0, Laiv;->k:Ljava/lang/String;

    iput-object v1, v0, Laiw;->a:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Laiv;->l:Ljava/lang/String;

    iput-object v1, v0, Laiw;->b:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Laiv;->m:Ljava/lang/String;

    iput-object v1, v0, Laiw;->c:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Laiv;->n:Ljava/lang/String;

    iput-object v1, v0, Laiw;->d:Ljava/lang/String;

    .line 100
    iget v1, p0, Laiv;->d:I

    iput v1, v0, Laiw;->a:I

    .line 101
    iget v1, p0, Laiv;->e:I

    iput v1, v0, Laiw;->b:I

    .line 102
    iget-object v1, p0, Laiv;->o:Ljava/lang/String;

    iput-object v1, v0, Laiw;->e:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Laiv;->p:Ljava/lang/String;

    iput-object v1, v0, Laiw;->f:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Laiv;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 113
    iput-object p2, p0, Laiv;->r:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Laiv;->c:Z

    .line 115
    const-string v0, "appInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "app_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->a:Ljava/lang/String;

    .line 117
    const-string v0, "package_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->b:Ljava/lang/String;

    .line 118
    const-string v0, "sid"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laiv;->a:I

    .line 124
    :goto_0
    const-string v0, "cid"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laiv;->b:I

    .line 130
    :goto_1
    const-string v0, "click_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->c:Ljava/lang/String;

    .line 131
    const-string v0, "version_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->d:Ljava/lang/String;

    .line 132
    const-string v0, "version_code"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laiv;->c:I

    .line 138
    :goto_2
    const-string v0, "size"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->e:Ljava/lang/String;

    .line 139
    const-string v0, "icon_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->f:Ljava/lang/String;

    .line 140
    const-string v0, "download_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->g:Ljava/lang/String;

    .line 141
    const-string v0, "brief_desc"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->h:Ljava/lang/String;

    .line 142
    const-string v0, "dialog_title"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->i:Ljava/lang/String;

    .line 143
    const-string v0, "dialog_content"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->j:Ljava/lang/String;

    .line 145
    :cond_0
    const-string v0, "advertisement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "show_ad"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Laiv;->a:Z

    .line 147
    const-string v0, "app_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->k:Ljava/lang/String;

    .line 148
    const-string v0, "download_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->l:Ljava/lang/String;

    .line 149
    const-string v0, "dialog_content"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->m:Ljava/lang/String;

    .line 150
    const-string v0, "dialog_title"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->n:Ljava/lang/String;

    .line 151
    const-string v0, "port_ad_height"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Laiv;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laiv;->d:I

    .line 153
    const-string v0, "land_ad_height"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Laiv;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laiv;->e:I

    .line 155
    const-string v0, "port_ad_img_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->o:Ljava/lang/String;

    .line 156
    const-string v0, "land_ad_img_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->p:Ljava/lang/String;

    .line 158
    :cond_1
    return-void

    .line 122
    :cond_2
    iput v2, p0, Laiv;->a:I

    goto/16 :goto_0

    .line 128
    :cond_3
    iput v2, p0, Laiv;->b:I

    goto/16 :goto_1

    .line 136
    :cond_4
    iput v2, p0, Laiv;->c:I

    goto/16 :goto_2
.end method
