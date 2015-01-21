.class public final Laxc;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static a:Landroid/content/Context;

.field private static a:Lavs;

.field private static a:Lawm;

.field private static a:Laxc;

.field public static final a:[D

.field private static final a:[Ljava/lang/String;

.field public static final b:[D

.field public static final c:[D

.field public static final d:[D

.field public static final e:[D

.field private static final f:[D

.field private static final g:[D


# instance fields
.field a:Lawc;

.field a:Lawg;

.field a:Lawi;

.field a:Lawl;

.field private a:Lawx;

.field private a:Laxe;

.field private a:Laxf;

.field a:Laxk;

.field a:Laxp;

.field a:Laxt;

.field private a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

.field private a:Ljava/util/Map;

.field private a:Z

.field private a:[Lawe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 37
    new-array v0, v3, [D

    fill-array-data v0, :array_0

    sput-object v0, Laxc;->a:[D

    .line 38
    new-array v0, v3, [D

    fill-array-data v0, :array_1

    sput-object v0, Laxc;->b:[D

    .line 39
    new-array v0, v3, [D

    fill-array-data v0, :array_2

    sput-object v0, Laxc;->c:[D

    .line 40
    new-array v0, v3, [D

    fill-array-data v0, :array_3

    sput-object v0, Laxc;->d:[D

    .line 41
    new-array v0, v3, [D

    fill-array-data v0, :array_4

    sput-object v0, Laxc;->e:[D

    .line 42
    new-array v0, v3, [D

    fill-array-data v0, :array_5

    sput-object v0, Laxc;->f:[D

    .line 43
    new-array v0, v3, [D

    fill-array-data v0, :array_6

    sput-object v0, Laxc;->g:[D

    .line 45
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CandidateCodeView"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CandidateWordView"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CandidateGridView"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CandidateTabView"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CandidatePluginView"

    aput-object v2, v0, v1

    const-string v1, "CandidateWordView"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "CandidateIMEFunctionView"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CandidateView"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CandidateGridViewContainer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KeyboardSwitchContainer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "VoiceInputView"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PopupVoiceResults"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CandidateViewLand"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CandidateViewDefault"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MultimediaInputView"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "HandwritingCoreInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CameraQrcodeContainer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "VoicePictureContainer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CandidateViewWeixin"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SettingContainer"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EditView"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CloudView"

    aput-object v2, v0, v1

    sput-object v0, Laxc;->a:[Ljava/lang/String;

    .line 71
    sget-object v0, Laxc;->a:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Laxc;->a:I

    return-void

    .line 37
    nop

    :array_0
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0xc3t 0x3ft
    .end array-data

    .line 38
    :array_1
    .array-data 0x8
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0x78t 0xbft
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0x68t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0x68t 0x3ft
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0x78t 0x3ft
    .end array-data

    .line 39
    :array_2
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0xbft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x99t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x8et 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
    .end array-data

    .line 40
    :array_3
    .array-data 0x8
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x8et 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x99t 0xbft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0xbft
    .end array-data

    .line 41
    :array_4
    .array-data 0x8
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0xbft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x8et 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x8et 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
    .end array-data

    .line 42
    :array_5
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xc9t 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0xd3t 0x3ft
    .end array-data

    .line 43
    :array_6
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x89t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x89t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x99t 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0xa3t 0x3ft
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxc;->a:Z

    .line 328
    sput-object p1, Laxc;->a:Landroid/content/Context;

    .line 329
    new-instance v0, Laxf;

    invoke-direct {v0, p0, v1}, Laxf;-><init>(Laxc;Laxd;)V

    iput-object v0, p0, Laxc;->a:Laxf;

    .line 330
    new-instance v0, Laxe;

    invoke-direct {v0, p0, v1}, Laxe;-><init>(Laxc;Laxd;)V

    iput-object v0, p0, Laxc;->a:Laxe;

    .line 331
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    sput-object v0, Laxc;->a:Lavs;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxc;->a:Ljava/util/Map;

    .line 334
    sget v0, Laxc;->a:I

    new-array v0, v0, [Lawe;

    iput-object v0, p0, Laxc;->a:[Lawe;

    .line 336
    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Laxc;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Laxc;->a:Landroid/content/Context;

    .line 451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Lavs;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laxc;->a:Lavs;

    return-object v0
.end method

.method static synthetic a()Lawm;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)Lawx;
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Laxc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawx;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iput-object v0, p0, Laxc;->a:Lawx;

    .line 157
    :goto_0
    return-object v0

    .line 148
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->Y()V

    .line 150
    :cond_1
    iget-object v0, p0, Laxc;->a:Laxf;

    invoke-virtual {v0, p1}, Laxf;->a(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Laxc;->a:Laxf;

    invoke-virtual {v0}, Laxf;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 153
    iget-object v0, p0, Laxc;->a:Ljava/util/Map;

    iget-object v1, p0, Laxc;->a:Laxf;

    invoke-virtual {v1}, Laxf;->a()Lawx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Laxc;->a:Laxf;

    invoke-virtual {v0}, Laxf;->a()Lawx;

    move-result-object v0

    iput-object v0, p0, Laxc;->a:Lawx;

    .line 157
    :cond_2
    iget-object v0, p0, Laxc;->a:Lawx;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Laxc;
    .locals 1
    .parameter

    .prologue
    .line 102
    sget-object v0, Laxc;->a:Laxc;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Laxc;

    invoke-direct {v0, p0}, Laxc;-><init>(Landroid/content/Context;)V

    sput-object v0, Laxc;->a:Laxc;

    .line 105
    :cond_0
    sget-object v0, Laxc;->a:Laxc;

    return-object v0
.end method

.method private static final a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 442
    sget-object v0, Laxc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 443
    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "land/"

    .line 444
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :cond_1
    const-string v0, "port/"

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    return-void
.end method

.method static synthetic a()[D
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laxc;->f:[D

    return-object v0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laxc;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laxc;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static b()Lawm;
    .locals 2

    .prologue
    .line 433
    sget-object v0, Laxc;->a:Lawm;

    if-nez v0, :cond_1

    .line 434
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "template.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 435
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    .line 436
    :cond_0
    invoke-static {v0}, Lawm;->a(Layx;)Lawm;

    move-result-object v0

    sput-object v0, Laxc;->a:Lawm;

    .line 438
    :cond_1
    sget-object v0, Laxc;->a:Lawm;

    goto :goto_0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method static synthetic b()[D
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laxc;->g:[D

    return-object v0
.end method


# virtual methods
.method public a()Lawc;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Laxc;->a:Lawc;

    return-object v0
.end method

.method public a(I)Lawe;
    .locals 2
    .parameter

    .prologue
    .line 161
    .line 163
    iget-object v0, p0, Laxc;->a:[Lawe;

    aget-object v0, v0, p1

    .line 165
    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Laxc;->a:Laxe;

    invoke-virtual {v0, p1}, Laxe;->a(I)V

    .line 169
    iget-object v0, p0, Laxc;->a:Laxe;

    invoke-virtual {v0}, Laxe;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Laxc;->a:[Lawe;

    iget-object v1, p0, Laxc;->a:Laxe;

    invoke-virtual {v1}, Laxe;->a()Lawe;

    move-result-object v1

    aput-object v1, v0, p1

    .line 173
    iget-object v0, p0, Laxc;->a:Laxe;

    invoke-virtual {v0}, Laxe;->a()Lawe;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lawg;
    .locals 7

    .prologue
    .line 243
    iget-object v0, p0, Laxc;->a:Lawg;

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    new-instance v1, Lawf;

    invoke-direct {v1}, Lawf;-><init>()V

    .line 247
    sget-object v2, Laxc;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 248
    sget-object v3, Laxc;->a:Landroid/content/Context;

    const v4, 0x7f0b0073

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 249
    sget v3, Laox;->a:I

    int-to-double v3, v3

    sget-object v5, Laxc;->g:[D

    aget-wide v5, v5, v2

    mul-double v2, v3, v5

    double-to-int v2, v2

    iput v2, v1, Lawf;->a:I

    .line 250
    new-instance v2, Lawg;

    invoke-direct {v2, v0, v1}, Lawg;-><init>(Layx;Lawf;)V

    iput-object v2, p0, Laxc;->a:Lawg;

    .line 253
    :cond_0
    iget-object v0, p0, Laxc;->a:Lawg;

    return-object v0
.end method

.method public a()Lawi;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Laxc;->a:Lawi;

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lawi;

    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lawi;-><init>(Layx;Lawm;)V

    iput-object v1, p0, Laxc;->a:Lawi;

    .line 219
    :cond_0
    iget-object v0, p0, Laxc;->a:Lawi;

    return-object v0
.end method

.method public a()Lawl;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Laxc;->a:Lawl;

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    new-instance v1, Lawl;

    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lawl;-><init>(Layx;Lawm;)V

    iput-object v1, p0, Laxc;->a:Lawl;

    .line 199
    :cond_0
    iget-object v0, p0, Laxc;->a:Lawl;

    return-object v0
.end method

.method public a()Laxk;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Laxc;->a:Laxk;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Laxk;

    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Laxk;-><init>(Layx;Lawm;)V

    iput-object v1, p0, Laxc;->a:Laxk;

    .line 229
    :cond_0
    iget-object v0, p0, Laxc;->a:Laxk;

    return-object v0
.end method

.method public a()Laxp;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Laxc;->a:Laxp;

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Laxp;

    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Laxp;-><init>(Layx;Lawm;)V

    iput-object v1, p0, Laxc;->a:Laxp;

    .line 209
    :cond_0
    iget-object v0, p0, Laxc;->a:Laxp;

    return-object v0
.end method

.method public a()Laxt;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Laxc;->a:Laxt;

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Laxt;

    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Laxt;-><init>(Layx;Lawm;)V

    iput-object v1, p0, Laxc;->a:Laxt;

    .line 239
    :cond_0
    iget-object v0, p0, Laxc;->a:Laxt;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Laxc;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Laxc;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Laxc;->setChanged()V

    .line 324
    invoke-virtual {p0}, Laxc;->notifyObservers()V

    .line 325
    return-void
.end method

.method public a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Laxc;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    .line 118
    return-void
.end method

.method public a(Ljava/util/Observer;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 258
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-boolean p1, p0, Laxc;->a:Z

    .line 266
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Laxc;->a:Z

    return v0
.end method

.method public a(Ljava/lang/CharSequence;IZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Laxc;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Laxc;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {p1}, Laxc;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Laxc;->a(Ljava/lang/CharSequence;)Lawx;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->setKeyboard(Lawx;IZ)V

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lawc;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Laxc;->a:Lawc;

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Laxc;->a:Lavs;

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lawc;

    invoke-static {}, Laxc;->b()Lawm;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lawc;-><init>(Layx;Lawm;)V

    iput-object v1, p0, Laxc;->a:Lawc;

    .line 189
    :cond_0
    iget-object v0, p0, Laxc;->a:Lawc;

    return-object v0
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Laxc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawx;

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Laxc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    iget-object v0, p0, Laxc;->a:[Lawe;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Laxc;->a:[Lawe;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    :cond_1
    iput-object v2, p0, Laxc;->a:Lawg;

    .line 279
    iget-object v0, p0, Laxc;->a:Lawc;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Laxc;->a:Lawc;

    invoke-virtual {v0}, Lawc;->a()V

    .line 281
    iput-object v2, p0, Laxc;->a:Lawc;

    .line 283
    :cond_2
    iget-object v0, p0, Laxc;->a:Lawl;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Laxc;->a:Lawl;

    invoke-virtual {v0}, Lawl;->a()V

    .line 285
    iput-object v2, p0, Laxc;->a:Lawl;

    .line 288
    :cond_3
    iget-object v0, p0, Laxc;->a:Laxp;

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Laxc;->a:Laxp;

    invoke-virtual {v0}, Laxp;->a()V

    .line 290
    iput-object v2, p0, Laxc;->a:Laxp;

    .line 293
    :cond_4
    iget-object v0, p0, Laxc;->a:Lawi;

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Laxc;->a:Lawi;

    invoke-virtual {v0}, Lawi;->a()V

    .line 295
    iput-object v2, p0, Laxc;->a:Lawi;

    .line 298
    :cond_5
    iget-object v0, p0, Laxc;->a:Laxk;

    if-eqz v0, :cond_6

    .line 299
    iget-object v0, p0, Laxc;->a:Laxk;

    invoke-virtual {v0}, Laxk;->a()V

    .line 300
    iput-object v2, p0, Laxc;->a:Laxk;

    .line 303
    :cond_6
    iget-object v0, p0, Laxc;->a:Laxt;

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Laxc;->a:Laxt;

    invoke-virtual {v0}, Laxt;->a()V

    .line 305
    iput-object v2, p0, Laxc;->a:Laxt;

    .line 308
    :cond_7
    sget-object v0, Laxc;->a:Lawm;

    if-eqz v0, :cond_8

    .line 309
    sget-object v0, Laxc;->a:Lawm;

    invoke-virtual {v0}, Lawm;->a()V

    .line 310
    sput-object v2, Laxc;->a:Lawm;

    .line 312
    :cond_8
    if-eqz p1, :cond_9

    invoke-static {}, Laxq;->a()V

    .line 314
    :cond_9
    invoke-direct {p0}, Laxc;->b()V

    .line 315
    const-string v0, " End invoke the KeyboardManager reset "

    invoke-static {v0}, Laxc;->a(Ljava/lang/String;)V

    .line 316
    return-void
.end method
