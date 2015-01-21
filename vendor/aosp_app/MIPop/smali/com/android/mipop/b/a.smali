.class public Lcom/android/mipop/b/a;
.super Ljava/lang/Object;


# static fields
.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field private static J:I

.field private static K:F

.field private static L:F

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:Ljava/lang/String;

.field public static Q:Ljava/lang/String;

.field public static R:Ljava/lang/String;

.field public static S:Ljava/lang/String;

.field public static T:Ljava/lang/String;

.field public static U:Ljava/lang/String;

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I

.field public static aa:I

.field public static ab:I

.field public static ac:I

.field public static ad:I

.field public static ae:I

.field public static af:I

.field public static ag:I

.field public static ah:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v2, 0xa

    const/4 v1, 0x2

    const/4 v0, 0x6

    sput v0, Lcom/android/mipop/b/a;->F:I

    const/4 v0, 0x5

    sput v0, Lcom/android/mipop/b/a;->G:I

    sput v1, Lcom/android/mipop/b/a;->H:I

    sput v2, Lcom/android/mipop/b/a;->I:I

    sput v1, Lcom/android/mipop/b/a;->J:I

    const v0, 0x3f34fdf4

    sput v0, Lcom/android/mipop/b/a;->K:F

    const/high16 v0, 0x3fc0

    sput v0, Lcom/android/mipop/b/a;->L:F

    const/16 v0, 0x1e0

    sput v0, Lcom/android/mipop/b/a;->M:I

    const/16 v0, 0x348

    sput v0, Lcom/android/mipop/b/a;->N:I

    sput v2, Lcom/android/mipop/b/a;->O:I

    const-string v0, "widgetMipopStatusChanged"

    sput-object v0, Lcom/android/mipop/b/a;->P:Ljava/lang/String;

    const-string v0, "widgetFullStatusChanged"

    sput-object v0, Lcom/android/mipop/b/a;->Q:Ljava/lang/String;

    const-string v0, "globalActionMipopChanged"

    sput-object v0, Lcom/android/mipop/b/a;->R:Ljava/lang/String;

    const-string v0, "statusbarMipopStateChanged"

    sput-object v0, Lcom/android/mipop/b/a;->S:Ljava/lang/String;

    const-string v0, "statusbarFullscreenChanged"

    sput-object v0, Lcom/android/mipop/b/a;->T:Ljava/lang/String;

    const-string v0, "com.android.mipop_preferences"

    sput-object v0, Lcom/android/mipop/b/a;->U:Ljava/lang/String;

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->F:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->V:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->H:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->W:I

    sget v0, Lcom/android/mipop/b/a;->V:I

    sget v1, Lcom/android/mipop/b/a;->G:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->X:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/mipop/b/a;->L:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/b/a;->Y:I

    sget v0, Lcom/android/mipop/b/a;->Y:I

    sput v0, Lcom/android/mipop/b/a;->Z:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->Y:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->aa:I

    sget v0, Lcom/android/mipop/b/a;->V:I

    sget v1, Lcom/android/mipop/b/a;->I:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ab:I

    const-wide v0, 0x3ff69fbe76c8b439L

    sget v2, Lcom/android/mipop/b/a;->V:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Lcom/android/mipop/b/a;->ab:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ac:I

    sget v0, Lcom/android/mipop/b/a;->V:I

    sget v1, Lcom/android/mipop/b/a;->J:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ad:I

    sget v0, Lcom/android/mipop/b/a;->K:F

    sget v1, Lcom/android/mipop/b/a;->V:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/b/a;->ae:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->af:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ae:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ag:I

    sget v0, Lcom/android/mipop/b/a;->N:I

    sget v1, Lcom/android/mipop/b/a;->O:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->V:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ah:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/android/mipop/b/a;->M:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/android/mipop/b/a;->N:I

    invoke-static {p0}, Lcom/android/mipop/b/a;->b(Landroid/content/Context;)V

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->N:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget v1, Lcom/android/mipop/b/a;->F:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->V:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->H:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->W:I

    sget v0, Lcom/android/mipop/b/a;->V:I

    sget v1, Lcom/android/mipop/b/a;->G:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->X:I

    sget v0, Lcom/android/mipop/b/a;->V:I

    sget v1, Lcom/android/mipop/b/a;->I:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ab:I

    const-wide v0, 0x3ff69fbe76c8b439L

    sget v2, Lcom/android/mipop/b/a;->V:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Lcom/android/mipop/b/a;->ab:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ac:I

    sget v0, Lcom/android/mipop/b/a;->V:I

    sget v1, Lcom/android/mipop/b/a;->J:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ad:I

    sget v0, Lcom/android/mipop/b/a;->K:F

    sget v1, Lcom/android/mipop/b/a;->V:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/b/a;->ae:I

    sget v0, Lcom/android/mipop/b/a;->N:I

    sget v1, Lcom/android/mipop/b/a;->O:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ah:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->af:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ae:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->ag:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/mipop/b/a;->L:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/b/a;->Y:I

    sget v0, Lcom/android/mipop/b/a;->Y:I

    sput v0, Lcom/android/mipop/b/a;->Z:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->Y:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/b/a;->aa:I

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mipop/b/a;->O:I

    const-string v0, "BAR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sbar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/b/a;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BAR"

    const-string v2, "get status bar height fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
