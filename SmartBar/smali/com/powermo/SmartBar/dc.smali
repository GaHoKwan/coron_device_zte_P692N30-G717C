.class public final Lcom/powermo/SmartBar/dc;
.super Ljava/lang/Object;


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:F

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:I

.field public static final w:I

.field public static x:I

.field public static y:Z

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "com.android.internal.R$style"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Theme_Panel_Volume"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sput v0, Lcom/powermo/SmartBar/dc;->h:I

    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    sput v0, Lcom/powermo/SmartBar/dc;->v:I

    :try_start_2
    const-string v0, "com.android.internal.R$bool"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "config_showNavigationBar"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    :goto_2
    sput v0, Lcom/powermo/SmartBar/dc;->w:I

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :try_start_3
    const-string v0, "TYPE_PRESENT_WINDOW"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    :goto_3
    sput v0, Lcom/powermo/SmartBar/dc;->i:I

    :try_start_4
    const-string v0, "TYPE_SMART_BAR_WINDOW"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    :goto_4
    sput v0, Lcom/powermo/SmartBar/dc;->j:I

    :try_start_5
    const-string v0, "TYPE_IME_DOCK_WINDOW"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    :goto_5
    sput v0, Lcom/powermo/SmartBar/dc;->k:I

    :try_start_6
    const-string v0, "TYPE_CONTROL_PANEL_WINDOW"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    :goto_6
    sput v0, Lcom/powermo/SmartBar/dc;->l:I

    :try_start_7
    const-string v0, "TYPE_DISPLAY_THUMBNAIL"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v0

    :goto_7
    sput v0, Lcom/powermo/SmartBar/dc;->m:I

    const-string v0, "ss_s_btn_enabled"

    sput-object v0, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    const-string v0, "ss_app_ctrl_list_name"

    sput-object v0, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    const-string v0, "android.intent.extra.init_screen"

    sput-object v0, Lcom/powermo/SmartBar/dc;->p:Ljava/lang/String;

    const-string v0, "android.intent.extra.force_fullscreen"

    sput-object v0, Lcom/powermo/SmartBar/dc;->q:Ljava/lang/String;

    const-string v0, "android.intent.category.IDLER"

    sput-object v0, Lcom/powermo/SmartBar/dc;->r:Ljava/lang/String;

    const-string v0, "android.intent.category.PAUSECOVER"

    sput-object v0, Lcom/powermo/SmartBar/dc;->s:Ljava/lang/String;

    const-string v0, "android.intent.category.CONFLICTCOVER"

    sput-object v0, Lcom/powermo/SmartBar/dc;->t:Ljava/lang/String;

    const-string v0, "android.intent.category.COVER"

    sput-object v0, Lcom/powermo/SmartBar/dc;->u:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/powermo/SmartBar/dc;->a:I

    sput v4, Lcom/powermo/SmartBar/dc;->b:I

    const/16 v0, 0x53

    sput v0, Lcom/powermo/SmartBar/dc;->c:I

    sput-boolean v4, Lcom/powermo/SmartBar/dc;->z:Z

    sput v3, Lcom/powermo/SmartBar/dc;->x:I

    sput-boolean v4, Lcom/powermo/SmartBar/dc;->y:Z

    sput-boolean v3, Lcom/powermo/SmartBar/dc;->d:Z

    sput-boolean v3, Lcom/powermo/SmartBar/dc;->e:Z

    sput-boolean v3, Lcom/powermo/SmartBar/dc;->f:Z

    sput v3, Lcom/powermo/SmartBar/dc;->A:I

    sput v3, Lcom/powermo/SmartBar/dc;->g:I

    const-string v0, "POWERMOREF"

    sput-object v0, Lcom/powermo/SmartBar/dc;->F:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/powermo/SmartBar/dc;->G:Ljava/lang/String;

    const/high16 v0, 0x4000

    sput v0, Lcom/powermo/SmartBar/dc;->E:F

    const/high16 v0, 0x4200

    sget v1, Lcom/powermo/SmartBar/dc;->E:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/powermo/SmartBar/dc;->B:I

    const/high16 v0, 0x4180

    sget v1, Lcom/powermo/SmartBar/dc;->E:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/powermo/SmartBar/dc;->C:I

    const/high16 v0, 0x4100

    sget v1, Lcom/powermo/SmartBar/dc;->E:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/powermo/SmartBar/dc;->D:I

    const-string v0, "hack-mode"

    sput-object v0, Lcom/powermo/SmartBar/dc;->H:Ljava/lang/String;

    const-string v0, "hack-mode"

    sput-object v0, Lcom/powermo/SmartBar/dc;->I:Ljava/lang/String;

    const-string v0, "com.powermo.smartshow.hack"

    sput-object v0, Lcom/powermo/SmartBar/dc;->J:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const v0, 0x10302fe

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const v0, 0x105000c

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const v0, 0x111003e

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const/16 v0, 0x834

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const/16 v0, 0x835

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const/16 v0, 0x836

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const/16 v0, 0x837

    goto/16 :goto_6

    :catch_7
    move-exception v0

    const/16 v0, 0x838

    goto/16 :goto_7
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smartbar-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/powermo/SmartBar/dc;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/powermo/SmartBar/ad;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "global.product"

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object v0, Lcom/powermo/SmartBar/dc;->F:Ljava/lang/String;

    :cond_2
    const-string v0, "style-mle-nosort"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/SmartBar/dc;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/powermo/SmartBar/dc;->d:Z

    const-string v0, "style-cp-nohome"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/SmartBar/dc;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/powermo/SmartBar/dc;->e:Z

    const-string v0, "style-cp-nomove"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/SmartBar/dc;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/powermo/SmartBar/dc;->f:Z

    const-string v0, "config-with-shopm"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/SmartBar/dc;->z:Z

    invoke-virtual {p1, v0, v1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/powermo/SmartBar/dc;->z:Z

    const-string v0, "style-entry-key"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "menu"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sput v3, Lcom/powermo/SmartBar/dc;->A:I

    :cond_3
    :goto_1
    const-string v0, "style-cp-alignment"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "edge"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sput v4, Lcom/powermo/SmartBar/dc;->g:I

    :cond_4
    :goto_2
    const-string v0, "style-shopm-bottom-bar-mode"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "auto"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sput v4, Lcom/powermo/SmartBar/dc;->x:I

    :cond_5
    :goto_3
    const-string v0, "style-shopm-bottom-bar-auto-hide"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/SmartBar/dc;->y:Z

    invoke-virtual {p1, v0, v1}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/powermo/SmartBar/dc;->y:Z

    const-string v0, "style-ml-dock-mode"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "corner"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "coner"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_6
    const/16 v0, 0x50

    sput v0, Lcom/powermo/SmartBar/dc;->a:I

    sput v3, Lcom/powermo/SmartBar/dc;->b:I

    const/16 v0, 0x53

    sput v0, Lcom/powermo/SmartBar/dc;->c:I

    :cond_7
    :goto_4
    const-string v0, "help-entry"

    invoke-static {v0}, Lcom/powermo/SmartBar/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    sput-object v0, Lcom/powermo/SmartBar/dc;->G:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/powermo/SmartBar/dc;->E:F

    const-string v0, "global.split-bar-size"

    invoke-virtual {p1, v0, v5}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/powermo/SmartBar/dc;->E:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    const-string v0, "global.split-bar-overlap-size"

    invoke-virtual {p1, v0, v5}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/powermo/SmartBar/dc;->E:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-gtz v0, :cond_9

    div-int/lit8 v0, v1, 0x2

    sub-int/2addr v1, v0

    :cond_9
    add-int v2, v1, v0

    sput v2, Lcom/powermo/SmartBar/dc;->B:I

    sput v1, Lcom/powermo/SmartBar/dc;->C:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/powermo/SmartBar/dc;->D:I

    const-string v0, "global.defaultlist"

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    sput-object v0, Lcom/powermo/SmartBar/dc;->H:Ljava/lang/String;

    :cond_a
    const-string v0, "global.aclslist"

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    sput-object v0, Lcom/powermo/SmartBar/dc;->I:Ljava/lang/String;

    :cond_b
    const-string v0, "global.acls-package-name"

    invoke-virtual {p1, v0}, Lcom/powermo/SmartBar/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/powermo/SmartBar/dc;->J:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v1, "back"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput v4, Lcom/powermo/SmartBar/dc;->A:I

    goto/16 :goto_1

    :cond_d
    const-string v1, "center"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput v3, Lcom/powermo/SmartBar/dc;->g:I

    goto/16 :goto_2

    :cond_e
    const-string v1, "force-show"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sput v3, Lcom/powermo/SmartBar/dc;->x:I

    goto/16 :goto_3

    :cond_f
    const-string v1, "force-hide"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    sput v0, Lcom/powermo/SmartBar/dc;->x:I

    goto/16 :goto_3

    :cond_10
    const-string v1, "middle"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput v5, Lcom/powermo/SmartBar/dc;->a:I

    sput v3, Lcom/powermo/SmartBar/dc;->b:I

    const/16 v0, 0x51

    sput v0, Lcom/powermo/SmartBar/dc;->c:I

    goto/16 :goto_4
.end method
