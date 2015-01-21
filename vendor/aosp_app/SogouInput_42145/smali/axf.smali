.class Laxf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lawx;

.field final synthetic a:Laxc;

.field private a:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Laxc;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Laxf;->a:Laxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laxc;Laxd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1}, Laxf;-><init>(Laxc;)V

    return-void
.end method


# virtual methods
.method public a()Lawx;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Laxf;->a:Lawx;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Laxf;->a:Ljava/lang/CharSequence;

    .line 362
    return-void
.end method

.method public a()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    invoke-static {}, Laxc;->a()Lavs;

    move-result-object v2

    iget-object v3, p0, Laxf;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_1

    .line 368
    invoke-static {}, Laxc;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 369
    new-instance v4, Laxa;

    invoke-direct {v4}, Laxa;-><init>()V

    .line 370
    invoke-static {}, Laxc;->b()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0072

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 371
    invoke-static {}, Laxc;->b()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0074

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 372
    sget v6, Laox;->a:I

    int-to-double v6, v6

    invoke-static {}, Laxc;->a()[D

    move-result-object v8

    invoke-static {}, Laxc;->a()[D

    move-result-object v9

    array-length v9, v9

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v8, v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    iput v3, v4, Laxa;->b:I

    .line 374
    const-string v3, "Keyboard"

    const-string v6, "HEIGHT_FIXED"

    invoke-static {v2, v3, v6, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    sget v1, Laox;->a:I

    int-to-double v6, v1

    sget-object v1, Laxc;->a:[D

    aget-wide v8, v1, v5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    iput v1, v4, Laxa;->a:I

    .line 376
    sget v1, Laox;->a:I

    int-to-double v6, v1

    sget-object v1, Laxc;->b:[D

    aget-wide v8, v1, v5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    iput v1, v4, Laxa;->c:I

    .line 377
    sget-object v1, Laxc;->c:[D

    aget-wide v6, v1, v5

    iput-wide v6, v4, Laxa;->a:D

    .line 378
    sget-object v1, Laxc;->d:[D

    aget-wide v6, v1, v5

    iput-wide v6, v4, Laxa;->b:D

    .line 379
    sget-object v1, Laxc;->e:[D

    aget-wide v5, v1, v5

    iput-wide v5, v4, Laxa;->c:D

    .line 382
    :cond_0
    new-instance v1, Lawx;

    invoke-static {}, Laxc;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Laxc;->a()Lawm;

    move-result-object v5

    invoke-direct {v1, v3, v2, v5, v4}, Lawx;-><init>(Landroid/content/Context;Layx;Lawm;Laxa;)V

    iput-object v1, p0, Laxf;->a:Lawx;

    .line 385
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
