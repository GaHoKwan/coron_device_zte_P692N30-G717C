.class public Lyw;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field public a:Z

.field public b:I

.field public b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field public c:I

.field public c:Ljava/lang/String;

.field public d:I

.field public d:Ljava/lang/String;

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

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyw;->a:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyw;->b:Ljava/util/List;

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 140
    const/16 v1, 0x32

    .line 141
    if-nez p1, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 145
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const/4 v0, 0x0

    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    :cond_1
    if-eqz v0, :cond_2

    .line 150
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

    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    move v0, v1

    .line 153
    goto :goto_0

    :cond_2
    move v0, v1

    .line 156
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lyw;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lyw;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lyw;->b:Ljava/util/List;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 50
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "appInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {v0}, Lcom/sohu/inputmethod/platform/PlatformAppInfo;-><init>()V

    .line 58
    iget-object v1, p0, Lyw;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lyw;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lyw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:Ljava/lang/String;

    .line 61
    iget v1, p0, Lyw;->a:I

    iput v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 62
    iget-object v1, p0, Lyw;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->d:Ljava/lang/String;

    .line 63
    iget v1, p0, Lyw;->b:I

    iput v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:I

    .line 64
    iget-object v1, p0, Lyw;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lyw;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lyw;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->g:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lyw;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->h:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lyw;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->i:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lyw;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    const-string v0, "advertisement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lxt;

    invoke-direct {v0}, Lxt;-><init>()V

    .line 73
    iget-boolean v1, p0, Lyw;->a:Z

    iput-boolean v1, v0, Lxt;->a:Z

    .line 74
    iget-object v1, p0, Lyw;->l:Ljava/lang/String;

    iput-object v1, v0, Lxt;->a:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lyw;->m:Ljava/lang/String;

    iput-object v1, v0, Lxt;->b:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lyw;->n:Ljava/lang/String;

    iput-object v1, v0, Lxt;->c:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lyw;->o:Ljava/lang/String;

    iput-object v1, v0, Lxt;->d:Ljava/lang/String;

    .line 78
    iget v1, p0, Lyw;->c:I

    iput v1, v0, Lxt;->a:I

    .line 79
    iget v1, p0, Lyw;->d:I

    iput v1, v0, Lxt;->b:I

    .line 80
    iget-object v1, p0, Lyw;->p:Ljava/lang/String;

    iput-object v1, v0, Lxt;->e:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lyw;->q:Ljava/lang/String;

    iput-object v1, v0, Lxt;->f:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lyw;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 91
    const-string v0, "appInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "app_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->a:Ljava/lang/String;

    .line 93
    const-string v0, "package_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->b:Ljava/lang/String;

    .line 94
    const-string v0, "version_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->c:Ljava/lang/String;

    .line 95
    const-string v0, "version_code"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyw;->a:I

    .line 96
    const-string v0, "size"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->d:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lyw;->b:I

    .line 98
    const-string v0, "need_root"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "need_root"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "need_root"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyw;->b:I

    .line 101
    :cond_0
    const-string v0, "icon_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->e:Ljava/lang/String;

    .line 102
    const-string v0, "download_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->f:Ljava/lang/String;

    .line 103
    const-string v0, "brief_desc"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->g:Ljava/lang/String;

    .line 104
    const-string v0, "detail_desc"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->h:Ljava/lang/String;

    .line 105
    const-string v0, "detail_imgs"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->i:Ljava/lang/String;

    .line 106
    const-string v0, "dialog_title"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->j:Ljava/lang/String;

    .line 107
    const-string v0, "dialog_content"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->k:Ljava/lang/String;

    .line 109
    :cond_1
    const-string v0, "advertisement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-string v0, "show_ad"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lyw;->a:Z

    .line 111
    const-string v0, "app_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->l:Ljava/lang/String;

    .line 112
    const-string v0, "download_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->m:Ljava/lang/String;

    .line 113
    const-string v0, "dialog_content"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->n:Ljava/lang/String;

    .line 114
    const-string v0, "dialog_title"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->o:Ljava/lang/String;

    .line 115
    const-string v0, "port_ad_height"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lyw;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyw;->c:I

    .line 117
    const-string v0, "land_ad_height"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Lyw;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyw;->d:I

    .line 119
    const-string v0, "port_ad_img_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->p:Ljava/lang/String;

    .line 120
    const-string v0, "land_ad_img_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyw;->q:Ljava/lang/String;

    .line 122
    :cond_2
    return-void
.end method
