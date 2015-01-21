.class public abstract Lcom/zte/zdm/b/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = -0x1

.field public static final B:I = -0x2

.field public static final C:I = 0x5

.field public static final D:I = 0x0

.field public static final E:I = 0x1

.field public static final F:I = 0x2

.field public static final G:I = 0x3

.field public static final H:I = 0x4

.field public static final I:I = 0x5

.field public static final J:I = 0x6

.field public static final K:Ljava/lang/String; = "server_addr"

.field public static final L:Ljava/lang/String; = "cmcc_server_addr"

.field public static final M:Ljava/lang/String; = "server_port"

.field public static final N:Ljava/lang/String; = "user_agent"

.field public static final O:Ljava/lang/String; = "dm_conn_timeout"

.field public static final P:Ljava/lang/String; = "dm_proxy"

.field public static final Q:Ljava/lang/String; = "dm_proxy_addr"

.field public static final R:Ljava/lang/String; = "dm_proxy_port"

.field public static final S:Ljava/lang/String; = "dl_conn_timeout"

.field public static final T:Ljava/lang/String; = "dl_proxy"

.field public static final U:Ljava/lang/String; = "dl_proxy_addr"

.field public static final V:Ljava/lang/String; = "dl_proxy_port"

.field public static final W:Ljava/lang/String; = "dl_thread_num"

.field public static final X:Ljava/lang/String; = "encode_wbxml_msg"

.field public static final Y:Ljava/lang/String; = "check_status"

.field public static final Z:Ljava/lang/String; = "next_update_time"

.field public static final aA:Ljava/lang/String; = "dm_auto_update_frequency"

.field public static final aB:Ljava/lang/String; = "default_FUMO_serverid"

.field public static aC:Ljava/lang/String; = null

.field public static aD:Ljava/lang/String; = null

.field public static aE:Ljava/lang/String; = null

.field public static aF:Ljava/lang/String; = null

.field public static aG:Ljava/lang/String; = null

.field public static aH:Ljava/lang/String; = null

.field public static aI:Ljava/lang/String; = null

.field public static aJ:Ljava/lang/String; = null

.field public static aK:Ljava/lang/String; = null

.field public static aL:Ljava/lang/String; = null

.field public static aM:Ljava/lang/String; = null

.field public static aN:Ljava/lang/String; = null

.field public static aO:Ljava/lang/String; = null

.field public static aP:Ljava/lang/String; = null

.field public static aQ:Ljava/lang/String; = null

.field public static aR:Ljava/lang/String; = null

.field public static aS:Ljava/lang/String; = null

.field public static aT:Ljava/lang/String; = null

.field public static final aU:Ljava/lang/String; = "dd_size"

.field public static final aa:Ljava/lang/String; = "delay_install"

.field public static final ab:Ljava/lang/String; = "dl_session_state"

.field public static final ac:Ljava/lang/String; = "fumo_Operation"

.field public static final ad:Ljava/lang/String; = "retry_times"

.field public static final ae:Ljava/lang/String; = "retry_millionseconds"

.field public static final af:Ljava/lang/String; = "report"

.field public static final ag:Ljava/lang/String; = "auto_update_when_wifi_open"

.field public static final ah:Ljava/lang/String; = "fumo_update_status_code"

.field public static final ai:Ljava/lang/String; = "correlator"

.field public static final aj:Ljava/lang/String; = "fumo_phase"

.field public static final ak:Ljava/lang/String; = "fumo_rooturi"

.field public static final al:Ljava/lang/String; = "current_account"

.field public static final am:Ljava/lang/String; = "account_root"

.field public static final an:Ljava/lang/String; = "accounts_list"

.field public static final ao:Ljava/lang/String; = "up_file_uri"

.field protected static final ap:Ljava/lang/String; = "0.1.0"

.field protected static final aq:Ljava/lang/String; = "version"

.field protected static final ar:Ljava/lang/String; = "log_level"

.field public static final as:Ljava/lang/String; = "notification_verify"

.field public static final at:Ljava/lang/String; = "hexSessionId"

.field public static final au:Ljava/lang/String; = "notif_interactive_timeout"

.field public static final av:Ljava/lang/String; = "notif_informative_timeout"

.field public static final aw:Ljava/lang/String; = "setDay"

.field public static final ax:Ljava/lang/String; = "setWeek"

.field public static final ay:Ljava/lang/String; = "setHour"

.field public static final az:Ljava/lang/String; = "setMinutes"

.field public static final z:I


# instance fields
.field aV:I

.field protected aW:Ljava/lang/String;

.field protected aX:I

.field protected aY:Z

.field protected aZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DmapnHaveReaded"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aC:Ljava/lang/String;

    const-string v0, "newDmApn"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aD:Ljava/lang/String;

    const-string v0, "newDmProxy"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aE:Ljava/lang/String;

    const-string v0, "newDmPort"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aF:Ljava/lang/String;

    const-string v0, "GprsapnHaveReaded"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aG:Ljava/lang/String;

    const-string v0, "GprsCmNetapnHaveReaded"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aH:Ljava/lang/String;

    const-string v0, "newGprsApn"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aI:Ljava/lang/String;

    const-string v0, "newGprsProxy"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aJ:Ljava/lang/String;

    const-string v0, "newGprsPort"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aK:Ljava/lang/String;

    const-string v0, "newGprsCmNetApn"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aL:Ljava/lang/String;

    const-string v0, "newGprsCmNetProxy"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aM:Ljava/lang/String;

    const-string v0, "newGprsCmNetPort"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aN:Ljava/lang/String;

    const-string v0, "delayinstallflag"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aO:Ljava/lang/String;

    const-string v0, "APN"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aP:Ljava/lang/String;

    const-string v0, "Proxy"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aQ:Ljava/lang/String;

    const-string v0, "Port"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aR:Ljava/lang/String;

    const-string v0, "OldApnId"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aS:Ljava/lang/String;

    const-string v0, "preferenceCmNetApnId"

    sput-object v0, Lcom/zte/zdm/b/b/a;->aT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/zte/zdm/b/b/a;->aX:I

    iput-boolean v0, p0, Lcom/zte/zdm/b/b/a;->aY:Z

    iput-boolean v0, p0, Lcom/zte/zdm/b/b/a;->aZ:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_loadLongKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/String;I)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;[B)V
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_loadbooleankey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_loadIntKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_saveLongKey key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_savebooleankey key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method protected abstract b()Z
.end method

.method protected abstract b(Ljava/lang/String;[B)[B
.end method

.method public c()I
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/zte/zdm/b/b/a;->aZ:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "version"

    const-string v3, "0.1.0"

    invoke-virtual {p0, v1, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/b/b/a;->aW:Ljava/lang/String;

    const-string v1, "log_level"

    invoke-virtual {p0, v1, v0}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/zdm/b/b/a;->aX:I

    iput-boolean v2, p0, Lcom/zte/zdm/b/b/a;->aZ:Z

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/b/b/a;->j()V

    iput-boolean v2, p0, Lcom/zte/zdm/b/b/a;->aZ:Z

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected abstract c(Ljava/lang/String;)I
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_loadStringKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_saveIntKey key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_saveStringKey key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract d(Ljava/lang/String;)Z
.end method

.method protected abstract e(Ljava/lang/String;)V
.end method

.method public i()I
    .locals 2

    const-string v0, "version"

    const-string v1, "0.1.0"

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "log_level"

    iget v1, p0, Lcom/zte/zdm/b/b/a;->aX:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.zte.zdm/files/tree.xml"

    return-object v0
.end method
