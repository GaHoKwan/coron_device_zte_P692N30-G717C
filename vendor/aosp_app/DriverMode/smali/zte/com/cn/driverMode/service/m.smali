.class public final Lzte/com/cn/driverMode/service/m;
.super Lzte/com/cn/driverMode/service/l;


# static fields
.field private static J:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

.field private static K:Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

.field private static L:Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

.field private static M:Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

.field private static N:Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;

.field protected static a:Lzte/com/cn/driverMode/service/m;

.field protected static c:Lzte/com/cn/driverMode/service/DMService;

.field protected static e:[Z

.field protected static j:I

.field protected static n:Lzte/com/cn/driverMode/service/by;

.field protected static o:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Landroid/content/Context;

.field private D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

.field private E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field private F:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private G:Z

.field private H:Lzte/com/cn/driverMode/service/bv;

.field private I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

.field private O:Z

.field private P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

.field private Q:Lzte/com/cn/driverMode/service/w;

.field private R:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Ljava/util/ArrayList;

.field private X:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

.field private Y:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

.field private Z:Ljava/util/ArrayList;

.field private aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

.field private ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

.field private ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

.field private ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

.field private ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

.field private af:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

.field protected b:Lzte/com/cn/driverMode/service/DMApplication;

.field protected d:Ljava/lang/String;

.field protected f:Z

.field protected g:Z

.field protected h:Ljava/util/Timer;

.field i:Ljava/util/TimerTask;

.field protected k:Z

.field protected l:Ljava/util/Timer;

.field protected m:Z

.field p:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field q:I

.field r:Z

.field protected s:Z

.field t:Ljava/lang/String;

.field final u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

.field final v:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

.field protected w:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

.field protected x:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

.field y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

.field private z:Lzte/com/cn/driverMode/service/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/driverMode/service/m;->a:Lzte/com/cn/driverMode/service/m;

    const/16 v0, 0x8

    new-array v0, v0, [Z

    sput-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/16 v0, 0x1194

    sput v0, Lzte/com/cn/driverMode/service/m;->j:I

    return-void
.end method

.method private constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/l;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/service/x;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/x;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v0, "main_screen"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    const-string v0, "main_screen"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->d:Ljava/lang/String;

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->f:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/m;->O:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->k:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->m:Z

    new-instance v0, Lzte/com/cn/driverMode/service/w;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/w;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->U:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->V:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->X:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->Y:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/m;->r:Z

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/m;->s:Z

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    new-instance v0, Lzte/com/cn/driverMode/service/n;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/n;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->af:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    new-instance v0, Lzte/com/cn/driverMode/service/o;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/o;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    new-instance v0, Lzte/com/cn/driverMode/service/p;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/p;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->v:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    new-instance v0, Lzte/com/cn/driverMode/service/t;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/t;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->w:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    new-instance v0, Lzte/com/cn/driverMode/service/u;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/u;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->x:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    new-instance v0, Lzte/com/cn/driverMode/service/v;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/v;-><init>(Lzte/com/cn/driverMode/service/m;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v7, v0, v6

    sput-object p1, Lzte/com/cn/driverMode/service/m;->c:Lzte/com/cn/driverMode/service/DMService;

    sget-object v0, Lzte/com/cn/driverMode/service/m;->c:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    sget-object v0, Lzte/com/cn/driverMode/service/m;->c:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzte/com/cn/driverMode/service/m;->n:Lzte/com/cn/driverMode/service/by;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzte/com/cn/driverMode/service/m;->o:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v1, "version"

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v2, ".jpg"

    const-string v3, "vocon"

    const-string v4, "vocon"

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v5}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->F:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    const-string v1, "contacts.lst"

    new-instance v2, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v4, "contacts"

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    move v3, v7

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    sput-object v0, Lzte/com/cn/driverMode/service/m;->J:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

    const-string v1, "songlist.lst"

    new-instance v2, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v4, "songlist"

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    move v3, v7

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/SongManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    sput-object v0, Lzte/com/cn/driverMode/service/m;->K:Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

    const-string v1, "artistlist.lst"

    new-instance v2, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v4, "artistlist"

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    move v3, v7

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    sput-object v0, Lzte/com/cn/driverMode/service/m;->L:Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

    const-string v1, "albumlist.lst"

    new-instance v2, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v4, "albumlist"

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    move v3, v7

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    sput-object v0, Lzte/com/cn/driverMode/service/m;->M:Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

    const-string v0, "LocalEngine"

    const-string v1, "createEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v1, "dropLength"

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/ce;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/m;->q:I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dropLength="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/driverMode/service/m;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v2, ".jpg"

    const-string v3, "vocon"

    const-string v4, "vocon"

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v5}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->createVoconRecognizer(Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    if-nez v0, :cond_1

    const-string v0, "LocalEngine"

    const-string v1, "createVoconRecognizer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v0, v7}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->enableVerboseAndroidLogging(Z)V

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v6, v0, v6

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x2

    aput-boolean v7, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v7, v0, v7

    goto :goto_0
.end method

.method private a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 6

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HH.mm.ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrivingModeLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "splitAudioToFile...:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;-><init>()V

    invoke-virtual {v2, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v5}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v2}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->startPlaying()V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    const-string v0, "_items"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_items"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_orthography"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_orthography"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "LocalEngine"

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public static a(Lzte/com/cn/driverMode/service/DMService;)Lzte/com/cn/driverMode/service/m;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->a:Lzte/com/cn/driverMode/service/m;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/service/m;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/m;-><init>(Lzte/com/cn/driverMode/service/DMService;)V

    sput-object v0, Lzte/com/cn/driverMode/service/m;->a:Lzte/com/cn/driverMode/service/m;

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/m;->a:Lzte/com/cn/driverMode/service/m;

    return-object v0
.end method

.method private a(ILorg/json/JSONObject;)V
    .locals 5

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@idx2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "_value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@values = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v0, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@entries.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    const-string v2, "LocalEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now we get entry["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 13

    const/4 v3, 0x0

    const-string v0, ""

    :try_start_0
    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getRawResult()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getInterpretationCount()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "No Result!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getInterpretationList()Lorg/json/JSONArray;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "_score"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move v2, v3

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v1, "_conf"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    const-string v5, "_conf"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lzte/com/cn/driverMode/service/w;->a:I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_slots"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v9, ""

    const-string v1, "_score"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v10, v7, 0x258

    if-gt v1, v10, :cond_0

    move v1, v3

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_6

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "entry_id"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0, v1, v10}, Lzte/com/cn/driverMode/service/m;->a(ILorg/json/JSONObject;)V

    :cond_3
    const-string v11, "entry_id"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "city_id"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "domain"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "nlu"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v11, "poi_name"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "address"

    const-string v12, "_name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    invoke-static {v10}, Lzte/com/cn/driverMode/service/m;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const-string v1, "_score"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "[score: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v9, Lzte/com/cn/driverMode/service/bb;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget v0, v0, Lzte/com/cn/driverMode/service/w;->a:I

    invoke-direct {v9, v0, v8}, Lzte/com/cn/driverMode/service/bb;-><init>(ILjava/util/List;)V

    move v1, v3

    move v5, v3

    :goto_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/bb;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/bb;->b:Ljava/util/List;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application is unable to parse Vocon results.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method private a(Ljava/util/Map;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->r:I

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFuzzyCtxParams, TSILENCE_FX="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->ACCURACY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAX_COLLAPSED_LISTSIZE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAX_NBR_UNCOLLAPSED_ENTRIES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->o()V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/m;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "LocalEngine"

    const-string v1, "parseResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@@@@######result.getRawResult"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getRawResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getResultType()Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/m;->X:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/m;->U:Z

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getResultType()Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lzte/com/cn/driverMode/service/m;->Y:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/m;->V:Z

    :cond_1
    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->U:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->V:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Y:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v0

    sget v1, Lzte/com/cn/driverMode/service/m;->j:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Y:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Ljava/util/ArrayList;)V

    :goto_0
    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/m;->U:Z

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/m;->V:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->X:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/m;->b(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzte/com/cn/driverMode/service/m;->G:Z

    return p1
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    return-object v0
.end method

.method private b(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getChoiceCount()I

    move-result v4

    const-string v2, "LocalEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "resultCount :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LocalEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "gateconfidence :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lzte/com/cn/driverMode/service/m;->j:I

    if-le v0, v2, :cond_3

    :try_start_0
    const-string v0, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getRawResult()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    const/4 v2, 0x0

    iput v2, v0, Lzte/com/cn/driverMode/service/w;->a:I

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getChoiceList()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->c(Lorg/json/JSONObject;)V

    move v2, v1

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/x;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/x;->c:Ljava/lang/String;

    sget-object v6, Lzte/com/cn/driverMode/service/m;->c:Lzte/com/cn/driverMode/service/DMService;

    const v7, 0x7f08021f

    invoke-virtual {v6, v7}, Lzte/com/cn/driverMode/service/DMService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/x;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/x;->c:Ljava/lang/String;

    const-string v6, "wuw_X"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/x;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/x;->c:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    new-instance v0, Lzte/com/cn/driverMode/service/bb;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget v2, v2, Lzte/com/cn/driverMode/service/w;->a:I

    invoke-direct {v0, v2, v5}, Lzte/com/cn/driverMode/service/bb;-><init>(ILjava/util/List;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application is unable to parse Vocon results.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 8

    const v7, 0x7f080298

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x12c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "grammar#wake-up"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setRules(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isInCall="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const v3, 0x7f080297

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const v3, 0x7f0802a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const v3, 0x7f0802a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const v3, 0x7f080293

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v6, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    const-string v0, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioSource.VOICE_CALL, version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    const-string v3, "InCall"

    invoke-direct {p0, v2, v3}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LocalEngine"

    const-string v2, "P541T50...."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v6, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v5, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    const-string v0, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioSource.MIC, version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    if-eqz v0, :cond_5

    const-string v0, "LocalEngine"

    const-string v2, "\u84dd\u7259wakeup\u3002\u3002\u3002"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    const-string v3, "Blue_WakeUp"

    invoke-direct {p0, v2, v3}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "LocalEngine"

    const-string v2, "version ==sign_P541T50 "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v5, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    const-string v3, "WakeUp"

    invoke-direct {p0, v2, v3}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "LocalEngine"

    const-string v2, "\u666e\u901a\u5f55\u97f3\u3002\u3002\u3002"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    const-string v3, "WakeUp"

    invoke-direct {p0, v2, v3}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    goto/16 :goto_2
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4

    const-wide/16 v2, 0x1f4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1004

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x1003

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 4

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->r:I

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCommandCtxParams, TSILENCE_FX="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->ACCURACY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "terminal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v1, "_orthography"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/service/x;->c:Ljava/lang/String;

    const-string v0, "_userID.lo32"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v1, "_userID.lo32"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lzte/com/cn/driverMode/service/x;->b:I

    :cond_0
    const-string v0, "_conf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v1, "_conf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lzte/com/cn/driverMode/service/x;->d:I

    :cond_1
    new-instance v0, Lzte/com/cn/driverMode/service/x;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    invoke-direct {v0, p0, v1}, Lzte/com/cn/driverMode/service/x;-><init>(Lzte/com/cn/driverMode/service/m;Lzte/com/cn/driverMode/service/x;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v1, "_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/service/x;->a:Ljava/lang/String;

    :goto_0
    const-string v0, "_userID.lo32"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v1, "_userID.lo32"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lzte/com/cn/driverMode/service/x;->b:I

    :goto_1
    const-string v0, "_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Lorg/json/JSONObject;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v1, "NA"

    iput-object v1, v0, Lzte/com/cn/driverMode/service/x;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application is unable to parse Vocon results.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const/4 v1, 0x0

    iput v1, v0, Lzte/com/cn/driverMode/service/x;->b:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static c(Ljava/util/Map;)V
    .locals 4

    const/16 v3, 0x2710

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "_conf"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    const-string v5, "_conf"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lzte/com/cn/driverMode/service/w;->a:I

    const-string v0, "LocalEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parserVoconResultByItem--conf1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_conf"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "_type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "tag"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_items"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lzte/com/cn/driverMode/service/m;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "_type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "terminal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v5, "_orthography"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lzte/com/cn/driverMode/service/x;->c:Ljava/lang/String;

    const-string v0, "_userID.lo32"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v5, "_userID.lo32"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lzte/com/cn/driverMode/service/x;->b:I

    :cond_2
    const-string v0, "_conf"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    const-string v5, "_conf"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lzte/com/cn/driverMode/service/x;->d:I

    :cond_3
    new-instance v0, Lzte/com/cn/driverMode/service/x;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->z:Lzte/com/cn/driverMode/service/x;

    invoke-direct {v0, p0, v4}, Lzte/com/cn/driverMode/service/x;-><init>(Lzte/com/cn/driverMode/service/m;Lzte/com/cn/driverMode/service/x;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->Q:Lzte/com/cn/driverMode/service/w;

    iget-object v4, v4, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application is unable to parse Vocon results.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method static synthetic c(Lzte/com/cn/driverMode/service/m;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->G:Z

    return v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/service/m;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    return v0
.end method

.method static synthetic e(Lzte/com/cn/driverMode/service/m;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    return v0
.end method

.method static synthetic f(Lzte/com/cn/driverMode/service/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lzte/com/cn/driverMode/service/m;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->O:Z

    return v0
.end method

.method static synthetic h(Lzte/com/cn/driverMode/service/m;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    return-object v0
.end method

.method static synthetic l()Lcom/nuance/dragon/toolkit/language/Language;
    .locals 1

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->m()Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v0

    return-object v0
.end method

.method private static m()Lcom/nuance/dragon/toolkit/language/Language;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syslanguage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lzte/com/cn/driverMode/service/m;->c:Lzte/com/cn/driverMode/service/DMService;

    const-string v2, "default_language"

    invoke-static {v1, v2}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "defLanguage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lzte/com/cn/driverMode/service/m;->c:Lzte/com/cn/driverMode/service/DMService;

    const-string v3, "languages"

    invoke-static {v2, v3}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "allLanguages:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "cmn-CHN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/language/Languages;->CHINESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "eng-USA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/dragon/toolkit/language/Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "tur-TUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/dragon/toolkit/language/Languages;->TURKISH:Lcom/nuance/dragon/toolkit/language/Language;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "eng-USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/dragon/toolkit/language/Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/dragon/toolkit/language/Languages;->CHINESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    goto :goto_0
.end method

.method private n()V
    .locals 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v1, "LocalEngine"

    const-string v2, "startFuzzyUIRecognitionAgain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "LocalEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "!!!!!!!!_entryIdList.size() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entry_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setTableQueries(Ljava/util/List;)V

    const-string v1, "LocalEngine"

    const-string v2, "startFuzzyRecognitionDetail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Lzte/com/cn/driverMode/service/m;->c(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1}, Lzte/com/cn/driverMode/service/m;->a(Ljava/util/Map;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "LocalEngine"

    const-string v1, "VoconRecognizer.startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->p:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const-string v4, "FuzzyRecognition"

    invoke-direct {p0, v1, v4}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->x:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->w:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    iget-object v6, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "LocalEngine"

    const-string v1, "resetRecorder()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    if-eqz v0, :cond_0

    const-string v0, "LocalEngine"

    const-string v1, "stop recorder ....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->stopRecording()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->stopRecording()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->release()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->release()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->release()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->disconnectSecondarySource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    :cond_5
    return-void
.end method

.method private static p()V
    .locals 4

    const-string v0, "LocalEngine"

    const-string v1, "---------------START--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DESTROY_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INIT_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CANCEL_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WAKEUP_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECOG_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STOP_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOAD_FLAG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x7

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    const-string v1, "---------------END--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "LocalEngine"

    const-string v1, "stopWaitResultTimer ..cancel waitResultTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->l:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private static r()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->m()Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v1

    const-string v0, ""

    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->CHINESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/language/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "grammar_cn.fcf"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/language/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "grammar_en.fcf"

    goto :goto_0
.end method


# virtual methods
.method protected final a(F)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "volumeLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4004

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iput-boolean p1, p0, Lzte/com/cn/driverMode/service/m;->k:Z

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setBTUsedStatus--mIsBTUsed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "LocalEngine"

    const-string v3, "loadAsrGrammar()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x7

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x4

    aput-boolean v0, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x5

    aput-boolean v0, v2, v3

    const-string v0, "LocalEngine"

    const-string v2, "_voconRecognizer.loadGrammar()in loadAsrGrammar().\n"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    const-string v2, "LocalEngine"

    const-string v3, "createVoconGrammar()!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->r()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v4, "province_category.fcf"

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->createGrammar(Ljava/util/List;Ljava/util/List;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContextByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    const-string v3, "province_category.fcf"

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContextByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->R:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    sget-object v2, Lzte/com/cn/driverMode/service/m;->J:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->F:Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v4, "contacts1.lst"

    invoke-virtual {v2, v3, v4, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getAcceptedChecksum()I

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v4, "grammar#name"

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->addSlotId(Ljava/lang/String;)Z

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    const-string v4, "grammar#name"

    const-string v5, "name"

    invoke-virtual {v3, v2, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v3, "grammar#song"

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->addSlotId(Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    sget-object v3, Lzte/com/cn/driverMode/service/m;->K:Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->F:Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v5, "song1.lst"

    invoke-virtual {v3, v4, v5, v1}, Lcom/nuance/dragon/toolkit/grammar/content/SongManager;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v3

    const-string v4, "grammar#song"

    const-string v5, "name"

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v3, "grammar#artist"

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->addSlotId(Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    sget-object v3, Lzte/com/cn/driverMode/service/m;->L:Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->F:Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v5, "artist1.lst"

    invoke-virtual {v3, v4, v5, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v3

    const-string v4, "grammar#artist"

    const-string v5, "name"

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v3, "grammar#album"

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->addSlotId(Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    sget-object v3, Lzte/com/cn/driverMode/service/m;->M:Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->F:Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v5, "album1.lst"

    invoke-virtual {v3, v4, v5, v1}, Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v3

    const-string v4, "grammar#album"

    const-string v5, "name"

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->E:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->v:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->loadGrammar(Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->B:Ljava/lang/String;

    iput-object p1, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "LocalEngine"

    const-string v3, "startWakeUp()---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->s:Z

    if-nez v2, :cond_0

    const-string v1, "LocalEngine"

    const-string v2, " Recorder is not stopped!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1019

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    goto :goto_0

    :cond_1
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v0, v2, v4

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x5

    aput-boolean v0, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->o()V

    sget-object v0, Lzte/com/cn/driverMode/service/m;->n:Lzte/com/cn/driverMode/service/by;

    const-string v2, "main_tips_state"

    const-string v3, "tips_wakeup"

    invoke-virtual {v0, v2, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.MainChangeTips"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2}, Lzte/com/cn/driverMode/service/m;->b(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/m;->f:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/m;->O:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/m;->m:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x1011

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v2, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "LocalEngine"

    const-string v2, "startWakeUp...end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)Z
    .locals 10

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v0, "LocalEngine"

    const-string v1, "startMusicBargetIn()---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    return v3

    :cond_0
    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->r:Z

    iput-object p1, p0, Lzte/com/cn/driverMode/service/m;->Z:Ljava/util/ArrayList;

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v3, v0, v4

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v6, v0, v2

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->f:Z

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->O:Z

    iput-boolean v6, p0, Lzte/com/cn/driverMode/service/m;->m:Z

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->o()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->ENABLEFETCHPCMAUDIO:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->ABSOLUTE_THRESHOLD:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MusicBargeIn_absoluteThreshold :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|MusicBargeIn_Penalty :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_48k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->startRecording()V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;-><init>()V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->aa:Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_48k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v1, v3, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_48k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v2, v6, v4}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v4}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    const-string v4, "musicBargin_left"

    invoke-direct {p0, v1, v4}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    const-string v1, "musicBargin_right"

    invoke-direct {p0, v2, v1}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-static {}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->getRequiredFrameSize()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;IIII)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->ab:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->ac:Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->connectSecondarySource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const-string v2, "base_16k.bsd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    new-instance v3, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const-string v5, ".jpg"

    const-string v9, "sse"

    invoke-direct {v3, v4, v5, v9}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->ad:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->ae:Lcom/nuance/dragon/toolkit/audio/pipes/SsePipe;

    const-string v1, "sse"

    invoke-direct {p0, v0, v1}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->Z:Ljava/util/ArrayList;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget v4, v0, Lzte/com/cn/driverMode/service/DMApplication;->o:I

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->af:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    move-object v0, v8

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    const-string v0, "LocalEngine"

    const-string v1, "startMusicBargetIn()--- end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto/16 :goto_0
.end method

.method public final a(Lzte/com/cn/driverMode/service/bv;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v1, v2, v3

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x3

    aput-boolean v0, v1, v2

    new-instance v1, Lzte/com/cn/driverMode/service/q;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/q;-><init>(Lzte/com/cn/driverMode/service/m;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/m;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "LocalEngine"

    const-string v3, "stopRecognition()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v0, v2, v4

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x3

    aput-boolean v0, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->G:Z

    if-eqz v2, :cond_1

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    :cond_1
    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->stopListening()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->o()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/m;->j()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->q()V

    const-string v0, "LocalEngine"

    const-string v2, "stopRecognition is end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "LocalEngine"

    const-string v3, "cancelRecAndStartWakeup()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    if-eqz v2, :cond_1

    const-string v0, "LocalEngine"

    const-string v2, "cancelRecAndStartWakeup()---isWakeupMode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x6

    aput-boolean v0, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v0, v2, v4

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->G:Z

    if-eqz v2, :cond_2

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    :cond_2
    const-string v2, "LocalEngine"

    const-string v3, "cancelRecAndStartWakeup......"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->cancelRebuild()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->cancelRecognition()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->o()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/m;->j()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->q()V

    move v0, v1

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "LocalEngine"

    const-string v1, "destory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    new-instance v1, Lzte/com/cn/driverMode/service/s;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/s;-><init>(Lzte/com/cn/driverMode/service/m;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->release(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;)V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/m;->J:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->J:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->release()V

    sput-object v2, Lzte/com/cn/driverMode/service/m;->J:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    :cond_1
    sget-object v0, Lzte/com/cn/driverMode/service/m;->K:Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

    if-eqz v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/m;->K:Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/SongManager;->release()V

    sput-object v2, Lzte/com/cn/driverMode/service/m;->K:Lcom/nuance/dragon/toolkit/grammar/content/SongManager;

    :cond_2
    sget-object v0, Lzte/com/cn/driverMode/service/m;->L:Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

    if-eqz v0, :cond_3

    sget-object v0, Lzte/com/cn/driverMode/service/m;->L:Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;->release()V

    sput-object v2, Lzte/com/cn/driverMode/service/m;->L:Lcom/nuance/dragon/toolkit/grammar/content/ArtistManager;

    :cond_3
    sget-object v0, Lzte/com/cn/driverMode/service/m;->M:Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

    if-eqz v0, :cond_4

    sget-object v0, Lzte/com/cn/driverMode/service/m;->M:Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;->release()V

    sput-object v2, Lzte/com/cn/driverMode/service/m;->M:Lcom/nuance/dragon/toolkit/grammar/content/AlbumManager;

    :cond_4
    sget-object v0, Lzte/com/cn/driverMode/service/m;->N:Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;

    if-eqz v0, :cond_5

    sget-object v0, Lzte/com/cn/driverMode/service/m;->N:Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;->release()V

    sput-object v2, Lzte/com/cn/driverMode/service/m;->N:Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;

    :cond_5
    sput-object v2, Lzte/com/cn/driverMode/service/m;->a:Lzte/com/cn/driverMode/service/m;

    return-void
.end method

.method public final e()Z
    .locals 8

    const/4 v3, 0x5

    const/4 v0, 0x0

    const/4 v7, 0x1

    const-string v1, "LocalEngine"

    const-string v2, "startRecognition()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x4

    aput-boolean v0, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v0, v1, v3

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x6

    aput-boolean v7, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x3

    aput-boolean v7, v1, v2

    const-string v1, "LocalEngine"

    const-string v2, "listening ......."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->stopRecording()V

    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1010

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v2, v1}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/m;->s:Z

    if-nez v1, :cond_2

    const-string v1, "LocalEngine"

    const-string v2, " Recorder is not stopped!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1019

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-string v1, "LocalEngine"

    const-string v2, "startRecording ......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->z:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    :goto_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->y:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startRecording---dropLength="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/m;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;

    iget v2, p0, Lzte/com/cn/driverMode/service/m;->q:I

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;-><init>(I)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->p:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cur_screen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    const-string v2, "navigation_destination_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->d:Ljava/lang/String;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->R:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v2, "LocalEngine"

    const-string v3, "startMultiRecognition..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Lzte/com/cn/driverMode/service/m;->c(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->a(Ljava/util/Map;)V

    new-instance v5, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-direct {v5, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Ljava/util/Map;)V

    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "test"

    const-string v1, "VoconRecognizer.startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->p:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const-string v4, "MultiRecognition"

    invoke-direct {p0, v1, v4}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->x:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->w:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    iget-object v6, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    :goto_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    const-string v1, "message_receive_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lzte/com/cn/driverMode/service/m;->n:Lzte/com/cn/driverMode/service/by;

    const-string v1, "main_tips_state"

    const-string v2, "tips_sms"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.MainChangeTips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/m;->f:Z

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/m;->O:Z

    move v0, v7

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->t:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->C:Landroid/content/Context;

    const v3, 0x7f080298

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "LocalEngine"

    const-string v2, "version == sign_P541T50"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v1, v7, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    goto/16 :goto_1

    :cond_4
    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/m;->I:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    const-string v2, "second_search_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->n()V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->P:Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    const-string v2, "LocalEngine"

    const-string v3, "startVoconRecognition..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "grammar#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocalEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rules = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setRules(Ljava/util/List;)V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->S:Z

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->T:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/m;->b(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "LocalEngine"

    const-string v1, "VoconRecognizer.startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->p:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const-string v2, "VoconRecognition"

    invoke-direct {p0, v1, v2}, Lzte/com/cn/driverMode/service/m;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Lzte/com/cn/driverMode/service/m;->c(Ljava/util/Map;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/m;->x:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iget-object v5, p0, Lzte/com/cn/driverMode/service/m;->w:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    iget-object v6, p0, Lzte/com/cn/driverMode/service/m;->u:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->A:Ljava/lang/String;

    const-string v1, "message_callback_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lzte/com/cn/driverMode/service/m;->n:Lzte/com/cn/driverMode/service/by;

    const-string v1, "main_tips_state"

    const-string v2, "tips_sms_callback"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lzte/com/cn/driverMode/service/m;->n:Lzte/com/cn/driverMode/service/by;

    const-string v1, "main_tips_state"

    const-string v2, "tips_recognition"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public final f()Z
    .locals 3

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecoginzing() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "LocalEngine"

    const-string v3, "cancelRecognition()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->p()V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x6

    aput-boolean v0, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    aput-boolean v0, v2, v4

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/m;->G:Z

    if-eqz v2, :cond_1

    sget-object v2, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    :cond_1
    const-string v2, "LocalEngine"

    const-string v3, "cancelRecognition......"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->O:Z

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->r:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->cancelRebuild()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/m;->D:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->cancelRecognition()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->o()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/m;->j()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->q()V

    move v0, v1

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->g:Z

    return v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->s:Z

    return-void
.end method

.method protected final j()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "LocalEngine"

    const-string v1, "stopSpeechDetectTimer ..cancel speechDetectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->i:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/m;->h:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method protected final k()V
    .locals 3

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/m;->m:Z

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/m;->q()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1009

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/m;->H:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
