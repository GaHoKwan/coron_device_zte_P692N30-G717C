.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$BaiduInjector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration; = null

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field private static final MonoTAG:Ljava/lang/String; = "Monotype"

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SKIN_UNDEFINED:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public FlipFont:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public simSetLocale:Z

.field public skin:Ljava/lang/String;

.field public smallestScreenWidthDp:I

.field public themeChanged:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1213
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 576
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 577
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 583
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 584
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1229
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .parameter "screenLayout"

    .prologue
    .line 1388
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static getSkin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 768
    const-string/jumbo v1, "persist.sys.skin"

    const-string v2, "/system/framework/framework-res.apk"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static needNewResources(II)Z
    .locals 2
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 1087
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .parameter "curLayout"
    .parameter "longSizeDp"
    .parameter "shortSizeDp"

    .prologue
    .line 210
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    .line 213
    const/4 v3, 0x1

    .line 214
    .local v3, screenLayoutSize:I
    const/4 v2, 0x0

    .line 215
    .local v2, screenLayoutLong:Z
    const/4 v1, 0x0

    .line 250
    .local v1, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v2, :cond_0

    .line 251
    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    .line 254
    const/high16 v4, 0x1000

    or-int/2addr p0, v4

    .line 256
    :cond_1
    and-int/lit8 v0, p0, 0xf

    .line 257
    .local v0, curSize:I
    if-ge v3, v0, :cond_2

    .line 258
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    .line 260
    :cond_2
    return p0

    .line 218
    .end local v0           #curSize:I
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    .line 221
    const/4 v3, 0x4

    .line 233
    .restart local v3       #screenLayoutSize:I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    .line 234
    :cond_4
    const/4 v1, 0x1

    .line 240
    .restart local v1       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    .line 242
    const/4 v2, 0x1

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0

    .line 222
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    .line 225
    const/4 v3, 0x3

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 227
    .end local v3           #screenLayoutSize:I
    :cond_6
    const/4 v3, 0x2

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 236
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #screenLayoutCompatNeeded:Z
    goto :goto_2

    .line 244
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .parameter "curLayout"

    .prologue
    .line 195
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1233
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1234
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1235
    .local v1, b:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move v2, v3

    .line 1300
    :cond_0
    :goto_0
    return v2

    .line 1236
    :cond_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 1237
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mcc:I

    iget v6, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v5, v6

    .line 1238
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1239
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v5, v6

    .line 1240
    if-nez v2, :cond_0

    .line 1241
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_3

    .line 1242
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_5

    move v2, v4

    goto :goto_0

    .line 1243
    :cond_3
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_4

    move v2, v3

    .line 1244
    goto :goto_0

    .line 1246
    :cond_4
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1247
    if-nez v2, :cond_0

    .line 1248
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1249
    if-nez v2, :cond_0

    .line 1250
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1251
    if-nez v2, :cond_0

    .line 1253
    :cond_5
    iget v5, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v5, v6

    .line 1254
    if-nez v2, :cond_0

    .line 1255
    iget v5, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v5, v6

    .line 1256
    if-nez v2, :cond_0

    .line 1257
    iget v5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v5, v6

    .line 1258
    if-nez v2, :cond_0

    .line 1259
    iget v5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v5, v6

    .line 1260
    if-nez v2, :cond_0

    .line 1261
    iget v5, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v5, v6

    .line 1262
    if-nez v2, :cond_0

    .line 1263
    iget v5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v5, v6

    .line 1264
    if-nez v2, :cond_0

    .line 1265
    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v5, v6

    .line 1266
    if-nez v2, :cond_0

    .line 1267
    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v5, v6

    .line 1268
    if-nez v2, :cond_0

    .line 1269
    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v5, v6

    .line 1270
    if-nez v2, :cond_0

    .line 1271
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v2, v5, v6

    .line 1272
    if-nez v2, :cond_0

    .line 1273
    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v2, v5, v6

    .line 1274
    if-nez v2, :cond_0

    .line 1275
    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v2, v5, v6

    .line 1276
    if-nez v2, :cond_0

    .line 1277
    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v2, v5, v6

    .line 1280
    iget v5, p0, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v0, v5

    .line 1281
    iget v5, p1, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v1, v5

    .line 1282
    cmpg-float v5, v0, v1

    if-gez v5, :cond_6

    move v2, v3

    goto/16 :goto_0

    .line 1283
    :cond_6
    cmpl-float v5, v0, v1

    if-lez v5, :cond_7

    move v2, v4

    goto/16 :goto_0

    .line 1290
    :cond_7
    if-nez v2, :cond_0

    .line 1291
    iget-object v5, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 1292
    iget-object v3, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v2, v4

    goto/16 :goto_0

    .line 1293
    :cond_8
    iget-object v4, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v4, :cond_9

    move v2, v3

    .line 1294
    goto/16 :goto_0

    .line 1296
    :cond_9
    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p1, v2}, Landroid/content/res/Configuration$BaiduInjector;->compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v2

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 992
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 994
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 995
    or-int/lit8 v0, v0, 0x1

    .line 997
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 998
    or-int/lit8 v0, v0, 0x2

    .line 1000
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1002
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 1003
    or-int/lit16 v0, v0, 0x2000

    .line 1005
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_5

    .line 1007
    or-int/lit8 v0, v0, 0x8

    .line 1009
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_6

    .line 1011
    or-int/lit8 v0, v0, 0x10

    .line 1013
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_7

    .line 1015
    or-int/lit8 v0, v0, 0x20

    .line 1017
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_8

    .line 1019
    or-int/lit8 v0, v0, 0x20

    .line 1021
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_9

    .line 1023
    or-int/lit8 v0, v0, 0x40

    .line 1025
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_a

    .line 1027
    or-int/lit8 v0, v0, 0x20

    .line 1029
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_b

    .line 1031
    or-int/lit16 v0, v0, 0x80

    .line 1033
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 1037
    or-int/lit16 v0, v0, 0x100

    .line 1039
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_d

    .line 1041
    or-int/lit16 v0, v0, 0x200

    .line 1043
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_e

    .line 1045
    or-int/lit16 v0, v0, 0x400

    .line 1047
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_f

    .line 1049
    or-int/lit16 v0, v0, 0x400

    .line 1051
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_10

    .line 1053
    or-int/lit16 v0, v0, 0x800

    .line 1055
    :cond_10
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_11

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_11

    .line 1057
    or-int/lit16 v0, v0, 0x1000

    .line 1060
    :cond_11
    iget-object v1, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1061
    :cond_12
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 1066
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v1, :cond_14

    iget v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v1, v2, :cond_14

    .line 1067
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 1072
    :cond_14
    invoke-static {p0, p1, v0}, Landroid/content/res/Configuration$BaiduInjector;->multiTheme_dealThemeChange2(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1304
    if-nez p1, :cond_1

    move v0, v1

    .line 1306
    :cond_0
    :goto_0
    return v0

    .line 1305
    :cond_1
    if-eq p1, p0, :cond_0

    .line 1306
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 1311
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1314
    :goto_0
    return v0

    .line 1312
    :catch_0
    move-exception v0

    .line 1314
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 1367
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1318
    const/16 v0, 0x11

    .line 1319
    .local v0, result:I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1320
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v3

    .line 1321
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v3

    .line 1322
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1323
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v3

    .line 1324
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v3

    .line 1325
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v3

    .line 1326
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v3

    .line 1327
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v3

    .line 1328
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v3

    .line 1329
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v3

    .line 1330
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v3

    .line 1331
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v3

    .line 1332
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v3

    .line 1333
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v3

    .line 1334
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v3

    .line 1335
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v3

    .line 1336
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    add-int v0, v1, v2

    invoke-static {p0, v0}, Landroid/content/res/Configuration$BaiduInjector;->hashCode(Landroid/content/res/Configuration;I)I

    move-result v0

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 274
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 275
    .local v0, cur:I
    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1100
    if-nez p1, :cond_1

    move v1, v2

    .line 1120
    :cond_0
    :goto_0
    return v1

    .line 1104
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1109
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1114
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 1115
    .local v0, diff:I
    const/high16 v3, 0x1

    if-le v0, v3, :cond_2

    move v1, v2

    .line 1118
    goto :goto_0

    .line 1120
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 804
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1188
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 1382
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1383
    .local v0, layoutDirection:I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1385
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 1353
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1355
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1356
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 587
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 588
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 589
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 590
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget-boolean v0, p1, Landroid/content/res/Configuration;->simSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->setThemeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    iput-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-static {p0}, Landroid/content/res/Configuration$BaiduInjector;->setThemeChangedToDefault(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 620
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 626
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    .line 628
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    .line 634
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :goto_1
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 640
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 645
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .line 646
    .local v0, layoutDir:I
    sparse-switch v0, :sswitch_data_0

    .line 650
    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_4

    .line 654
    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_5

    .line 659
    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_6

    .line 664
    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_7

    .line 669
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 679
    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    .line 686
    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    .line 693
    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    .line 702
    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    .line 708
    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    .line 715
    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    .line 722
    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    .line 729
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    .line 735
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    .line 743
    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    .line 749
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_12
    const-string v2, " skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/Configuration$BaiduInjector;->appendToString(Landroid/content/res/Configuration;Ljava/lang/StringBuilder;)V

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0           #layoutDir:I
    :cond_1
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 637
    :cond_2
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 643
    :cond_3
    const-string v2, " ?locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 647
    .restart local v0       #layoutDir:I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 648
    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 649
    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 656
    :cond_4
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 661
    :cond_5
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 666
    :cond_6
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 671
    :cond_7
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 674
    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 675
    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 676
    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 677
    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 678
    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 683
    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 685
    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 690
    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 691
    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 692
    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 696
    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 698
    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 699
    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 700
    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 701
    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 705
    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 707
    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 711
    :pswitch_e
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 712
    :pswitch_f
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 713
    :pswitch_10
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 714
    :pswitch_11
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 718
    :pswitch_12
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 719
    :pswitch_13
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 720
    :pswitch_14
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 721
    :pswitch_15
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 725
    :pswitch_16
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 726
    :pswitch_17
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 727
    :pswitch_18
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 728
    :pswitch_19
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 732
    :pswitch_1a
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 733
    :pswitch_1b
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 734
    :pswitch_1c
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 738
    :pswitch_1d
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 739
    :pswitch_1e
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 740
    :pswitch_1f
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 741
    :pswitch_20
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 742
    :pswitch_21
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 746
    :pswitch_22
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 747
    :pswitch_23
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 748
    :pswitch_24
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 682
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 689
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 695
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 704
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    .line 710
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 717
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 724
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 731
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 737
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 745
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v3, 0x1

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 817
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 818
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 820
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 821
    or-int/lit8 v0, v0, 0x1

    .line 822
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 824
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 825
    or-int/lit8 v0, v0, 0x2

    .line 826
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 828
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 830
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 831
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1e

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    :goto_0
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 834
    or-int/lit16 v0, v0, 0x2000

    .line 837
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 839
    :cond_4
    iget-boolean v1, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    .line 841
    :cond_5
    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 842
    or-int/lit8 v0, v0, 0x4

    .line 845
    :cond_6
    iget-boolean v1, p1, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v1, :cond_7

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_8

    .line 846
    :cond_7
    iput-boolean v3, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    .line 847
    or-int/lit8 v0, v0, 0x4

    .line 850
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_9

    .line 852
    or-int/lit8 v0, v0, 0x8

    .line 853
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 855
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_a

    .line 857
    or-int/lit8 v0, v0, 0x10

    .line 858
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 860
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_b

    .line 862
    or-int/lit8 v0, v0, 0x20

    .line 863
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 865
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_c

    .line 867
    or-int/lit8 v0, v0, 0x20

    .line 868
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 870
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_d

    .line 872
    or-int/lit8 v0, v0, 0x40

    .line 873
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 875
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_e

    .line 877
    or-int/lit8 v0, v0, 0x20

    .line 878
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 880
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_f

    .line 882
    or-int/lit16 v0, v0, 0x80

    .line 883
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 885
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_10

    .line 889
    or-int/lit16 v0, v0, 0x100

    .line 891
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    if-nez v1, :cond_1f

    .line 892
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 897
    :cond_10
    :goto_1
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_12

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_12

    .line 899
    or-int/lit16 v0, v0, 0x200

    .line 900
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_11

    .line 901
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 904
    :cond_11
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_12

    .line 905
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 909
    :cond_12
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_13

    .line 911
    or-int/lit16 v0, v0, 0x400

    .line 912
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 914
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_14

    .line 916
    or-int/lit16 v0, v0, 0x400

    .line 917
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 919
    :cond_14
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_15

    .line 920
    or-int/lit16 v0, v0, 0x400

    .line 921
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 923
    :cond_15
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_16

    .line 924
    or-int/lit16 v0, v0, 0x1000

    .line 925
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 927
    :cond_16
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v1, :cond_17

    .line 928
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 930
    :cond_17
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v1, :cond_18

    .line 931
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 933
    :cond_18
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v1, :cond_19

    .line 934
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 936
    :cond_19
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_1a

    .line 937
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 941
    :cond_1a
    invoke-static {p0, p1, v0}, Landroid/content/res/Configuration$BaiduInjector;->multiTheme_dealThemeChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 942
    :cond_1b
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 943
    iget-object v1, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 948
    :cond_1c
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v1, :cond_1d

    iget v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v1, v2, :cond_1d

    .line 949
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 950
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 955
    :cond_1d
    return v0

    .line 831
    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 894
    :cond_1f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1145
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 1169
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    return-void
.end method
