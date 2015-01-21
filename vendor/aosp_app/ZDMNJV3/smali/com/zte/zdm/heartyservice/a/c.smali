.class public Lcom/zte/zdm/heartyservice/a/c;
.super Lcom/zte/zdm/heartyservice/a/a;


# static fields
.field private static final f:Ljava/lang/String; = "HeartyService"


# instance fields
.field private g:[Ljava/lang/Object;

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/a;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/a/c;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/zte/zdm/heartyservice/a/b;
    .locals 1

    sget-object v0, Lcom/zte/zdm/heartyservice/a/c;->e:Lcom/zte/zdm/heartyservice/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/heartyservice/a/c;

    invoke-direct {v0, p0}, Lcom/zte/zdm/heartyservice/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zdm/heartyservice/a/c;->e:Lcom/zte/zdm/heartyservice/a/a;

    :cond_0
    sget-object v0, Lcom/zte/zdm/heartyservice/a/c;->e:Lcom/zte/zdm/heartyservice/a/a;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "HeartyService"

    const-string v2, "null == storageVolume failed in isVolumeRemoveble"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isRemovable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "HeartyService"

    const-string v3, "Storage_Standard.isVolumeRemoveble()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "HeartyService"

    const-string v3, "null == storageVolume failed in isVolumeRemoveble"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->d:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getPath"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v3, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumeState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HeartyService"

    const-string v3, "Storage_Standard.isVolumeRemoveble()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getPath"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HeartyService"

    const-string v3, "Storage_Standard_getVolumePath"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDescription"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zte/zdm/heartyservice/a/c;->d:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/a/c;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HeartyService"

    const-string v3, "Storage_Standard_getVolumePath"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDescription"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HeartyService"

    const-string v3, "Storage_Standard_getICSVolumeDescription"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->d:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/a/c;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HeartyService"

    const-string v2, "Storage_standard getStorageVolumeList failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/c;->i()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    iget-object v5, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/zte/zdm/heartyservice/a/c;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/zte/zdm/heartyservice/a/c;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    const-string v0, "HeartyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isICSStorageEMMCEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HeartyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExternalStorageEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/c;->i()V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/zte/zdm/heartyservice/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "HeartyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolumePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HeartyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolumeDescription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/zte/zdm/heartyservice/a/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v1, v4, v1

    invoke-direct {p0, v1}, Lcom/zte/zdm/heartyservice/a/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/a/c;->c()Landroid/os/Environment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/a/c;->a()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const/16 v3, 0x8

    if-ne v3, v2, :cond_1

    :cond_0
    const-string v0, "mounted"

    :goto_0
    const-string v1, "HeartyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStorageState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v2, "getExternalStorageState"

    invoke-virtual {p0, v0, v2}, Lcom/zte/zdm/heartyservice/a/c;->a(Landroid/os/Environment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/a/c;->a()I

    move-result v2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/c;->i()V

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/zte/zdm/heartyservice/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    if-ne v3, v2, :cond_4

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/zte/zdm/heartyservice/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_2
    return-object v0

    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "HeartyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storagePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v1, "HeartyService"

    const-string v2, "storagePath is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public f()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/c;->i()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/heartyservice/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "HeartyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSDcardStorageDirectory: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public g()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/c;->i()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public h()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/a/c;->i()V

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/a/c;->g:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/zte/zdm/heartyservice/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "HeartyService"

    const-string v3, "Storage_Standard.getICSVirtualStorageDirectory()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method
