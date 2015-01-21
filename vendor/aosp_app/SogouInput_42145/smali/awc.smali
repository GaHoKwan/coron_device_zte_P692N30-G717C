.class public Lawc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private a:Landroid/util/SparseArray;

.field private b:Landroid/util/SparseArray;

.field private c:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "ButtonImage"

    sput-object v0, Lawc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Layx;Lawm;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    .line 254
    :cond_0
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 255
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_More"

    const-string v3, "ICONS"

    invoke-static {p1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Close"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Hide"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Logo"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Scroll_Bar"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Close_Association"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Contact_Sign"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Left"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->r:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Right"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v1, Lawd;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Scroll_Bar_Platform"

    const-string v3, "ICON"

    invoke-static {p1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    .line 271
    :cond_1
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 272
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_More"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Close"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Hide"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Logo"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Scroll_Bar"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Close_Association"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Contact_Sign"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Left"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->r:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Right"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Scroll_Bar_Platform"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v1, Lawd;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Button_Fadding"

    invoke-static {p1, v2, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    .line 289
    :cond_2
    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 290
    return-void
.end method

.method private a(Ljava/lang/Integer;)Z
    .locals 1
    .parameter

    .prologue
    .line 103
    sget-object v0, Lawd;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->b:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->n:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Integer;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    sget-object v0, Lawd;->i:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->k:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->w:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->x:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Integer;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    sget-object v0, Lawd;->u:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lawd;->v:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/Integer;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    sget-object v0, Lawd;->l:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lawc;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lawc;->c()V

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Lawc;->b(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lawc;->b()V

    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0, p1}, Lawc;->d(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lawc;->e()V

    goto :goto_0

    .line 63
    :cond_3
    invoke-direct {p0, p1}, Lawc;->c(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lawc;->d()V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 124
    iput-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    .line 126
    :cond_0
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 128
    iput-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    .line 130
    :cond_1
    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 132
    iput-object v1, p0, Lawc;->c:Landroid/util/SparseArray;

    .line 134
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lawc;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lawc;->c()V

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lawc;->b(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lawc;->b()V

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0, p1}, Lawc;->d(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {p0}, Lawc;->e()V

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0, p1}, Lawc;->c(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lawc;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Cloud_Tip"

    const-string v4, "ICON"

    invoke-static {v0, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Cloud_Baby"

    const-string v4, "ICON"

    invoke-static {v0, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    const-string v1, "images.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Cloud_Mother"

    const-string v4, "NORMAL"

    invoke-static {v0, v3, v4}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Bg_Cloud_Bottom"

    const-string v4, "NORMAL"

    invoke-static {v0, v3, v4}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Bg_Cloud_Top"

    const-string v4, "NORMAL"

    invoke-static {v0, v3, v4}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Up"

    const-string v4, "ICONS"

    invoke-static {v0, v3, v4}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Down"

    const-string v4, "ICONS"

    invoke-static {v0, v3, v4}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Back"

    const-string v4, "ICONS"

    invoke-static {v0, v3, v4}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Lock"

    const-string v4, "ICONS"

    invoke-static {v0, v3, v4}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Filter"

    const-string v4, "ICONS"

    invoke-static {v0, v3, v4}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v2, Lawd;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Up"

    invoke-static {v0, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v2, Lawd;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Down"

    invoke-static {v0, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v2, Lawd;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Back"

    invoke-static {v0, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v2, Lawd;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Lock"

    invoke-static {v0, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v2, Lawd;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Filter"

    invoke-static {v0, v3, v5}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    const-string v1, "images.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Bg_Composing_Bottom"

    const-string v4, "NORMAL"

    invoke-static {v0, v3, v4}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Bg_Composing_Top"

    const-string v4, "NORMAL"

    invoke-static {v0, v3, v4}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 235
    iget-object v0, p0, Lawc;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawc;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lawc;->a:Landroid/util/SparseArray;

    sget-object v2, Lawd;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Voice"

    const-string v4, "ICON"

    invoke-static {v0, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lawc;->b:Landroid/util/SparseArray;

    sget-object v2, Lawd;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Voice"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Laxq;->a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lawc;->c:Landroid/util/SparseArray;

    sget-object v2, Lawd;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Button_Voice"

    const-string v4, "LABEL"

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
