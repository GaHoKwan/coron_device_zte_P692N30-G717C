.class public Lcom/zte/zdm/mos/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/zte/zdm/mos/c;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/mos/c;

    invoke-direct {v0}, Lcom/zte/zdm/mos/c;-><init>()V

    sput-object v0, Lcom/zte/zdm/mos/c;->a:Lcom/zte/zdm/mos/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/zte/zdm/mos/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mos/c;->a:Lcom/zte/zdm/mos/c;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/g;
    .locals 6

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyString= ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const-string v1, "find key"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/b/g;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/h;
    .locals 6

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyString= ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const-string v1, "find key"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/b/h;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/a;
    .locals 6

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyString= ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const-string v1, "find key"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/b/a;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    const-string v2, "./FUMO/FirmwareUpdate"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mos/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/zte/zdm/mos/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(I)Lcom/zte/zdm/b/e/a;
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    const-string v1, "./FUMO/FirmwareUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/e/a;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    const-string v1, "./FUMO/FirmwareUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/e/a;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/mos/c;->b:Ljava/util/HashMap;

    const-string v1, "./Notification/Nia"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/e/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/g;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "require MethodHandler ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====getMethodHandlerFromHolder ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] start======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/mos/c;->d(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====getMethodHandlerFromHolder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] end======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/h;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "require Write MethodHandler ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====getMethodHandlerFromHolder ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] start======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/mos/c;->e(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====getMethodHandlerFromHolder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] end======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    :try_start_0
    const-string v0, "./FUMO/FirmwareUpdate"

    const-string v1, "com.zte.zdm.mos.fumo.FumoSession"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./FOTA/Mandatory"

    const-string v1, "com.zte.zdm.mo.FOTAMandatory"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "./Notification/Nia"

    const-string v1, "com.zte.zdm.mo.notification.NiaSession"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "/ZTE/AppAddr/SrvAddr/Addr"

    const-string v1, "com.zte.zdm.mo.DMAcc"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/ZTE/AppAddr/SrvAddr/AddrType"

    const-string v1, "com.zte.zdm.mo.DMAcc"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/synchronica/AppAddr/SrvAddr/Addr"

    const-string v1, "com.zte.zdm.mo.CMCCDmAcc"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/synchronica/AppAddr/SrvAddr/AddrType"

    const-string v1, "com.zte.zdm.mo.CMCCDmAcc"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./DevDetail/SwV"

    const-string v1, "com.zte.zdm.mo.DevDetail"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./DevInfo/DevId"

    const-string v1, "com.zte.zdm.mo.DevInfo"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./DevInfo/Mod"

    const-string v1, "com.zte.zdm.mo.DevInfo"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/GPRS/APN"

    const-string v1, "com.zte.zdm.mo.GprsSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/GPRS/Proxy"

    const-string v1, "com.zte.zdm.mo.GprsSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/GPRS/Port"

    const-string v1, "com.zte.zdm.mo.GprsSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/GPRS/CMNet/APN"

    const-string v1, "com.zte.zdm.mo.GprsSettingCmnet"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/GPRS/CMNet/Proxy"

    const-string v1, "com.zte.zdm.mo.GprsSettingCmnet"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/GPRS/CMNet/Port"

    const-string v1, "com.zte.zdm.mo.GprsSettingCmnet"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/DM/APN"

    const-string v1, "com.zte.zdm.mo.DmApnSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/DM/Proxy"

    const-string v1, "com.zte.zdm.mo.DmApnSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/DM/Port"

    const-string v1, "com.zte.zdm.mo.DmApnSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/WAP/HomePage"

    const-string v1, "com.zte.zdm.mo.WapSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/Streaming/MAX-UDP-PORT"

    const-string v1, "com.zte.zdm.mo.StreamingSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/Streaming/MIN-UDP-PORT"

    const-string v1, "com.zte.zdm.mo.StreamingSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/Streaming/To-NapID"

    const-string v1, "com.zte.zdm.mo.StreamingSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/MMS/MMSC"

    const-string v1, "com.zte.zdm.mo.MmsSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "./Settings/AGPS/Server"

    const-string v1, "com.zte.zdm.mo.AGPSSetting"

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/a;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "require Exec MethodHandler MethodHandler ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====getMethodHandlerFromHolder ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] start======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/mos/c;->f(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====getMethodHandlerFromHolder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] end======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
