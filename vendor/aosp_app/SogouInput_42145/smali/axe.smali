.class Laxe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lawe;

.field final synthetic a:Laxc;


# direct methods
.method private constructor <init>(Laxc;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Laxe;->a:Laxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laxc;Laxd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-direct {p0, p1}, Laxe;-><init>(Laxc;)V

    return-void
.end method


# virtual methods
.method public a()Lawe;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Laxe;->a:Lawe;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput p1, p0, Laxe;->a:I

    .line 404
    return-void
.end method

.method public a()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-static {}, Laxc;->a()Lavs;

    move-result-object v1

    const-string v2, "cands.ini"

    invoke-virtual {v1, v2}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_0

    .line 409
    new-instance v2, Lawf;

    invoke-direct {v2}, Lawf;-><init>()V

    .line 410
    iget v3, p0, Laxe;->a:I

    sparse-switch v3, :sswitch_data_0

    .line 419
    iput v0, v2, Lawf;->a:I

    .line 421
    :goto_0
    new-instance v0, Lawe;

    invoke-static {}, Laxc;->a()[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Laxe;->a:I

    aget-object v3, v3, v4

    invoke-static {}, Laxc;->a()Lawm;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4, v2}, Lawe;-><init>(Layx;Ljava/lang/String;Lawm;Lawf;)V

    iput-object v0, p0, Laxe;->a:Lawe;

    .line 422
    const/4 v0, 0x1

    .line 424
    :cond_0
    return v0

    .line 414
    :sswitch_0
    invoke-static {}, Laxc;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 415
    invoke-static {}, Laxc;->b()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0073

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 416
    sget v3, Laox;->a:I

    int-to-double v3, v3

    invoke-static {}, Laxc;->b()[D

    move-result-object v5

    aget-wide v5, v5, v0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v2, Lawf;->a:I

    goto :goto_0

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method
