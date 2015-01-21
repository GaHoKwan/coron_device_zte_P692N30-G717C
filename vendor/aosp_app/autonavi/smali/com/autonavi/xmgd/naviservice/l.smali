.class public Lcom/autonavi/xmgd/naviservice/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/naviservice/d;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static w:Lcom/autonavi/xmgd/naviservice/l;


# instance fields
.field private p:Landroid/content/SharedPreferences;

.field private t:[[I

.field private u:Z

.field private v:Z

.field private x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->a:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->r:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->b:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->c:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->d:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->e:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->f:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->g:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->h:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->i:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->j:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->s:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->k:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->l:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->m:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->n:I

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/autonavi/xmgd/naviservice/l;->q:I

    sput v0, Lcom/autonavi/xmgd/naviservice/l;->o:I

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->o:I

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/naviservice/l;->u:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/naviservice/l;->v:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Config;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->o:I

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/naviservice/l;->u:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/naviservice/l;->v:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->a()Lcom/autonavi/xmgd/naviservice/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/a;->a(Lcom/autonavi/xmgd/naviservice/d;)V

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/naviservice/l;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    return-object v0
.end method

.method static a(Lcom/autonavi/xm/navigation/engine/GDBL_Config;)Lcom/autonavi/xmgd/naviservice/l;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/l;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/naviservice/l;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Config;)V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->a()Lcom/autonavi/xmgd/naviservice/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/a;->a(Lcom/autonavi/xmgd/naviservice/d;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->b()V

    sput-object v1, Lcom/autonavi/xmgd/naviservice/l;->w:Lcom/autonavi/xmgd/naviservice/l;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget v2, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v3, v3, v0

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v4

    iget-object v4, v4, Lcom/autonavi/xmgd/application/Resource;->mPreferenceDefault:[I

    aget v4, v4, v0

    aput v4, v3, v6

    aput v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.autonavi.xmgd.navigator.tob"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->p:Landroid/content/SharedPreferences;

    move v0, v1

    :goto_1
    sget v2, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/l;->p:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j()V
    .locals 7

    const/16 v6, 0x510

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DISABLE_ECOMPASS:Lcom/autonavi/xm/navigation/server/GParam;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_TMC:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_UPDATE_TMC_INTERVAL:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_TMC_SHOW_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->m:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_FONT_SIZE:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->a:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_DENSITY:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->r:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->l:I

    aget-object v0, v0, v1

    aget v0, v0, v4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_CONTENT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_GUIDEPOST:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutBoolean(Lcom/autonavi/xm/navigation/server/GParam;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_PASSROUTE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutBoolean(Lcom/autonavi/xm/navigation/server/GParam;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_ZOOM_VIEW:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutBoolean(Lcom/autonavi/xm/navigation/server/GParam;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_DAYNIGHT_MODE:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->b:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DAY_TO_NIGHT_TIME:Lcom/autonavi/xm/navigation/server/GParam;

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_NIGHT_TO_DAY_TIME:Lcom/autonavi/xm/navigation/server/GParam;

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DAY_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->h:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_NIGHT_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->h:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_SAFETY_INFORMATION:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->j:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DEMO_SPEED:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->c:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_PROMPT_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->f:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->g:I

    aget-object v0, v0, v1

    aget v0, v0, v4

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/mobilebox/tts/g;->a(II)I

    :goto_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobilebox/tts/g;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_ROUTE_FOOTPOINT_STYLE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/l;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->l:I

    aget-object v0, v0, v1

    aget v0, v0, v4

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_NIGHT_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->h:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DAY_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->h:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v6, v1}, Lcom/mobilebox/tts/g;->a(II)I

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetInt(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_DAYNIGHT_MODE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/m;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/m;->onNaviDayNightChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;[I)V
    .locals 11

    const v10, 0x7f09004a

    const/high16 v9, 0x4000

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_H:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/l;->u:Z

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lcom/autonavi/xmgd/naviservice/l;->u:Z

    new-instance v0, Lcom/autonavi/xm/navigation/server/GRect;

    aget v1, p2, v7

    add-int/lit8 v1, v1, -0x1

    aget v2, p2, v8

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v7, v7, v1, v2}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_H_MAP_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    move-result v2

    new-instance v3, Lcom/autonavi/xm/navigation/server/GRect;

    aget v4, p2, v7

    div-int/lit8 v4, v4, 0x2

    add-float/2addr v1, v2

    float-to-int v1, v1

    aget v5, p2, v7

    add-int/lit8 v5, v5, -0x1

    aget v6, p2, v8

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_H_ZOOM_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v4, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_H_ZOOM_VIEW_REAL_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v4, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_H_ZOOM_VIEW_BITMAP_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v4, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GRect;

    aget v3, p2, v7

    add-int/lit8 v3, v3, -0x1

    aget v4, p2, v8

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v7, v7, v3, v4}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v4, Lcom/autonavi/xm/navigation/server/GRect;

    mul-float/2addr v0, v9

    add-float/2addr v0, v2

    float-to-int v0, v0

    aget v2, p2, v7

    int-to-float v2, v2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aget v3, p2, v8

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v4, v7, v0, v2, v3}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_H_OVERVIEW_BKGND_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_H_OVERVIEW_FRGND_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_V:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/l;->v:Z

    if-nez v0, :cond_0

    iput-boolean v8, p0, Lcom/autonavi/xmgd/naviservice/l;->v:Z

    new-instance v0, Lcom/autonavi/xm/navigation/server/GRect;

    aget v1, p2, v7

    add-int/lit8 v1, v1, -0x1

    aget v2, p2, v8

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v7, v7, v1, v2}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_V_MAP_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    move-result v2

    new-array v3, v8, [Lcom/autonavi/xm/navigation/server/GRect;

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v5, Lcom/autonavi/xm/navigation/server/GParam;->G_V_ZOOM_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v4, v5, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v4, Lcom/autonavi/xm/navigation/server/GRect;

    add-float/2addr v1, v2

    float-to-int v1, v1

    aget v5, p2, v7

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v3, v7

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GRect;->bottom:I

    invoke-direct {v4, v7, v1, v5, v3}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_V_ZOOM_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_V_ZOOM_VIEW_REAL_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_V_ZOOM_VIEW_BITMAP_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GRect;

    aget v3, p2, v7

    add-int/lit8 v3, v3, -0x1

    aget v4, p2, v8

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v7, v7, v3, v4}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v5, Lcom/autonavi/xm/navigation/server/GRect;

    add-float/2addr v2, v3

    mul-float/2addr v0, v9

    add-float/2addr v0, v2

    float-to-int v0, v0

    aget v2, p2, v7

    add-int/lit8 v2, v2, -0x1

    aget v3, p2, v8

    int-to-float v3, v3

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v5, v7, v0, v2, v3}, Lcom/autonavi/xm/navigation/server/GRect;-><init>(IIII)V

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_V_OVERVIEW_BKGND_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_V_OVERVIEW_FRGND_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/m;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 5

    const/16 v4, 0x500

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-le p1, v0, :cond_14

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-ge p1, v0, :cond_14

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    if-eq v0, p2, :cond_13

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->a:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_FONT_SIZE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/l;->d()V

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/m;

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    invoke-interface {v0, p1, v4, p2}, Lcom/autonavi/xmgd/naviservice/m;->onNaviSettingChanged(III)V

    sget v4, Lcom/autonavi/xmgd/naviservice/l;->b:I

    if-ne p1, v4, :cond_1

    sget-object v4, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v4}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v4

    if-ne p2, v4, :cond_10

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->c()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/naviservice/m;->onNaviDayNightChanged(I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->r:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_DENSITY:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->b:I

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->c()I

    move-result v0

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_DAYNIGHT_MODE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v3, v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_DAYNIGHT_MODE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_5
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->c:I

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_DEMO_SPEED:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_6
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->d:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->e:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->f:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_PROMPT_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_7
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->g:I

    if-ne p1, v0, :cond_9

    if-nez p2, :cond_8

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v4, v3}, Lcom/mobilebox/tts/g;->a(II)I

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {v0, v4, v3}, Lcom/mobilebox/tts/g;->a(II)I

    goto/16 :goto_0

    :cond_9
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->h:I

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/l;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_DAY_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_NIGHT_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_NIGHT_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_DAY_PALETTE_INDEX:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_b
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->i:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->j:I

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_SAFETY_INFORMATION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_c
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->s:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->k:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->l:I

    if-ne p1, v0, :cond_e

    if-ne p2, v1, :cond_d

    const/4 v0, 0x2

    :goto_2
    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_CONTENT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v3, v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_d
    move v0, p2

    goto :goto_2

    :cond_e
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->m:I

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_TMC_SHOW_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v3, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_f
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->n:I

    goto/16 :goto_0

    :cond_10
    sget-object v4, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_DAY:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v4}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v4

    if-ne p2, v4, :cond_11

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/m;->onNaviDayNightChanged(I)V

    goto/16 :goto_1

    :cond_11
    sget-object v4, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_NIGHT:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v4}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v4

    if-ne p2, v4, :cond_1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/m;->onNaviDayNightChanged(I)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v0, v0, p1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_3
    return v0

    :cond_13
    move v0, v1

    goto :goto_3

    :cond_14
    move v0, v2

    goto :goto_3
.end method

.method public b(I)I
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    :cond_0
    return v0
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/m;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)I
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v0, v0, v1

    :cond_0
    return v0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/l;->i()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/l;->j()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_SaveUserConfig()Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget v2, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->t:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Lcom/autonavi/xmgd/naviservice/l;->b:I

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_DAY:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_NIGHT:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->c()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public g()I
    .locals 2

    const/16 v0, 0x50

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x3c

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public h()Lcom/autonavi/xm/navigation/server/GRect;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_DISPLAY_ORIENTATION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetInt(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget v1, v1, v4

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_H:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    if-ne v1, v2, :cond_2

    new-array v1, v5, [Lcom/autonavi/xm/navigation/server/GRect;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_H_ZOOM_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v4

    goto :goto_0

    :cond_2
    new-array v1, v5, [Lcom/autonavi/xm/navigation/server/GRect;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/l;->x:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_V_ZOOM_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v4

    goto :goto_0
.end method
