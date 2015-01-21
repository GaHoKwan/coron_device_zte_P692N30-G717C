.class Lawr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lawq;

.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawr;->a:Ljava/util/HashMap;

    .line 184
    invoke-static {}, Lawr;->a()Lawq;

    move-result-object v0

    iput-object v0, p0, Lawr;->a:Lawq;

    .line 185
    return-void
.end method

.method private static a()Lawq;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 201
    new-instance v1, Lawq;

    invoke-direct {v1, v7}, Lawq;-><init>(Lawn;)V

    .line 202
    const-string v2, "Key"

    .line 203
    const-string v2, "Key"

    iput-object v2, v1, Lawq;->a:Ljava/lang/String;

    .line 204
    iput v3, v1, Lawq;->i:I

    .line 205
    iput v3, v1, Lawq;->j:I

    .line 206
    iput v3, v1, Lawq;->k:I

    .line 207
    iput v3, v1, Lawq;->l:I

    .line 209
    iput-boolean v0, v1, Lawq;->i:Z

    .line 211
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v2

    const-string v3, "Key"

    invoke-static {v2, v3}, Laxq;->a(Layx;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lawq;->d:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v2

    const-string v3, "Key"

    const-string v4, "UNSUGGESTED_DA"

    invoke-static {v2, v3, v4}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lawq;->e:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v2, v1, Lawq;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, v1, Lawq;->e:Landroid/graphics/drawable/Drawable;

    sget-object v3, Laxr;->i:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 217
    :cond_0
    iget-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 218
    invoke-static {}, Laws;->values()[Laws;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_1
    :goto_0
    iget-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 221
    iget-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lawm;->b()Layx;

    move-result-object v3

    const-string v4, "Key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUGGESTED_DA"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 222
    iget-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    .line 223
    iput-object v7, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_2
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v0

    const-string v2, "Key"

    const-string v3, "FG_STYLE"

    const-string v4, "FGStyle"

    invoke-static {v0, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_3

    .line 234
    invoke-static {}, Lawm;->a()Lawp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lawp;->a(Ljava/lang/String;)Lawo;

    move-result-object v0

    iput-object v0, v1, Lawq;->a:Lawo;

    .line 237
    :cond_3
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v0

    const-string v2, "Key"

    const-string v3, "POPUP_BG_STYLE"

    invoke-static {v0, v2, v3, v7}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_4

    .line 239
    invoke-static {}, Lawm;->a()Laxm;

    move-result-object v2

    invoke-virtual {v2, v0}, Laxm;->a(Ljava/lang/String;)Laxn;

    move-result-object v0

    iput-object v0, v1, Lawq;->a:Laxn;

    .line 242
    :cond_4
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v0

    const-string v2, "Key"

    const-string v3, "POPUP_FG_STYLE"

    const-string v4, "FGStyle"

    invoke-static {v0, v2, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_5

    .line 245
    invoke-static {}, Lawm;->a()Lawp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lawp;->a(Ljava/lang/String;)Lawo;

    move-result-object v0

    iput-object v0, v1, Lawq;->b:Lawo;

    .line 249
    :cond_5
    return-object v1

    .line 226
    :cond_6
    iget-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    sget-object v3, Laxr;->i:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lawr;)Lawq;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lawr;->a:Lawq;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lawq;)Lawq;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-virtual {p2}, Lawq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 255
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p2, p1, v1, v2}, Lawm;->a(Lawq;Lawq;Ljava/lang/String;Layx;Z)Lawq;

    .line 257
    iget v1, v0, Lawq;->f:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lawr;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lawq;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lawr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 189
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lawm;->b()Layx;

    move-result-object v0

    invoke-virtual {v0, p1}, Layx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawr;->a:Lawq;

    invoke-direct {p0, p1, v0}, Lawr;->a(Ljava/lang/String;Lawq;)Lawq;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lawr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 194
    iput-object v1, p0, Lawr;->a:Ljava/util/HashMap;

    .line 195
    iput-object v1, p0, Lawr;->a:Lawq;

    .line 196
    return-void
.end method
