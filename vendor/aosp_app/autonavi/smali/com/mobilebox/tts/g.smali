.class public final Lcom/mobilebox/tts/g;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mobilebox/tts/g;

.field private static c:Lcom/mobilebox/tts/h;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    sput-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3, p4}, Lcom/mobilebox/tts/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/tts/b;

    move-result-object v0

    sput-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    return-void
.end method

.method public static declared-synchronized a()Lcom/mobilebox/tts/g;
    .locals 3

    const-class v1, Lcom/mobilebox/tts/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobilebox/tts/g;

    invoke-direct {v0}, Lcom/mobilebox/tts/g;-><init>()V

    sput-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    :cond_0
    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v2, "[TtsService] getService() tts==null"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/tts/g;
    .locals 3

    const-class v1, Lcom/mobilebox/tts/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobilebox/tts/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobilebox/tts/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    :cond_0
    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v2, "[TtsService] getService(...) tts==null"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    invoke-interface {v0}, Lcom/mobilebox/tts/h;->a()I

    :cond_0
    sput-object v1, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    sput-object v1, Lcom/mobilebox/tts/g;->b:Lcom/mobilebox/tts/g;

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/mobilebox/tts/g;->a:I

    invoke-static {p1, p2}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_SetParam(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)V
    .locals 3

    const/16 v2, 0x500

    const/16 v1, 0x100

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_SetParam(II)I

    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_SetParam(II)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_SetParam(II)I

    iget v0, p0, Lcom/mobilebox/tts/g;->a:I

    invoke-static {v2, v0}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_SetParam(II)I

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    invoke-interface {v0, p1}, Lcom/mobilebox/tts/h;->a([B)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    invoke-interface {v0}, Lcom/mobilebox/tts/h;->b()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobilebox/tts/g;->c:Lcom/mobilebox/tts/h;

    invoke-interface {v0}, Lcom/mobilebox/tts/h;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
