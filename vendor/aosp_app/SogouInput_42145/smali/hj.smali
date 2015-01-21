.class public Lhj;
.super Lrz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhf;

.field private a:Lhh;

.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhf;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lhj;->a:Lhf;

    .line 122
    invoke-direct {p0, p1, p2}, Lrz;-><init>(Lrr;I)V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhj;->a:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lhj;->a:Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhj;->a:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhj;->b:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    return-void
.end method


# virtual methods
.method public a()Lhh;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lhj;->a:Lhh;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lhj;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhj;->a:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhj;->b:Ljava/util/ArrayList;

    .line 203
    invoke-super {p0}, Lrz;->a()V

    .line 204
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lhj;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lhj;->a:Ljava/util/ArrayList;

    .line 208
    iput-object v0, p0, Lhj;->a:Lhh;

    .line 209
    iput-object v0, p0, Lhj;->b:Ljava/util/ArrayList;

    .line 210
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lrz;->characters([CII)V

    .line 138
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  localName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhj;->a(Ljava/lang/String;)V

    .line 144
    const-string v0, "theme_group"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "theme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :cond_0
    new-instance v0, Lhi;

    iget-object v1, p0, Lhj;->a:Lhf;

    invoke-direct {v0, v1, p0, v2}, Lhi;-><init>(Lhf;Ljava/lang/Object;Lhg;)V

    .line 146
    iget-object v1, p0, Lhj;->m:Ljava/lang/String;

    iput-object v1, v0, Lhi;->a:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lhj;->n:Ljava/lang/String;

    iput-object v1, v0, Lhi;->b:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lhj;->o:Ljava/lang/String;

    iput-object v1, v0, Lhi;->c:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lhj;->p:Ljava/lang/String;

    iput-object v1, v0, Lhi;->d:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lhj;->q:Ljava/lang/String;

    iput-object v1, v0, Lhi;->e:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lhj;->r:Ljava/lang/String;

    iput-object v1, v0, Lhi;->g:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lhj;->s:Ljava/lang/String;

    iput-object v1, v0, Lhi;->f:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lhj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lrz;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lhj;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lhj;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 164
    return-void

    .line 154
    :cond_2
    const-string v0, "themeadvertisement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    new-instance v0, Lhh;

    iget-object v1, p0, Lhj;->a:Lhf;

    invoke-direct {v0, v1, p0, v2}, Lhh;-><init>(Lhf;Ljava/lang/Object;Lhg;)V

    iput-object v0, p0, Lhj;->a:Lhh;

    .line 156
    iget-object v0, p0, Lhj;->a:Lhh;

    iget-object v1, p0, Lhj;->t:Ljava/lang/String;

    iput-object v1, v0, Lhh;->a:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lhj;->a:Lhh;

    iget-object v1, p0, Lhj;->u:Ljava/lang/String;

    iput-object v1, v0, Lhh;->c:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lhj;->a:Lhh;

    iget-object v1, p0, Lhj;->v:Ljava/lang/String;

    iput-object v1, v0, Lhh;->b:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "keyword"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lhj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lhj;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Lrz;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  localName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhj;->a(Ljava/lang/String;)V

    .line 171
    const-string v0, "theme_group"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "theme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_0
    const-string v0, "show_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->m:Ljava/lang/String;

    .line 173
    const-string v0, "author"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->n:Ljava/lang/String;

    .line 174
    const-string v0, "preview_square_pic_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->o:Ljava/lang/String;

    .line 175
    const-string v0, "preview_candidate_pic_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->p:Ljava/lang/String;

    .line 176
    const-string v0, "ssf_download_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->q:Ljava/lang/String;

    .line 177
    const-string v0, "cate_id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->r:Ljava/lang/String;

    .line 178
    const-string v0, "skin_id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->s:Ljava/lang/String;

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    const-string v0, "themeadvertisement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "ad_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->t:Ljava/lang/String;

    .line 181
    const-string v0, "pic_download_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->u:Ljava/lang/String;

    .line 182
    const-string v0, "ad_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhj;->v:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_3
    const-string v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lhj;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
