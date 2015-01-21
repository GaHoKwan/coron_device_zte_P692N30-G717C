.class public Lcom/adchina/android/ads/AdManager;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:I

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:Z

.field private static G:Z

.field private static H:Z

.field private static I:I

.field private static J:I

.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:Z

.field public static e:I

.field public static f:Landroid/location/LocationManager;

.field public static g:Z

.field public static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Ljava/lang/StringBuffer;

.field private static m:Ljava/lang/StringBuffer;

.field private static n:Ljava/lang/StringBuffer;

.field private static o:Ljava/lang/StringBuffer;

.field private static p:Ljava/lang/StringBuffer;

.field private static q:Ljava/lang/StringBuffer;

.field private static r:Ljava/lang/StringBuffer;

.field private static s:Ljava/lang/StringBuffer;

.field private static t:Lcom/adchina/android/ads/o;

.field private static u:Ljava/lang/StringBuffer;

.field private static v:Ljava/lang/StringBuffer;

.field private static w:Ljava/lang/StringBuffer;

.field private static x:Z

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x1e

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/adchina/android/ads/AdManager;->i:Z

    sput-boolean v2, Lcom/adchina/android/ads/AdManager;->j:Z

    sput-boolean v2, Lcom/adchina/android/ads/AdManager;->k:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->l:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->m:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->n:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->o:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->p:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->q:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->r:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->s:Ljava/lang/StringBuffer;

    sget-object v0, Lcom/adchina/android/ads/o;->a:Lcom/adchina/android/ads/o;

    sput-object v0, Lcom/adchina/android/ads/AdManager;->t:Lcom/adchina/android/ads/o;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->u:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->v:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/AdManager;->w:Ljava/lang/StringBuffer;

    sput-boolean v3, Lcom/adchina/android/ads/AdManager;->x:Z

    sput v2, Lcom/adchina/android/ads/AdManager;->y:I

    sput v2, Lcom/adchina/android/ads/AdManager;->z:I

    sput v2, Lcom/adchina/android/ads/AdManager;->A:I

    const/high16 v0, -0x100

    sput v0, Lcom/adchina/android/ads/AdManager;->B:I

    const v0, 0xffffff

    sput v0, Lcom/adchina/android/ads/AdManager;->C:I

    sput v2, Lcom/adchina/android/ads/AdManager;->D:I

    sput v2, Lcom/adchina/android/ads/AdManager;->E:I

    const/4 v0, -0x1

    sput v0, Lcom/adchina/android/ads/AdManager;->a:I

    const/16 v0, 0x14

    sput v0, Lcom/adchina/android/ads/AdManager;->b:I

    sput v4, Lcom/adchina/android/ads/AdManager;->c:I

    sput-boolean v2, Lcom/adchina/android/ads/AdManager;->d:Z

    sput v4, Lcom/adchina/android/ads/AdManager;->e:I

    sput-boolean v3, Lcom/adchina/android/ads/AdManager;->F:Z

    sput-boolean v2, Lcom/adchina/android/ads/AdManager;->g:Z

    sput-boolean v3, Lcom/adchina/android/ads/AdManager;->G:Z

    sput-boolean v3, Lcom/adchina/android/ads/AdManager;->H:Z

    const-string v0, ""

    sput-object v0, Lcom/adchina/android/ads/AdManager;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdWindowBackgroundColor()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->z:I

    return v0
.end method

.method public static getAdWindowBackgroundOpacity()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->A:I

    return v0
.end method

.method public static getAdspaceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAnimations()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->y:I

    return v0
.end method

.method public static getAppName()Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->v:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static getBirthday()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->r:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloseImg()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->I:I

    return v0
.end method

.method public static getContentTargeting()Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->w:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->i:Z

    return v0
.end method

.method public static getDefaultCloseImgPath()Ljava/lang/String;
    .locals 1

    const-string v0, "adchina_close.png"

    return-object v0
.end method

.method public static getDefaultLoadingGifPath()Ljava/lang/String;
    .locals 1

    const-string v0, "adchina_loading.gif"

    return-object v0
.end method

.method public static getFullScreenAdspaceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullScreenTimerBgColor()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->C:I

    return v0
.end method

.method public static getFullScreenTimerTextColor()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->B:I

    return v0
.end method

.method public static getGender()Lcom/adchina/android/ads/o;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->t:Lcom/adchina/android/ads/o;

    return-object v0
.end method

.method public static getLoadingImg()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->J:I

    return v0
.end method

.method public static getLocationManager()Landroid/location/LocationManager;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->f:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static getLogMode()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->j:Z

    return v0
.end method

.method public static getPhoneUA()Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->u:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRefershinterval()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->e:I

    return v0
.end method

.method public static getResolution()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShrinkFSAdspaceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephoneNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoAdspaceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoHeight()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->E:I

    return v0
.end method

.method public static getVideoWidth()I
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->D:I

    return v0
.end method

.method public static isAnimation()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->G:Z

    return v0
.end method

.method public static isEnableLbs()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->H:Z

    return v0
.end method

.method public static isRelateScreenRotate()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->g:Z

    return v0
.end method

.method public static isShowFullScreenTimer()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->x:Z

    return v0
.end method

.method public static isUseLocalInterval()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->d:Z

    return v0
.end method

.method public static ismLogShow()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->k:Z

    return v0
.end method

.method public static ismVideoPlayer()Z
    .locals 1

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->F:Z

    return v0
.end method

.method public static setAdWindowBackgroundColor(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->z:I

    return-void
.end method

.method public static setAdWindowBackgroundOpacity(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->A:I

    return-void
.end method

.method public static setAdspaceId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->l:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setAnimation(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->G:Z

    return-void
.end method

.method public static setAnimations(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->y:I

    return-void
.end method

.method public static setAppName(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->v:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setBirthday(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->r:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->r:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setCloseImg(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->I:I

    return-void
.end method

.method public static setContentTargeting(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->w:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->w:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->i:Z

    return-void
.end method

.method public static setEnableLbs(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->H:Z

    return-void
.end method

.method public static setFullScreenAdspaceId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->o:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setFullScreenTimerBgColor(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->C:I

    return-void
.end method

.method public static setFullScreenTimerTextColor(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->B:I

    return-void
.end method

.method public static setLoadingImg(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->J:I

    return-void
.end method

.method public static setLocationManager(Landroid/location/LocationManager;)V
    .locals 0

    sput-object p0, Lcom/adchina/android/ads/AdManager;->f:Landroid/location/LocationManager;

    return-void
.end method

.method public static setLogMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->j:Z

    return-void
.end method

.method protected static setPhoneUA(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/AdManager;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/AdManager;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->s:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setRefershinterval(I)V
    .locals 1

    sget v0, Lcom/adchina/android/ads/AdManager;->b:I

    if-ge p0, v0, :cond_0

    sget v0, Lcom/adchina/android/ads/AdManager;->a:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adchina/android/ads/AdManager;->d:Z

    sput p0, Lcom/adchina/android/ads/AdManager;->e:I

    :cond_1
    return-void
.end method

.method public static setRelateScreenRotate(Landroid/content/Context;Z)V
    .locals 1

    sput-boolean p1, Lcom/adchina/android/ads/AdManager;->g:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/AdManager;->setResolution(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static setResolution(Landroid/util/DisplayMetrics;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "x"

    aput-object v1, v0, v3

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/adchina/android/ads/AdManager;->setResolution(Ljava/lang/String;)V

    return-void

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "x"

    aput-object v1, v0, v3

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setResolution(Landroid/view/Display;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/AdManager;->setResolution(Ljava/lang/String;)V

    return-void
.end method

.method public static setResolution(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->q:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setShowFullScreenTimer(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->x:Z

    return-void
.end method

.method public static setShrinkFSAdspaceId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->m:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setTelephoneNumber(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->p:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setUseLocalInterval(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->d:Z

    return-void
.end method

.method public static setVideoAdspaceId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/AdManager;->n:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/AdManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static setVideoHeight(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->E:I

    return-void
.end method

.method public static setVideoWidth(I)V
    .locals 0

    sput p0, Lcom/adchina/android/ads/AdManager;->D:I

    return-void
.end method

.method public static setmLogShow(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->k:Z

    return-void
.end method

.method public static setmVideoPlayer(Z)V
    .locals 0

    sput-boolean p0, Lcom/adchina/android/ads/AdManager;->F:Z

    return-void
.end method
