.class public Laxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# static fields
.field public static a:I

.field private static a:Ljava/util/HashMap;

.field private static a:Ljava/util/List;

.field public static a:Z

.field private static b:Ljava/util/List;

.field public static b:Z


# instance fields
.field private a:Landroid/content/Context;

.field a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private a:Landroid/media/AudioManager;

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/speech/SpeechRecognizer;

.field private a:Landroid/telephony/TelephonyManager;

.field private a:Laxz;

.field private a:Layp;

.field private a:Lcom/sohu/inputmethod/voice/VoiceInputView;

.field private a:Lgg;

.field private a:Lgj;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Layp;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    sput-boolean v1, Laxw;->a:Z

    .line 106
    const/16 v0, 0xa

    sput v0, Laxw;->a:I

    .line 115
    sput-boolean v1, Laxw;->b:Z

    .line 228
    sput-object v2, Laxw;->a:Ljava/util/List;

    .line 229
    sput-object v2, Laxw;->b:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laxw;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laxz;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v0, p0, Laxw;->b:I

    .line 152
    const-string v1, ""

    iput-object v1, p0, Laxw;->a:Ljava/lang/String;

    .line 153
    const-string v1, ""

    iput-object v1, p0, Laxw;->b:Ljava/lang/String;

    .line 155
    iput-boolean v0, p0, Laxw;->c:Z

    .line 273
    new-instance v1, Laxx;

    invoke-direct {v1, p0}, Laxx;-><init>(Laxw;)V

    iput-object v1, p0, Laxw;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 239
    iput-object p2, p0, Laxw;->a:Laxz;

    .line 240
    iput-object p1, p0, Laxw;->a:Landroid/content/Context;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "latin_ime_voice_input_recommended_packages"

    const-string v3, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    invoke-static {v1, v2, v3}, Laxv;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v2, Layp;

    invoke-direct {v2}, Layp;-><init>()V

    iput-object v2, p0, Laxw;->a:Layp;

    .line 248
    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 249
    iget-object v4, p0, Laxw;->a:Layp;

    invoke-virtual {v4, v3}, Layp;->a(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Layp;

    invoke-direct {v0}, Layp;-><init>()V

    iput-object v0, p0, Laxw;->b:Layp;

    .line 253
    iget-object v0, p0, Laxw;->b:Layp;

    const-string v1, "com.android.setupwizard"

    invoke-virtual {v0, v1}, Layp;->a(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private a(IZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0b02db

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 554
    :pswitch_0
    const v0, 0x7f0b02d6

    :goto_0
    :pswitch_1
    return v0

    .line 532
    :pswitch_2
    const v0, 0x7f0b02e0

    goto :goto_0

    .line 534
    :pswitch_3
    const v0, 0x7f0b02d7

    goto :goto_0

    .line 540
    :pswitch_4
    const v0, 0x7f0b02da

    goto :goto_0

    .line 544
    :pswitch_5
    const v0, 0x7f0b02dc

    goto :goto_0

    .line 546
    :pswitch_6
    const v0, 0x7f0b02df

    goto :goto_0

    .line 548
    :pswitch_7
    const v0, 0x7f0b02dd

    goto :goto_0

    .line 550
    :pswitch_8
    const v0, 0x7f0b02de

    goto :goto_0

    .line 552
    :pswitch_9
    const v0, 0x7f0b02d8

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Laxw;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Laxw;->b:I

    return p1
.end method

.method static synthetic a(Laxw;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laxw;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laxw;->a:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Laxw;)Laxz;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laxw;->a:Laxz;

    return-object v0
.end method

.method static synthetic a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    return-object v0
.end method

.method static synthetic a(Laxw;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laxw;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Laxw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Laxw;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Laxw;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laxw;->b(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method static synthetic a(Laxw;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Laxw;->a(IZ)V

    return-void
.end method

.method static synthetic a(Laxw;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Laxw;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 573
    if-eqz p1, :cond_8

    .line 575
    iget-object v0, p0, Laxw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxw;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 576
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laxw;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 576
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 580
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Laxw;->b:Ljava/lang/String;

    .line 583
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 585
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    sget-boolean v0, Laxw;->a:Z

    if-eqz v0, :cond_6

    .line 586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [[Ljava/lang/String;

    move v1, v2

    .line 587
    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_2

    .line 588
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 591
    :goto_2
    aget-object v0, v6, v2

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 592
    aget-object v0, v6, v2

    aget-object v0, v0, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const/4 v0, 0x1

    move v3, v0

    :goto_3
    array-length v0, v6

    if-ge v3, v0, :cond_5

    .line 594
    aget-object v0, v6, v3

    array-length v0, v0

    mul-int/2addr v0, v1

    aget-object v4, v6, v2

    array-length v4, v4

    div-int/2addr v0, v4

    .line 595
    add-int/lit8 v4, v1, 0x1

    aget-object v7, v6, v3

    array-length v7, v7

    mul-int/2addr v4, v7

    aget-object v7, v6, v2

    array-length v7, v7

    div-int v7, v4, v7

    move v4, v0

    .line 597
    :goto_4
    aget-object v0, v6, v3

    array-length v0, v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 598
    aget-object v0, v6, v2

    aget-object v0, v0, v1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 599
    aget-object v8, v6, v3

    aget-object v8, v8, v4

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x6

    if-ge v8, v9, :cond_3

    .line 600
    aget-object v8, v6, v3

    aget-object v8, v8, v4

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 593
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 591
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 606
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Laxw;->a:I

    if-le v0, v1, :cond_7

    .line 607
    sget v0, Laxw;->a:I

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 610
    :cond_7
    iget-object v0, p0, Laxw;->a:Laxz;

    iget-object v1, p0, Laxw;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v5, v1}, Laxz;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 613
    :cond_8
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_9

    .line 614
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->k()V

    .line 615
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->l()V

    .line 617
    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 911
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Laxw;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Laxw;->c:Z

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 564
    const/4 v0, 0x3

    iput v0, p0, Laxw;->b:I

    .line 565
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Ljava/lang/String;)V

    .line 570
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Laxw;->a:Lgg;

    invoke-virtual {v0}, Lgg;->d()V

    .line 337
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Laxw;->b:I

    return v0
.end method

.method public a()Laxz;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Laxw;->a:Laxz;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Laxw;->a:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Laxw;->a:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 405
    :cond_0
    iput-object v1, p0, Laxw;->a:Landroid/speech/SpeechRecognizer;

    .line 407
    iget-object v0, p0, Laxw;->a:Lgg;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Laxw;->a:Lgg;

    invoke-virtual {v0}, Lgg;->e()V

    .line 410
    :cond_1
    iput-object v1, p0, Laxw;->a:Lgg;

    .line 411
    return-void
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->e()V

    .line 269
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    iget-object v1, p0, Laxw;->a:Landroid/content/Context;

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Ljava/util/Observable;Ljava/lang/Object;II)V

    .line 271
    :cond_0
    return-void
.end method

.method public a(Lawg;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    return-void
.end method

.method public a(Laxu;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Laxw;->a:Landroid/media/AudioManager;

    .line 297
    iget-object v0, p0, Laxw;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Laxw;->a:Landroid/media/AudioManager;

    iget-object v2, p0, Laxw;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 299
    if-eq v0, v4, :cond_0

    .line 333
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Laxw;->b:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->i()V

    .line 314
    :cond_1
    iget-object v0, p0, Laxw;->a:Lgj;

    if-nez v0, :cond_2

    .line 315
    new-instance v0, Laxy;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Laxy;-><init>(Laxw;Laxx;)V

    iput-object v0, p0, Laxw;->a:Lgj;

    .line 317
    :cond_2
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Laxw;->a:Landroid/telephony/TelephonyManager;

    .line 318
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Laxw;->a:Landroid/net/ConnectivityManager;

    .line 319
    new-instance v0, Lgg;

    const/4 v2, 0x5

    const/4 v9, 0x2

    const-string v10, ""

    iget-object v11, p0, Laxw;->a:Landroid/telephony/TelephonyManager;

    iget-object v12, p0, Laxw;->a:Landroid/net/ConnectivityManager;

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v12}, Lgg;-><init>(IIIIIIIIILjava/lang/String;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Laxw;->a:Lgg;

    .line 323
    iget-object v0, p0, Laxw;->a:Lgg;

    iget-object v1, p0, Laxw;->a:Lgj;

    invoke-virtual {v0, v1}, Lgg;->a(Lgj;)V

    .line 324
    invoke-direct {p0}, Laxw;->f()V

    .line 332
    iput v4, p0, Laxw;->b:I

    goto :goto_0
.end method

.method public a(Lcom/sohu/inputmethod/voice/VoiceInputView;)V
    .locals 2
    .parameter

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 424
    :cond_0
    iput-object p1, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    .line 425
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->setService(Laxw;)V

    .line 426
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->c()V

    .line 427
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->setCandidateId(I)V

    .line 429
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->h()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 502
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lgt;->b:I

    .line 503
    iput-boolean v2, p0, Laxw;->c:Z

    .line 504
    iget v0, p0, Laxw;->b:I

    if-ne v0, v2, :cond_2

    .line 505
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->l()V

    .line 513
    :cond_0
    iget-object v0, p0, Laxw;->a:Lgg;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Laxw;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()V

    .line 518
    :cond_1
    iput-object p1, p0, Laxw;->b:Ljava/lang/String;

    .line 519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bV:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bV:I

    .line 525
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Laxw;->b:I

    .line 526
    return-void

    .line 522
    :cond_3
    iget-object v0, p0, Laxw;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bX:I

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 940
    sput-object p1, Laxw;->a:Ljava/util/List;

    .line 941
    sput-object p2, Laxw;->b:Ljava/util/List;

    .line 942
    sget-object v0, Laxw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Laxw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 943
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 944
    sget-object v2, Laxw;->a:Ljava/util/HashMap;

    sget-object v3, Laxw;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Laxw;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-boolean p1, p0, Laxw;->c:Z

    .line 498
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    iget v0, p0, Laxw;->b:I

    packed-switch v0, :pswitch_data_0

    .line 472
    :pswitch_0
    iput v2, p0, Laxw;->b:I

    .line 480
    iget-object v0, p0, Laxw;->a:Lgg;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Laxw;->a:Lgg;

    invoke-virtual {v0}, Lgg;->b()V

    .line 482
    iget-object v0, p0, Laxw;->a:Lgg;

    invoke-virtual {v0}, Lgg;->c()V

    .line 483
    iget-object v0, p0, Laxw;->a:Lgg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgg;->a(Lgj;)V

    .line 487
    :cond_0
    iget-object v0, p0, Laxw;->a:Laxz;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Laxw;->a:Laxz;

    invoke-interface {v0}, Laxz;->D()V

    .line 489
    :cond_1
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->l()V

    .line 492
    :cond_2
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget v0, v0, Lgt;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iput v2, v0, Lgt;->e:I

    .line 493
    :cond_3
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget-object v1, p0, Laxw;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lgt;->a(Landroid/content/Context;)V

    .line 494
    return-void

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a()V

    .line 622
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-virtual {p0}, Laxw;->b()V

    .line 626
    iget-object v0, p0, Laxw;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Laxw;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Laxw;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 629
    :cond_0
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b()V

    .line 631
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 632
    iput-object v2, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    .line 644
    :cond_1
    iget-object v0, p0, Laxw;->a:Lgg;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Laxw;->a:Lgg;

    invoke-virtual {v0, v2}, Lgg;->a(Lgj;)V

    .line 647
    :cond_2
    iget-object v0, p0, Laxw;->a:Lgj;

    if-eqz v0, :cond_3

    .line 648
    iget-object v0, p0, Laxw;->a:Lgj;

    check-cast v0, Laxy;

    invoke-virtual {v0}, Laxy;->c()V

    .line 649
    iput-object v2, p0, Laxw;->a:Lgj;

    .line 651
    :cond_3
    iput-object v2, p0, Laxw;->a:Landroid/speech/SpeechRecognizer;

    .line 653
    invoke-virtual {p0}, Laxw;->a()V

    .line 654
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Laxw;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->d()V

    .line 973
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 966
    iget-object v0, p0, Laxw;->a:Laxz;

    invoke-interface {v0}, Laxz;->I()V

    .line 967
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 933
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 934
    check-cast p1, Laxc;

    invoke-virtual {p1}, Laxc;->a()Lawg;

    move-result-object v0

    invoke-virtual {p0, v0}, Laxw;->a(Lawg;)V

    .line 936
    :cond_0
    return-void
.end method
