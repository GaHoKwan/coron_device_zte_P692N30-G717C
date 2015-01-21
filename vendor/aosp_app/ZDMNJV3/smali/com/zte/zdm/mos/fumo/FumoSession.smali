.class public Lcom/zte/zdm/mos/fumo/FumoSession;
.super Lcom/zte/zdm/b/e/a;

# interfaces
.implements Lcom/zte/zdm/mos/b;


# static fields
.field static A:Z = false

.field static B:Ljava/lang/String; = null

.field private static final G:Ljava/lang/String; = "zxmdmp"

.field private static H:Lcom/zte/zdm/mos/fumo/c; = null

.field static final g:Ljava/lang/String; = "DownloadAndUpdate"

.field static final h:Ljava/lang/String; = "Download"

.field static final i:Ljava/lang/String; = "Update"

.field static final j:Ljava/lang/String; = "fumo_alert_type"

.field static final k:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.download"

.field static final l:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.update"

.field static final m:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

.field static final n:Ljava/lang/String; = "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

.field static final o:Ljava/lang/String; = "FUMO_OPERATION_DOWNLOAD"

.field static final p:Ljava/lang/String; = "FUMO_OPERATION_UPDATE"

.field static final q:Ljava/lang/String; = "/"

.field static final r:I = -0x1

.field static final s:I = 0x6e

.field static final t:I = 0x77

.field static final u:I = 0xc8

.field static final v:I = 0x190

.field static final w:I = 0x1f4

.field static final x:I = 0x1f7

.field static final y:I = 0x385

.field static z:Z


# instance fields
.field C:Lcom/zte/zdm/mos/fumo/f;

.field D:Z

.field E:Lcom/zte/zdm/b/e/b/a;

.field F:Lcom/zte/zdm/b/e/a/c;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/zte/zdm/mos/fumo/a;

.field private L:Lcom/zte/zdm/mos/fumo/b;

.field private M:I

.field private N:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    sput-boolean v0, Lcom/zte/zdm/mos/fumo/FumoSession;->A:Z

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a;-><init>()V

    new-instance v0, Lcom/zte/zdm/mos/fumo/f;

    invoke-direct {v0}, Lcom/zte/zdm/mos/fumo/f;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->C:Lcom/zte/zdm/mos/fumo/f;

    iput-boolean v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    const-string v0, "zxmdmp"

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->J:Ljava/lang/String;

    iput v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->N:I

    iput-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    iput-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->C()V

    return-void
.end method

.method constructor <init>(Lcom/zte/zdm/mos/fumo/a;Lcom/zte/zdm/mos/fumo/b;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a;-><init>()V

    new-instance v0, Lcom/zte/zdm/mos/fumo/f;

    invoke-direct {v0}, Lcom/zte/zdm/mos/fumo/f;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->C:Lcom/zte/zdm/mos/fumo/f;

    iput-boolean v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    const-string v0, "zxmdmp"

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->J:Ljava/lang/String;

    iput v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->N:I

    iput-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    iput-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    iput-object p2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    return-void
.end method

.method private C()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/mos/fumo/a;

    invoke-direct {v0}, Lcom/zte/zdm/mos/fumo/a;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    new-instance v0, Lcom/zte/zdm/mos/fumo/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/mos/fumo/b;-><init>(Lcom/zte/zdm/mos/fumo/FumoSession;)V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    return-void
.end method

.method private D()V
    .locals 4

    const/16 v3, 0x32

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fumo state current : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->f:Z

    if-nez v0, :cond_2

    const-string v0, "performDlPhase:user reject"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->w()I

    move-result v0

    if-ne v3, v0, :cond_0

    const/16 v0, 0x46

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->d(I)V

    :cond_0
    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "need to report"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "401"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "no need to report"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->c(Z)V

    invoke-direct {p0, v2}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->w()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    const-string v0, "performDlPhase:user cancel downloading"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    goto :goto_0

    :cond_3
    const-string v0, "performDlPhase:UT interface user accept"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/zte/zdm/mos/fumo/FumoSession;->d(I)V

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->H()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDlPhase:fumoOperation :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mos/fumo/e;->a:[I

    sget-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v2}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private E()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_alert_type"

    const-string v2, "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFumoAlertType:fumoAlertType->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private F()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "fumo_rooturi"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFumoAlertLocURI->fumoOperation:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; rootURI:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const-string v3, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DownloadAndUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "FUMO_OPERATION_DOWNLOAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "FUMO_OPERATION_DOWNLOAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "getFumoAlertLocURI->the fumoOperation is invalid"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private G()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->m()Lcom/zte/zdm/b/e/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/b/e/e;->g()V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c()Z

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "dl_session_state"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_rooturi"

    const-string v2, "./FUMO/FirmwareUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/fumo/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->a()Lcom/zte/zdm/b/f/h/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/fumo/a;->a(Lcom/zte/zdm/b/f/h/b;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->a()Lcom/zte/zdm/b/f/h/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->d()V

    return-void
.end method

.method private I()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_rooturi"

    const-string v2, "./FUMO/FirmwareUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/fumo/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->a()Lcom/zte/zdm/b/f/h/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/fumo/a;->b(Lcom/zte/zdm/b/f/h/b;)V

    return-void
.end method

.method private J()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_phase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/zte/zdm/mos/fumo/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private K()I
    .locals 1

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->b:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    const/16 v0, 0xca

    return v0
.end method

.method private L()I
    .locals 1

    const-string v0, "performDownloadAndUpdate()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    const/16 v0, 0xca

    return v0
.end method

.method private M()I
    .locals 1

    const-string v0, "performUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->d:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    const/16 v0, 0xca

    return v0
.end method

.method private N()V
    .locals 2

    const-string v0, "requireDMSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    if-nez v0, :cond_0

    const-string v0, "dmSession = null,so new DmSession(sessionContext)"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/e/b/a;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/e/b/a;-><init>(Lcom/zte/zdm/b/e/b;)V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b/a;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    return-void
.end method

.method private O()V
    .locals 1

    const-string v0, "requireUpdate()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->H()V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/b;->i()V

    return-void
.end method

.method private P()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requireFumoSessionReport() thread ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "server_addr"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requireFumoSessionReport url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v1, v0}, Lcom/zte/zdm/d/a/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requireFumoSessionReport reportCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    sget-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "correlator"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/e/b;->g(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requireFumoSessionReport correlator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/mos/fumo/c;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFumoAlertType:fumoOperation->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mos/fumo/e;->a:[I

    invoke-virtual {p1}, Lcom/zte/zdm/mos/fumo/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_alert_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_alert_type"

    const-string v2, "org.openmobilealliance.dm.firmwareupdate.download"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_alert_type"

    const-string v2, "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_alert_type"

    const-string v2, "org.openmobilealliance.dm.firmwareupdate.update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILjava/lang/String;)Z
    .locals 6

    const/16 v5, 0x385

    const/16 v4, 0x1f4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processErrorCode : errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x6e

    if-ne v2, p1, :cond_1

    const-string v1, "503"

    sput-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    iget v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    sget-object v3, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/mos/fumo/b;->b(II)V

    return v0

    :cond_1
    const/16 v2, 0xc8

    if-ne v2, p1, :cond_2

    const-string v0, "409"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x190

    if-lt p1, v2, :cond_3

    if-ge p1, v4, :cond_3

    const-string v0, "400"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_3
    if-lt p1, v4, :cond_4

    const/16 v2, 0x1f7

    if-gt p1, v2, :cond_4

    const-string v0, "503"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_5

    const-string v0, "501"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_5
    if-le p1, v5, :cond_6

    const/16 v2, 0x3ba

    if-gt p1, v2, :cond_6

    const-string v0, "401"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_6
    const/16 v2, 0x77

    if-ne p1, v2, :cond_0

    const-string v0, "411"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractFumoRootUri index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    return-void
.end method

.method private d(I)V
    .locals 3

    iput p1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->N:I

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/fumo/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFumoPhase(int state) state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_phase"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public A()Lcom/zte/zdm/b/e/a/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    return-object v0
.end method

.method B()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "server_addr"

    const-string v3, "http://dmcn.ztems.com/zxmdmp/dm"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_port"

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FumoSession\'s transportAgent\'s parameter: proxy addr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " port:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/i;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/zte/zdm/d/a/i;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/d/a/i;->a(I)Lcom/zte/zdm/d/a/i;

    :cond_1
    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/b/a;->o()Lcom/zte/zdm/d/a/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/d/a/c;->a(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)Lcom/zte/zdm/d/a/f;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_times"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/f;->a(I)V

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_millionseconds"

    const v4, 0x493e0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/d/a/f;->a(J)V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->a:Lcom/zte/zdm/d/a/k;

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v3, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->a:Lcom/zte/zdm/d/a/k;

    invoke-virtual {v2, v3}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/d/a/k;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpAgent.getNumRetry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/f;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpAgent.getDelay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/f;->j()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpAgent.url : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",correlator->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DownloadAndUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string v0, "DownloadAndUpdate"

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->L()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_0

    const-string v1, "execute save coorelator"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "correlator"

    invoke-virtual {v1, v2, p2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/zdm/mos/fumo/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "fumo_rooturi"

    iget-object v3, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute->fumoOperation->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute->rootUri->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v0, "Download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v0, "Download"

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->K()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "Update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const-string v0, "Update"

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->M()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/mos/fumo/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->C:Lcom/zte/zdm/mos/fumo/f;

    return-void
.end method

.method public a(Lcom/zte/zdm/mos/fumo/g;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/mos/fumo/b;->a(Lcom/zte/zdm/mos/fumo/g;)V

    return-void
.end method

.method public b(I)I
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v0, 0x0

    sput-boolean v3, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFumoBroken enter in:currentPhase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    if-ne v3, v1, :cond_2

    const-string v1, "processFumoBroken DM Session"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    iget v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    invoke-virtual {v1, v2, p1}, Lcom/zte/zdm/mos/fumo/b;->b(II)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/zte/zdm/mos/fumo/b;->b(II)V

    sput-boolean v3, Lcom/zte/zdm/mos/fumo/FumoSession;->A:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    if-ne v1, v2, :cond_0

    const-string v1, "processFumoBroken DL Session"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(ILjava/lang/String;)Z

    invoke-direct {p0, v4}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fumo state current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->z()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 2

    const-string v0, "fumoSession notifyPauseSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b/a;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/a/c;->b(Z)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 3

    const-string v0, "doFumoSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "default_FUMO_serverid"

    const-string v2, "zxmdmp"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->n()Lcom/zte/zdm/b/e;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mos/fumo/g;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(Lcom/zte/zdm/mos/fumo/g;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/b/e/e;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/b;->m()V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->B()V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->o()Lcom/zte/zdm/d/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/a/c;->b(Lcom/zte/zdm/d/a/b;)V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->o()V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b/a;->i()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/c;->i()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->C()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FUMO DL cancelSession,isReport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v0, "401"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->d(I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/c;->k()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    goto :goto_0
.end method

.method public l()Lcom/zte/zdm/mos/fumo/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->C:Lcom/zte/zdm/mos/fumo/f;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    return v0
.end method

.method protected o()V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->p()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->q()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->r()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->s()Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->t()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->u()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method p()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->J()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performSetupPhase FumoPhase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "fumo_Operation"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DL resume: fumoOperation = FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    sput-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    :cond_0
    if-lt v0, v5, :cond_2

    if-gt v0, v6, :cond_2

    if-ne v6, v0, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/b;->j()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performSetupPhase reportCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v4}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    invoke-direct {p0, v4}, Lcom/zte/zdm/mos/fumo/FumoSession;->e(I)V

    goto :goto_0
.end method

.method q()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "performDmPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/b;->b()V

    const-string v0, "clear update.zip and database"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->C:Lcom/zte/zdm/mos/fumo/f;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/f;->a()V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->d:Lcom/zte/zdm/b/e/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v3, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/b/e/e;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->n()Lcom/zte/zdm/b/e;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mos/fumo/g;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(Lcom/zte/zdm/mos/fumo/g;)V

    :cond_0
    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->N()V

    sget-boolean v0, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    if-ne v1, v0, :cond_2

    sput-boolean v2, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    const-string v0, "performDmPhase:abort notify user"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performDmPhase:fumoOperation :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mos/fumo/e;->a:[I

    sget-object v3, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v3}, Lcom/zte/zdm/mos/fumo/c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performDmPhase: isReportSession:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    if-ne v1, v0, :cond_3

    iput-boolean v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    iget-boolean v3, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    invoke-virtual {v0, v3}, Lcom/zte/zdm/mos/fumo/b;->a(Z)V

    :goto_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    move v0, v2

    :goto_2
    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(Lcom/zte/zdm/mos/fumo/c;)V

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->I()V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    move v0, v1

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    move v0, v1

    goto :goto_2

    :cond_3
    const-string v0, "performDmPhase: notify user No Update Package"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/b;->h()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method r()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "performDlPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->e(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->d(I)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->d:Lcom/zte/zdm/b/e/e;

    if-nez v0, :cond_0

    const-string v0, "sessionListener == null ,setSessionListener()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/b/e/e;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->n()Lcom/zte/zdm/b/e;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mos/fumo/g;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(Lcom/zte/zdm/mos/fumo/g;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, v4}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->G()V

    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    if-ne v0, v1, :cond_4

    sput-boolean v4, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    const-string v0, "performDlPhase:abort notify user"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->y()I

    move-result v0

    const-string v1, "Dl Session exit"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dl Session exit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->v()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zte/zdm/mos/fumo/c;->b:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/zte/zdm/mos/fumo/FumoSession;->z:Z

    if-nez v1, :cond_1

    const-string v1, "Dl Session download operation."

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "200"

    sput-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    const/16 v1, 0x386

    if-ne v0, v1, :cond_3

    const-string v0, "401"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->D()V

    goto :goto_0
.end method

.method s()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x0

    const-string v0, "performInstallPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "fumo_Operation"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/zte/zdm/mos/fumo/FumoSession;->e(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fumo.getState() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v2}, Lcom/zte/zdm/mos/fumo/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "50"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->d(I)V

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->O()V

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    sget-object v3, Lcom/zte/zdm/b/b/a;->aO:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->d(I)V

    const-string v0, "409"

    sput-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->B:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    move v0, v1

    goto :goto_0
.end method

.method t()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performReportPhase() thread ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->P()V

    iput-boolean v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    iget-boolean v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->D:Z

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/fumo/b;->a(Z)V

    invoke-direct {p0, v2}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    invoke-direct {p0, v2}, Lcom/zte/zdm/mos/fumo/FumoSession;->e(I)V

    return-void
.end method

.method u()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "performDestoryPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->L:Lcom/zte/zdm/mos/fumo/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/b;->p()V

    invoke-direct {p0, v2}, Lcom/zte/zdm/mos/fumo/FumoSession;->e(I)V

    const-string v0, "performDestoryPhase() set fumo phase to idle"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->g(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/zte/zdm/mos/fumo/FumoSession;->c(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zte/zdm/mos/fumo/c;->a:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFumoOperation->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method w()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->N:I

    return v0
.end method

.method public x()Lcom/zte/zdm/b/e/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->E:Lcom/zte/zdm/b/e/b/a;

    return-object v0
.end method

.method y()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDlPhase:requireDlSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/mos/fumo/FumoSession;->I()V

    sget-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/mos/fumo/a;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuPkgurl pkgurl is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    if-nez v0, :cond_0

    const-string v0, "dlSession = null,so new dlSession(sessionContext,pkgurl)"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v2, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v2}, Lcom/zte/zdm/mos/fumo/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/b/e/a/c;-><init>(Lcom/zte/zdm/b/e/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkgurl is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/c;->g()V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/c;->p()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->F:Lcom/zte/zdm/b/e/a/c;

    return v0

    :cond_1
    sget-object v0, Lcom/zte/zdm/mos/fumo/FumoSession;->H:Lcom/zte/zdm/mos/fumo/c;

    sget-object v1, Lcom/zte/zdm/mos/fumo/c;->b:Lcom/zte/zdm/mos/fumo/c;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "FUMO_OPERATION_DOWNLOAD"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "FUMO_OPERATION_UPDATE"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->K:Lcom/zte/zdm/mos/fumo/a;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/a;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method z()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mos/fumo/FumoSession;->M:I

    return v0
.end method
