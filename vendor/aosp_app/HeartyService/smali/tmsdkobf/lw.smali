.class public Ltmsdkobf/lw;
.super Ltmsdkobf/lr;
.source "SourceFile"


# instance fields
.field DE:Ljava/text/SimpleDateFormat;

.field private DF:Ljava/lang/String;

.field private DG:I

.field private DH:Ljava/lang/String;

.field private DI:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdkobf/lr;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/lw;->DE:Ljava/text/SimpleDateFormat;

    .line 27
    iget-object v0, p0, Ltmsdkobf/lw;->DE:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/lw;->DF:Ljava/lang/String;

    .line 32
    invoke-static {}, Ltmsdkobf/lv;->gM()I

    move-result v0

    iput v0, p0, Ltmsdkobf/lw;->DG:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/lw;->DI:I

    return-void
.end method

.method private hf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Ltmsdkobf/lu;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    const-string v1, "fore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "f"

    iput-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    return-object v0

    .line 64
    :cond_1
    const-string v0, "b"

    iput-object v0, p0, Ltmsdkobf/lw;->DH:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public gD()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    iget v0, p0, Ltmsdkobf/lw;->DG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltmsdkobf/lw;->DG:I

    invoke-static {}, Ltmsdkobf/lv;->gM()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 48
    invoke-static {}, Ltmsdkobf/ke;->ff()J

    move-result-wide v0

    invoke-static {}, Ltmsdkobf/lv;->gN()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget v0, p0, Ltmsdkobf/lw;->DI:I

    if-gez v0, :cond_1

    .line 52
    const-string v0, "%s_ul_%s.ul"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Ltmsdkobf/lw;->hf()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Ltmsdkobf/lw;->DF:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "%s_ul%d_%s.ul"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Ltmsdkobf/lw;->hf()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Ltmsdkobf/lw;->DI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Ltmsdkobf/lw;->DF:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gE()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    iget-object v7, p0, Ltmsdkobf/lw;->DE:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ltmsdkobf/lw;->DF:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Ltmsdkobf/lw;->gD()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, logFileName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v5

    .line 78
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ltmsdkobf/lu;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, file:Ljava/io/File;
    const-string v7, "UserLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 81
    goto :goto_0

    .line 85
    :cond_2
    iget v7, p0, Ltmsdkobf/lw;->DG:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ltmsdkobf/lw;->DG:I

    invoke-static {}, Ltmsdkobf/lv;->gM()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 86
    iput v5, p0, Ltmsdkobf/lw;->DG:I

    .line 87
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ltmsdkobf/lu;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ltmsdkobf/lw;->gD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, checkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 89
    .local v3, size:J
    :goto_1
    invoke-static {}, Ltmsdkobf/lv;->gR()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-lez v7, :cond_3

    .line 90
    iget v7, p0, Ltmsdkobf/lw;->DI:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ltmsdkobf/lw;->DI:I

    .line 91
    new-instance v0, Ljava/io/File;

    .end local v0           #checkFile:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ltmsdkobf/lu;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ltmsdkobf/lw;->gD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0       #checkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    .line 97
    goto/16 :goto_0
.end method
