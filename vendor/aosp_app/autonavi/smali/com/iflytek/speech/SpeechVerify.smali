.class public Lcom/iflytek/speech/SpeechVerify;
.super Lcom/iflytek/msc/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/SpeechVerify$DownloadListener;,
        Lcom/iflytek/speech/SpeechVerify$a;,
        Lcom/iflytek/speech/SpeechVerify$PassWord;
    }
.end annotation


# static fields
.field private static f:Lcom/iflytek/speech/SpeechVerify;


# instance fields
.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/SpeechVerify$PassWord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/msc/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->e:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechVerify;[BLjava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/speech/SpeechVerify;->a([BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/SpeechVerify$PassWord;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/String;

    const-string v2, "gb2312"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    const/4 v3, 0x4

    aget-object v4, v2, v1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    new-instance v5, Lcom/iflytek/speech/SpeechVerify$PassWord;

    invoke-direct {v5, p0}, Lcom/iflytek/speech/SpeechVerify$PassWord;-><init>(Lcom/iflytek/speech/SpeechVerify;)V

    iput-object p2, v5, Lcom/iflytek/speech/SpeechVerify$PassWord;->pwdt:Ljava/lang/String;

    aget-object v6, v2, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/iflytek/speech/SpeechVerify$PassWord;->pwid:Ljava/lang/String;

    aget-object v3, v2, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/iflytek/speech/SpeechVerify$PassWord;->pwtext:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechVerify;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechVerify;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/SpeechVerify;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V
    .locals 5

    invoke-virtual {p0}, Lcom/iflytek/speech/SpeechVerify;->isAvaible()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechVerify$a;

    invoke-direct {v0, p0, p4}, Lcom/iflytek/speech/SpeechVerify$a;-><init>(Lcom/iflytek/speech/SpeechVerify;Lcom/iflytek/speech/VerifyListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x13

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechVerify$a;->onEnd(Lcom/iflytek/speech/VerifyResult;Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/msc/d/a;

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/msc/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->d:Lcom/iflytek/msc/c/c;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/d/a;

    new-instance v1, Lcom/iflytek/speech/SpeechVerify$a;

    invoke-direct {v1, p0, p4}, Lcom/iflytek/speech/SpeechVerify$a;-><init>(Lcom/iflytek/speech/SpeechVerify;Lcom/iflytek/speech/VerifyListener;)V

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MscVerifier, startVerify mscer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createVerifier(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SpeechVerify;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechVerify;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/SpeechVerify;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    return-object v0
.end method

.method public static getVerifier()Lcom/iflytek/speech/SpeechVerify;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/msc/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/speech/SpeechVerify;->f:Lcom/iflytek/speech/SpeechVerify;

    :cond_0
    return v0
.end method

.method public getPasswordList(Landroid/content/Context;Lcom/iflytek/speech/SpeechVerify$DownloadListener;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lcom/iflytek/speech/SpeechVerify$DownloadListener;->onData(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/iflytek/speech/a;

    invoke-direct {v0, p0, p3, p2}, Lcom/iflytek/speech/a;-><init>(Lcom/iflytek/speech/SpeechVerify;Ljava/lang/String;Lcom/iflytek/speech/SpeechVerify$DownloadListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rse=gb2312,sub=ivp,pwdt="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/speech/DataDownloader;

    invoke-direct {v2}, Lcom/iflytek/speech/DataDownloader;-><init>()V

    invoke-virtual {v2, p1, v0, v1}, Lcom/iflytek/speech/DataDownloader;->downloadData(Landroid/content/Context;Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identify(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V
    .locals 1

    const-string v0, "identify"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/iflytek/speech/SpeechVerify;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V
    .locals 1

    const-string v0, "train"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/iflytek/speech/SpeechVerify;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->d:Lcom/iflytek/msc/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/d/a;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/a;->a()Z

    :cond_0
    return-void
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V
    .locals 1

    const-string v0, "verify"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/iflytek/speech/SpeechVerify;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V

    return-void
.end method
