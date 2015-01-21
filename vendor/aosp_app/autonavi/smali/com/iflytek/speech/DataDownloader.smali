.class public Lcom/iflytek/speech/DataDownloader;
.super Lcom/iflytek/msc/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/iflytek/msc/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/speech/DataDownloader;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " destory mInstance=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public downloadData(Landroid/content/Context;Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/iflytek/msc/f/a;

    invoke-direct {v0, p1}, Lcom/iflytek/msc/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/DataDownloader;->d:Lcom/iflytek/msc/c/c;

    iget-object v0, p0, Lcom/iflytek/speech/DataDownloader;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/f/a;

    new-instance v1, Lcom/iflytek/msc/c/a$a;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/msc/c/a$a;-><init>(Lcom/iflytek/msc/c/a;Lcom/iflytek/speech/SpeechListener;)V

    invoke-virtual {v0, v1, p3}, Lcom/iflytek/msc/f/a;->a(Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;)V

    return-void
.end method
