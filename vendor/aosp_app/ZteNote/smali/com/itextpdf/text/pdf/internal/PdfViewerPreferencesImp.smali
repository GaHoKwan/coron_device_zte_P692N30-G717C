.class public Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;
.super Ljava/lang/Object;
.source "PdfViewerPreferencesImp.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;


# static fields
.field public static final DIRECTION_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final DUPLEX_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final NONFULLSCREENPAGEMODE_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PAGE_BOUNDARIES:[Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PRINTSCALING_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName; = null

.field private static final viewerPreferencesMask:I = 0xfff000


# instance fields
.field private pageLayoutAndMode:I

.field private viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HIDETOOLBAR:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HIDEMENUBAR:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HIDEWINDOWUI:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FITWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CENTERWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DISPLAYDOCTITLE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NONFULLSCREENPAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DIRECTION:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->VIEWAREA:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->VIEWCLIP:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PRINTAREA:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PRINTCLIP:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PRINTSCALING:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DUPLEX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PICKTRAYBYPDFSIZE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PRINTPAGERANGE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NUMCOPIES:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    .line 84
    new-array v0, v7, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USENONE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USEOUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USETHUMBS:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USEOC:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v6

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->NONFULLSCREENPAGEMODE_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    .line 88
    new-array v0, v5, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->L2R:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->R2L:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->DIRECTION_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v7

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->PAGE_BOUNDARIES:[Lcom/itextpdf/text/pdf/PdfName;

    .line 96
    new-array v0, v5, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->APPDEFAULT:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NONE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->PRINTSCALING_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    .line 100
    new-array v0, v6, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SIMPLEX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUPLEXFLIPSHORTEDGE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUPLEXFLIPLONGEDGE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->DUPLEX_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    .line 108
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-void
.end method

.method private getIndex(Lcom/itextpdf/text/pdf/PdfName;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    .end local v0           #i:I
    :goto_1
    return v0

    .line 179
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getViewerPreferences(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;
    .locals 7
    .parameter "catalog"

    .prologue
    .line 305
    new-instance v3, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    .line 306
    .local v3, preferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;
    const/4 v4, 0x0

    .line 307
    .local v4, prefs:I
    const/4 v1, 0x0

    .line 309
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 310
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v2

    .line 311
    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 312
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SINGLEPAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    or-int/lit8 v4, v4, 0x1

    .line 326
    :cond_0
    :goto_0
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 327
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v2

    .line 328
    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 329
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->USENONE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 330
    or-int/lit8 v4, v4, 0x40

    .line 343
    :cond_1
    :goto_1
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 345
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->VIEWERPREFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v5, v2

    .line 348
    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 349
    .local v5, vp:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v6, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v6, v6

    if-ge v0, v6, :cond_c

    .line 350
    sget-object v6, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 351
    sget-object v6, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->VIEWER_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    .end local v0           #i:I
    .end local v5           #vp:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ONECOLUMN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 315
    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 316
    :cond_3
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TWOCOLUMNLEFT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    or-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 318
    :cond_4
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TWOCOLUMNRIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 320
    :cond_5
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TWOPAGELEFT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 321
    or-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 322
    :cond_6
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TWOPAGERIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 323
    or-int/lit8 v4, v4, 0x20

    goto/16 :goto_0

    .line 331
    :cond_7
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->USEOUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 332
    or-int/lit16 v4, v4, 0x80

    goto :goto_1

    .line 333
    :cond_8
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->USETHUMBS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 334
    or-int/lit16 v4, v4, 0x100

    goto/16 :goto_1

    .line 335
    :cond_9
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FULLSCREEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 336
    or-int/lit16 v4, v4, 0x200

    goto/16 :goto_1

    .line 337
    :cond_a
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->USEOC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 338
    or-int/lit16 v4, v4, 0x400

    goto/16 :goto_1

    .line 339
    :cond_b
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->USEATTACHMENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    or-int/lit16 v4, v4, 0x800

    goto/16 :goto_1

    .line 354
    :cond_c
    return-object v3
.end method

.method private isPossibleValue(Lcom/itextpdf/text/pdf/PdfName;[Lcom/itextpdf/text/pdf/PdfName;)Z
    .locals 2
    .parameter "value"
    .parameter "accepted"

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 191
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 195
    :goto_1
    return v1

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "catalog"

    .prologue
    .line 268
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 269
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 270
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SINGLEPAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 283
    :cond_0
    :goto_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 284
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 285
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USENONE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 298
    :cond_1
    :goto_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEWERPREFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 299
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 300
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEWERPREFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 302
    :cond_2
    return-void

    .line 271
    :cond_3
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 272
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ONECOLUMN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 273
    :cond_4
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 274
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TWOCOLUMNLEFT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 275
    :cond_5
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 276
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TWOCOLUMNRIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 277
    :cond_6
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 278
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TWOPAGELEFT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 279
    :cond_7
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGELAYOUT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TWOPAGERIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 286
    :cond_8
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 287
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USEOUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 288
    :cond_9
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 289
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USETHUMBS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 290
    :cond_a
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 291
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FULLSCREEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 292
    :cond_b
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 293
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USEOC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 294
    :cond_c
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USEATTACHMENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->getIndex(Lcom/itextpdf/text/pdf/PdfName;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfBoolean;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 215
    :pswitch_1
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->NONFULLSCREENPAGEMODE_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->isPossibleValue(Lcom/itextpdf/text/pdf/PdfName;[Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 221
    :pswitch_2
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->DIRECTION_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->isPossibleValue(Lcom/itextpdf/text/pdf/PdfName;[Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 230
    :pswitch_3
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->PAGE_BOUNDARIES:[Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->isPossibleValue(Lcom/itextpdf/text/pdf/PdfName;[Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 236
    :pswitch_4
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->PRINTSCALING_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->isPossibleValue(Lcom/itextpdf/text/pdf/PdfName;[Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 242
    :pswitch_5
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->DUPLEX_PREFERENCES:[Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->isPossibleValue(Lcom/itextpdf/text/pdf/PdfName;[Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 248
    :pswitch_6
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 253
    :pswitch_7
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfNumber;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getPageLayoutAndMode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    return v0
.end method

.method public getViewerPreferences()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public setViewerPreferences(I)V
    .locals 3
    .parameter "preferences"

    .prologue
    .line 135
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    .line 138
    const v0, 0xfff000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 139
    const v0, -0xfff001

    iget v1, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->pageLayoutAndMode:I

    .line 140
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HIDETOOLBAR:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 142
    :cond_0
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HIDEMENUBAR:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 144
    :cond_1
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HIDEWINDOWUI:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 146
    :cond_2
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FITWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 148
    :cond_3
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CENTERWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 150
    :cond_4
    const/high16 v0, 0x2

    and-int/2addr v0, p1

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DISPLAYDOCTITLE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 153
    :cond_5
    const/high16 v0, 0x4

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NONFULLSCREENPAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->USENONE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 162
    :cond_6
    :goto_0
    const/high16 v0, 0x40

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DIRECTION:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->L2R:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 167
    :cond_7
    :goto_1
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 168
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PRINTSCALING:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NONE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 170
    :cond_8
    return-void

    .line 155
    :cond_9
    const/high16 v0, 0x8

    and-int/2addr v0, p1

    if-eqz v0, :cond_a

    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NONFULLSCREENPAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->USEOUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 157
    :cond_a
    const/high16 v0, 0x10

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    .line 158
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NONFULLSCREENPAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->USETHUMBS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 159
    :cond_b
    const/high16 v0, 0x20

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    .line 160
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NONFULLSCREENPAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->USEOC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 164
    :cond_c
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->viewerPreferences:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DIRECTION:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->R2L:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1
.end method
