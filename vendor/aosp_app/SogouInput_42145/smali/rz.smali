.class public Lrz;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public a:F

.field public a:I

.field public a:Ljava/lang/String;

.field protected a:Ljava/lang/StringBuffer;

.field private a:Ljava/lang/StringBuilder;

.field private a:Ljava/util/ArrayList;

.field protected a:Ljava/util/HashMap;

.field final synthetic a:Lrr;

.field private a:Z

.field public b:F

.field public b:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrr;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lrz;->a:Lrr;

    .line 1147
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrz;->a:Z

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/util/ArrayList;

    .line 1149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrz;->b:Ljava/util/HashMap;

    .line 1150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    .line 1151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/lang/StringBuffer;

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrz;->b:Ljava/util/ArrayList;

    .line 1153
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1346
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lrz;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public a()Lku;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    return-object v0
.end method

.method public a()Lru;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lru;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrw;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lrw;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/util/ArrayList;

    .line 1336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrz;->b:Ljava/util/HashMap;

    .line 1337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    .line 1338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/lang/StringBuffer;

    .line 1339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrz;->b:Ljava/util/ArrayList;

    .line 1340
    return-void
.end method

.method public b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lrz;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public characters([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1157
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 1158
    :goto_0
    if-ge p2, p3, :cond_0

    .line 1163
    iget-object v0, p0, Lrz;->a:Ljava/lang/StringBuffer;

    aget-char v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1158
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1165
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1170
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

    invoke-direct {p0, v0}, Lrz;->a(Ljava/lang/String;)V

    .line 1171
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v0, "word"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    iget-boolean v0, p0, Lrz;->a:Z

    if-nez v0, :cond_0

    .line 1174
    const-string v0, "First Word Comes"

    invoke-direct {p0, v0}, Lrz;->a(Ljava/lang/String;)V

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrz;->a:Z

    .line 1176
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)V

    .line 1178
    :cond_0
    new-instance v0, Lry;

    iget-object v1, p0, Lrz;->a:Lrr;

    invoke-direct {v0, v1, p0, v2}, Lry;-><init>(Lrr;Ljava/lang/Object;Lrs;)V

    .line 1179
    iget-object v1, p0, Lrz;->m:Ljava/lang/String;

    iput-object v1, v0, Lry;->a:Ljava/lang/String;

    .line 1180
    iget-object v1, p0, Lrz;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lry;->a:I

    .line 1181
    iget-object v1, p0, Lrz;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lry;->b:Ljava/lang/String;

    .line 1182
    iget-object v1, p0, Lrz;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lry;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    iget-object v1, p0, Lrz;->a:Lrr;

    invoke-static {v1, v0}, Lrr;->a(Lrr;Lry;)V

    .line 1247
    :cond_1
    :goto_0
    iget-object v0, p0, Lrz;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lrz;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1248
    return-void

    .line 1184
    :cond_2
    const-string v0, "celldict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1185
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    const-string v1, "celldictURL"

    iget-object v2, p0, Lrz;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    const-string v1, "celldictmd5"

    iget-object v2, p0, Lrz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    const-string v1, "celldictname"

    iget-object v2, p0, Lrz;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    const-string v1, "celldicttype"

    iget-object v2, p0, Lrz;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1189
    :cond_3
    const-string v0, "themewidget"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1190
    new-instance v0, Lrv;

    iget-object v1, p0, Lrz;->a:Lrr;

    invoke-direct {v0, v1}, Lrv;-><init>(Lrr;)V

    .line 1191
    iget-object v1, p0, Lrz;->o:Ljava/lang/String;

    iput-object v1, v0, Lrv;->a:Ljava/lang/String;

    .line 1192
    iget-object v1, p0, Lrz;->p:Ljava/lang/String;

    iput-object v1, v0, Lrv;->b:Ljava/lang/String;

    .line 1193
    iget-object v1, p0, Lrz;->q:Ljava/lang/String;

    iput-object v1, v0, Lrv;->c:Ljava/lang/String;

    .line 1194
    iget-object v1, p0, Lrz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1195
    :cond_4
    const-string v0, "qrurl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1196
    iget-object v0, p0, Lrz;->a:Lrr;

    new-instance v1, Lrw;

    iget-object v2, p0, Lrz;->a:Lrr;

    invoke-direct {v1, v2}, Lrw;-><init>(Lrr;)V

    invoke-static {v0, v1}, Lrr;->a(Lrr;Lrw;)Lrw;

    .line 1197
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lrw;

    move-result-object v0

    iget-object v1, p0, Lrz;->r:Ljava/lang/String;

    iput-object v1, v0, Lrw;->a:Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lrw;

    move-result-object v0

    iget-object v1, p0, Lrz;->s:Ljava/lang/String;

    iput-object v1, v0, Lrw;->b:Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lrw;

    move-result-object v0

    iget-object v1, p0, Lrz;->t:Ljava/lang/String;

    iput-object v1, v0, Lrw;->c:Ljava/lang/String;

    .line 1200
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lrw;

    move-result-object v0

    iget-object v1, p0, Lrz;->u:Ljava/lang/String;

    iput-object v1, v0, Lrw;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 1201
    :cond_5
    const-string v0, "qrapk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1202
    iget-object v0, p0, Lrz;->a:Lrr;

    new-instance v1, Lku;

    invoke-direct {v1}, Lku;-><init>()V

    invoke-static {v0, v1}, Lrr;->a(Lrr;Lku;)Lku;

    .line 1203
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget-object v1, p0, Lrz;->a:Ljava/lang/String;

    iput-object v1, v0, Lku;->a:Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget-object v1, p0, Lrz;->b:Ljava/lang/String;

    iput-object v1, v0, Lku;->b:Ljava/lang/String;

    .line 1205
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget-object v1, p0, Lrz;->c:Ljava/lang/String;

    iput-object v1, v0, Lku;->c:Ljava/lang/String;

    .line 1206
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget-object v1, p0, Lrz;->e:Ljava/lang/String;

    iput-object v1, v0, Lku;->f:Ljava/lang/String;

    .line 1207
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget-object v1, p0, Lrz;->d:Ljava/lang/String;

    iput-object v1, v0, Lku;->d:Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget v1, p0, Lrz;->a:F

    iput v1, v0, Lku;->a:F

    .line 1209
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lku;

    move-result-object v0

    iget v1, p0, Lrz;->a:I

    iput v1, v0, Lku;->a:I

    goto/16 :goto_0

    .line 1217
    :cond_6
    const-string v0, "dualisticdict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1218
    iget-object v0, p0, Lrz;->a:Lrr;

    new-instance v1, Lru;

    iget-object v2, p0, Lrz;->a:Lrr;

    invoke-direct {v1, v2}, Lru;-><init>(Lrr;)V

    invoke-static {v0, v1}, Lrr;->a(Lrr;Lru;)Lru;

    .line 1219
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lru;

    move-result-object v0

    iget-object v1, p0, Lrz;->f:Ljava/lang/String;

    iput-object v1, v0, Lru;->a:Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lru;

    move-result-object v0

    iget-object v1, p0, Lrz;->g:Ljava/lang/String;

    iput-object v1, v0, Lru;->b:Ljava/lang/String;

    .line 1221
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lru;

    move-result-object v0

    iget v1, p0, Lrz;->b:F

    iput v1, v0, Lru;->a:F

    .line 1222
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)Lru;

    move-result-object v0

    iget-object v1, p0, Lrz;->h:Ljava/lang/String;

    iput-object v1, v0, Lru;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1223
    :cond_7
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1224
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lrz;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object v0, p0, Lrz;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lrz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1226
    :cond_8
    const-string v0, "platformnewapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1227
    iget-object v0, p0, Lrz;->a:Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/lang/StringBuilder;

    .line 1229
    iget-object v0, p0, Lrz;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1231
    :cond_9
    iget-object v0, p0, Lrz;->a:Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1233
    :cond_a
    const-string v0, "platformnewapps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1234
    iget-object v0, p0, Lrz;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lrz;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iput-object v2, p0, Lrz;->a:Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1238
    :cond_b
    const-string v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1240
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lrz;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1243
    :cond_c
    iget-boolean v0, p0, Lrz;->a:Z

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lrz;->a:Lrr;

    invoke-static {v0}, Lrr;->b(Lrr;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1253
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1254
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

    invoke-direct {p0, v0}, Lrz;->a(Ljava/lang/String;)V

    .line 1255
    const-string v0, "word"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    const-string v0, "pinyin"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->m:Ljava/lang/String;

    .line 1257
    const-string v0, "index"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->n:Ljava/lang/String;

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const-string v0, "celldict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1259
    const-string v0, "cell_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->i:Ljava/lang/String;

    .line 1260
    const-string v0, "cell_md5"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->j:Ljava/lang/String;

    .line 1261
    const-string v0, "cell_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->k:Ljava/lang/String;

    .line 1262
    const-string v0, "cell_type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->l:Ljava/lang/String;

    goto :goto_0

    .line 1263
    :cond_2
    const-string v0, "themewidget"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1264
    const-string v0, "showname"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->o:Ljava/lang/String;

    .line 1265
    const-string v0, "ssfdownloadurl"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->q:Ljava/lang/String;

    .line 1266
    const-string v0, "picdownloadurl"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->p:Ljava/lang/String;

    goto :goto_0

    .line 1267
    :cond_3
    const-string v0, "qrurl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1268
    const-string v0, "show_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->r:Ljava/lang/String;

    .line 1269
    const-string v0, "safty"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->s:Ljava/lang/String;

    .line 1270
    const-string v0, "URL_logo_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->t:Ljava/lang/String;

    .line 1271
    const-string v0, "URL_detail_message"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->u:Ljava/lang/String;

    goto :goto_0

    .line 1272
    :cond_4
    const-string v0, "qrapk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1273
    const-string v0, "apk_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->a:Ljava/lang/String;

    .line 1274
    const-string v0, "apk_logo_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->c:Ljava/lang/String;

    .line 1275
    const-string v0, "apk_detail_message"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->e:Ljava/lang/String;

    .line 1276
    const-string v0, "apk_type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->d:Ljava/lang/String;

    .line 1278
    :try_start_0
    const-string v0, "apk_level"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lrz;->a:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1283
    :goto_1
    const-string v0, "apk_packagename"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->b:Ljava/lang/String;

    .line 1285
    :try_start_1
    const-string v0, "apk_versioncode"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lrz;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1286
    :catch_0
    move-exception v0

    .line 1288
    const/4 v0, -0x1

    iput v0, p0, Lrz;->a:I

    goto/16 :goto_0

    .line 1279
    :catch_1
    move-exception v0

    .line 1281
    const/high16 v0, -0x4080

    iput v0, p0, Lrz;->a:F

    goto :goto_1

    .line 1290
    :cond_5
    const-string v0, "dualisticdict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1291
    const-string v0, "dualisticdict_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->f:Ljava/lang/String;

    .line 1292
    const-string v0, "dualisticdict_info"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->g:Ljava/lang/String;

    .line 1293
    const-string v0, "dualisticdict_url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->h:Ljava/lang/String;

    .line 1295
    :try_start_2
    const-string v0, "dialisticdict_version"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lrz;->b:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1296
    :catch_2
    move-exception v0

    .line 1298
    const/high16 v0, 0x3f80

    iput v0, p0, Lrz;->b:F

    goto/16 :goto_0

    .line 1301
    :cond_6
    const-string v0, "platformnewapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1302
    const-string v0, "package_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrz;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1303
    :cond_7
    const-string v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrz;->a:Z

    .line 1305
    iget-object v0, p0, Lrz;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method
