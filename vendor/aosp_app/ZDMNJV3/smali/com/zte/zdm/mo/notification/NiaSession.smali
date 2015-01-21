.class public Lcom/zte/zdm/mo/notification/NiaSession;
.super Lcom/zte/zdm/b/e/a;

# interfaces
.implements Lcom/zte/zdm/mos/b;


# static fields
.field public static final g:I = 0x2

.field private static final q:Ljava/lang/String; = "DownloadAndUpdate"

.field private static final r:Ljava/lang/String; = "Download"

.field private static final s:Ljava/lang/String; = "Update"

.field private static final t:Ljava/lang/String; = "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/zte/zdm/mo/notification/b;

.field private u:Lcom/zte/zdm/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a;-><init>()V

    const-string v0, "notification"

    iput-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/mo/notification/b;

    invoke-direct {v0}, Lcom/zte/zdm/mo/notification/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    return-void
.end method

.method private static a(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private a(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v2, p2, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method private a([B[BLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Lcom/zte/zdm/mos/b/c/a;

    invoke-direct {v1}, Lcom/zte/zdm/mos/b/c/a;-><init>()V

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->a()Lcom/zte/zdm/b/f/h/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/zdm/mos/b/c/a;->b(Lcom/zte/zdm/b/f/h/b;)V

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TreeServerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/zdm/mo/notification/NiaSession;->i:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->n()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Lcom/zte/zdm/b/g/f;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/b/g/f;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/f;->a([B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Digest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "digestData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v4, v1, 0x2

    aget-char v5, v3, v4

    invoke-static {v5}, Lcom/zte/zdm/mo/notification/NiaSession;->a(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v3, v4

    invoke-static {v4}, Lcom/zte/zdm/mo/notification/NiaSession;->a(C)B

    move-result v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b([B)Ljava/lang/StringBuffer;
    .locals 5

    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_phase"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    const-string v0, "DownloadAndUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "performFumoSession saveDownloadAndUpdate"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->i()Lcom/zte/zdm/mos/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/zdm/mos/c;->a(I)Lcom/zte/zdm/b/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a;->a(Lcom/zte/zdm/b/e/b;)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    const-string v1, "org.openmobilealliance.dm.firmwareupdate.userrequest"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "performFumoSession saveDownload"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "Download"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "performFumoSession saveUpdate"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "Update"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "performFumoSession else saveUpdate"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "fumo_Operation"

    const-string v2, "FUMO_OPERATION_DOWNLOAD_AND_UPDATE"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter execute,uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "correlator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./FUMO/FirmwareUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "do FUMO"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/mo/notification/NiaSession;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a([B)V
    .locals 6

    const/16 v5, 0x20

    const/16 v4, 0x10

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "parseNotification come in"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNotification input length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/mo/notification/NiaSession;->b([B)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "010603c4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseNotification strBuffer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseNotification trigger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/mo/notification/NiaSession;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNotification digest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNotification versionMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->j:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->k:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNotification uiMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    shr-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->l:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNotification initiator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/e/b;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNotification sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseNotification idLength:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseNotification serverId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->h:Ljava/lang/String;

    const-string v1, "doSession enter"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->q()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mo/notification/NiaSession;->a([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServerID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/mo/notification/NiaSession;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    invoke-static {v0}, Lcom/zte/zdm/b/f/f/d;->a(Lcom/zte/zdm/b/b/a;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {p0}, Lcom/zte/zdm/mo/notification/NiaSession;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    invoke-virtual {v2}, Lcom/zte/zdm/b/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->n()Lcom/zte/zdm/b/e;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mo/notification/c;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/mo/notification/b;->a(Lcom/zte/zdm/mo/notification/c;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    invoke-virtual {p0}, Lcom/zte/zdm/mo/notification/NiaSession;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mo/notification/b;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/b/e/e;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mo/notification/b;->n()Lcom/zte/zdm/d/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->u:Lcom/zte/zdm/d/a/b;

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->u:Lcom/zte/zdm/d/a/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->o()Lcom/zte/zdm/d/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->u:Lcom/zte/zdm/d/a/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/a/c;->b(Lcom/zte/zdm/d/a/b;)V

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mo/notification/b;->q()V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mo/notification/b;->m()V

    invoke-virtual {p0}, Lcom/zte/zdm/mo/notification/NiaSession;->r()V

    new-instance v0, Lcom/zte/zdm/b/e/b/a;

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/e/b/a;-><init>(Lcom/zte/zdm/b/e/b;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b/a;->g()V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->p:Lcom/zte/zdm/mo/notification/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mo/notification/b;->r()V

    const-string v0, "nia session exit!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/zdm/mo/notification/NiaSession;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->k:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->l:I

    return v0
.end method

.method r()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "cmcc_server_addr"

    const-string v3, "http://dm.monternet.com:7001"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_port"

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NiaSession\'s transportAgent\'s parameter: proxy addr:"

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

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_times"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/f;->a(I)V

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_millionseconds"

    const v4, 0x493e0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/d/a/f;->a(J)V

    iput-object v0, p0, Lcom/zte/zdm/mo/notification/NiaSession;->a:Lcom/zte/zdm/d/a/k;

    iget-object v2, p0, Lcom/zte/zdm/mo/notification/NiaSession;->e:Lcom/zte/zdm/b/e/b;

    iget-object v3, p0, Lcom/zte/zdm/mo/notification/NiaSession;->a:Lcom/zte/zdm/d/a/k;

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
