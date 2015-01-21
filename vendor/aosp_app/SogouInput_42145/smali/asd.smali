.class public Lasd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private a:Lafp;

.field a:Lase;

.field private a:Lavs;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lavs;Lafp;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput v1, p0, Lasd;->a:I

    .line 1086
    iput v1, p0, Lasd;->b:I

    .line 1089
    iput v0, p0, Lasd;->c:I

    .line 1092
    iput v0, p0, Lasd;->d:I

    .line 1095
    iput v1, p0, Lasd;->e:I

    .line 1098
    iput v0, p0, Lasd;->f:I

    .line 1100
    iput v1, p0, Lasd;->g:I

    .line 1102
    iput v0, p0, Lasd;->h:I

    .line 1103
    iput v0, p0, Lasd;->i:I

    .line 1106
    const/4 v0, 0x4

    iput v0, p0, Lasd;->j:I

    .line 1108
    iput v2, p0, Lasd;->k:I

    .line 1110
    iput v2, p0, Lasd;->l:I

    .line 1112
    const/16 v0, 0xff

    iput v0, p0, Lasd;->m:I

    .line 1123
    iput-object p1, p0, Lasd;->a:Lavs;

    .line 1124
    iput-object p2, p0, Lasd;->a:Lafp;

    .line 1125
    new-instance v0, Lase;

    invoke-direct {v0, p0}, Lase;-><init>(Lasd;)V

    iput-object v0, p0, Lasd;->a:Lase;

    .line 1126
    return-void
.end method

.method private final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 1209
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1210
    iget-object v1, p0, Lasd;->a:Lase;

    invoke-static {v1, v0}, Lase;->i(Lase;I)I

    move-result v0

    .line 1212
    iget-object v1, p0, Lasd;->a:Lase;

    iget-boolean v1, v1, Lase;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1214
    if-eqz v0, :cond_0

    .line 1224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0}, Lase;->c(Lase;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0}, Lase;->d(Lase;)I

    move-result v0

    goto :goto_0
.end method

.method private final a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1248
    invoke-static {p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1250
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardIndexByType(I)I

    move-result v1

    .line 1251
    iget-object v2, p0, Lasd;->a:Lavs;

    invoke-virtual {v2, v1, v0}, Lavs;->a(II)I

    move-result v1

    .line 1252
    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardTypeByIndex(I)I

    move-result v1

    .line 1254
    if-eq p1, v1, :cond_0

    .line 1256
    iget-object v2, p0, Lasd;->a:Lase;

    iget-boolean v2, v2, Lase;->b:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1257
    iget-object v2, p0, Lasd;->a:Lase;

    invoke-static {v2}, Lase;->b(Lase;)[I

    move-result-object v2

    aput v1, v2, v0

    .line 1262
    :cond_0
    :goto_0
    return v1

    .line 1259
    :cond_1
    iget-object v2, p0, Lasd;->a:Lase;

    invoke-static {v2}, Lase;->a(Lase;)[I

    move-result-object v2

    aput v1, v2, v0

    goto :goto_0
.end method

.method private final a(Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1332
    iget-object v1, p0, Lasd;->a:Lase;

    iget-boolean v1, v1, Lase;->c:Z

    if-ne v1, v0, :cond_1

    .line 1333
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1337
    :goto_0
    return v0

    .line 1333
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1337
    :cond_1
    invoke-direct {p0, p2}, Lasd;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic a(Lasd;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lasd;->a(I)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lasd;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1, p2}, Lasd;->a(II)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lasd;Landroid/content/res/Configuration;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1, p2}, Lasd;->a(Landroid/content/res/Configuration;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lasd;)Lafp;
    .locals 1
    .parameter

    .prologue
    .line 970
    iget-object v0, p0, Lasd;->a:Lafp;

    return-object v0
.end method

.method private final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1230
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->a:Z

    if-nez v0, :cond_0

    if-eq p1, p2, :cond_0

    .line 1231
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1232
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, p2}, Lase;->h(Lase;I)I

    .line 1233
    iput p2, p0, Lasd;->e:I

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, p2}, Lase;->g(Lase;I)I

    .line 1236
    iput p2, p0, Lasd;->e:I

    goto :goto_0
.end method

.method public static synthetic a(Lasd;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->c()V

    return-void
.end method

.method public static synthetic a(Lasd;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1, p2}, Lasd;->b(II)V

    return-void
.end method

.method public static synthetic a(Lasd;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lasd;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1393
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->c:Z

    return v0
.end method

.method public static synthetic a(Lasd;)Z
    .locals 1
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->a()Z

    move-result v0

    return v0
.end method

.method private final b()V
    .locals 3

    .prologue
    .line 1284
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b0041

    iget v2, p0, Lasd;->l:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)V

    .line 1285
    return-void
.end method

.method private final b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1279
    invoke-static {p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1280
    iget-object v1, p0, Lasd;->a:Lase;

    invoke-static {v1, p1, v0}, Lase;->a(Lase;II)V

    .line 1281
    return-void
.end method

.method public static synthetic b(Lasd;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->d()V

    return-void
.end method

.method public static synthetic b(Lasd;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1, p2}, Lasd;->a(II)V

    return-void
.end method

.method public static synthetic b(Lasd;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lasd;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1376
    iget-object v0, p0, Lasd;->a:Lase;

    iput-boolean p1, v0, Lase;->c:Z

    .line 1377
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->b:Z

    return v0
.end method

.method public static synthetic b(Lasd;)Z
    .locals 1
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->b()Z

    move-result v0

    return v0
.end method

.method private final c()V
    .locals 4

    .prologue
    const/4 v1, 0x6

    .line 1292
    iget-object v0, p0, Lasd;->a:Lafp;

    if-eqz v0, :cond_0

    .line 1299
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1307
    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lasd;->c:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lasd;->f:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lasd;->g:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lasd;->h:I

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lasd;->i:I

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lasd;->l:I

    aput v3, v1, v2

    .line 1315
    iget-object v2, p0, Lasd;->a:Lafp;

    invoke-virtual {v2, v0, v1}, Lafp;->a([I[I)V

    .line 1317
    :cond_0
    return-void

    .line 1299
    :array_0
    .array-data 0x4
        0x3ct 0x0t 0xbt 0x7ft
        0x3dt 0x0t 0xbt 0x7ft
        0x3et 0x0t 0xbt 0x7ft
        0x3ft 0x0t 0xbt 0x7ft
        0x40t 0x0t 0xbt 0x7ft
        0x41t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public static synthetic c(Lasd;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->b()V

    return-void
.end method

.method private c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1380
    iget-object v0, p0, Lasd;->a:Lase;

    iput-boolean p1, v0, Lase;->b:Z

    .line 1381
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->a:Z

    return v0
.end method

.method public static synthetic c(Lasd;)Z
    .locals 1
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->d()Z

    move-result v0

    return v0
.end method

.method private final d()V
    .locals 3

    .prologue
    .line 1320
    iget-object v0, p0, Lasd;->a:Lafp;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b003c

    iget v2, p0, Lasd;->c:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)I

    move-result v0

    iput v0, p0, Lasd;->c:I

    .line 1322
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b003d

    iget v2, p0, Lasd;->f:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)I

    move-result v0

    iput v0, p0, Lasd;->f:I

    .line 1323
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b003e

    iget v2, p0, Lasd;->g:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)I

    move-result v0

    iput v0, p0, Lasd;->g:I

    .line 1324
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b003f

    iget v2, p0, Lasd;->h:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)I

    move-result v0

    iput v0, p0, Lasd;->h:I

    .line 1325
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b0040

    iget v2, p0, Lasd;->i:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)I

    move-result v0

    iput v0, p0, Lasd;->i:I

    .line 1326
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b0041

    iget v2, p0, Lasd;->l:I

    invoke-virtual {v0, v1, v2}, Lafp;->a(II)I

    move-result v0

    iput v0, p0, Lasd;->l:I

    .line 1328
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1353
    sget-boolean v2, Laox;->a:Z

    if-eqz v2, :cond_1

    .line 1354
    iget v2, p0, Lasd;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1360
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lasd;->b:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lasd;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lasd;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic d(Lasd;)Z
    .locals 1
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lasd;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const v7, 0x7f0b00d6

    const v6, 0x7f0b00d5

    .line 1157
    iget-object v0, p0, Lasd;->a:Lafp;

    if-eqz v0, :cond_0

    .line 1159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lasd;->a(Z)V

    .line 1160
    iget-object v0, p0, Lasd;->a:Lafp;

    const v1, 0x7f0b00d2

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lafp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1162
    iget-object v1, p0, Lasd;->a:Lafp;

    const v2, 0x7f0b00d4

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lafp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1164
    iget-object v2, p0, Lasd;->a:Lafp;

    const-string v3, "2"

    invoke-virtual {v2, v6, v3}, Lafp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1166
    iget-object v3, p0, Lasd;->a:Lafp;

    const-string v4, "2"

    invoke-virtual {v3, v7, v4}, Lafp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1168
    iget-object v4, p0, Lasd;->a:Lafp;

    const-string v5, "2"

    invoke-virtual {v4, v6, v5}, Lafp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1170
    iget-object v5, p0, Lasd;->a:Lafp;

    const-string v6, "2"

    invoke-virtual {v5, v7, v6}, Lafp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1173
    iget-object v6, p0, Lasd;->a:Lafp;

    iget-object v7, p0, Lasd;->a:Lase;

    invoke-static {v7}, Lase;->a(Lase;)[I

    move-result-object v7

    iget-object v8, p0, Lasd;->a:Lase;

    invoke-static {v8}, Lase;->b(Lase;)[I

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lafp;->c([I[I)V

    .line 1178
    iget-object v6, p0, Lasd;->a:Lase;

    invoke-static {v6, v0}, Lase;->a(Lase;I)I

    .line 1179
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, v1}, Lase;->b(Lase;I)I

    .line 1180
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, v2}, Lase;->c(Lase;I)I

    .line 1181
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, v3}, Lase;->d(Lase;I)I

    .line 1182
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, v4}, Lase;->e(Lase;I)I

    .line 1183
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0, v5}, Lase;->f(Lase;I)I

    .line 1185
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0}, Lase;->a(Lase;)V

    .line 1188
    iget-object v0, p0, Lasd;->a:Lase;

    iget-object v1, p0, Lasd;->a:Lase;

    invoke-static {v1}, Lase;->a(Lase;)I

    move-result v1

    invoke-static {v0, v1}, Lase;->g(Lase;I)I

    .line 1189
    iget-object v0, p0, Lasd;->a:Lase;

    iget-object v1, p0, Lasd;->a:Lase;

    invoke-static {v1}, Lase;->b(Lase;)I

    move-result v1

    invoke-static {v0, v1}, Lase;->h(Lase;I)I

    .line 1191
    iget-object v0, p0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0}, Lase;->c(Lase;)I

    move-result v0

    :goto_0
    iput v0, p0, Lasd;->e:I

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting portrait mKeyboardPortaitChineseSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lasd;->a:Lase;

    invoke-static {v1}, Lase;->a(Lase;)[I

    move-result-object v1

    iget v2, p0, Lasd;->f:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mKeyboardPortaitEnglishSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lasd;->a:Lase;

    invoke-static {v1}, Lase;->a(Lase;)[I

    move-result-object v1

    iget v2, p0, Lasd;->g:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lasd;->a(Ljava/lang/String;)V

    .line 1198
    :cond_0
    return-void

    .line 1191
    :cond_1
    iget-object v0, p0, Lasd;->a:Lase;

    invoke-static {v0}, Lase;->d(Lase;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1371
    iget-object v0, p0, Lasd;->a:Lase;

    iput-boolean p1, v0, Lase;->a:Z

    .line 1373
    return-void
.end method
