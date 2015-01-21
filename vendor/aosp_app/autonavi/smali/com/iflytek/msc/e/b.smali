.class public Lcom/iflytek/msc/e/b;
.super Lcom/iflytek/msc/c/c;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/msc/e/a;

.field private e:Lcom/iflytek/speech/b;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/msc/e/b;->a:I

    sput v0, Lcom/iflytek/msc/e/b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/c/c;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/e/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    iput-object v1, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    iput-object v1, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    iput v2, p0, Lcom/iflytek/msc/e/b;->g:I

    iput v2, p0, Lcom/iflytek/msc/e/b;->h:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/e/b;->i:J

    new-instance v0, Lcom/iflytek/msc/e/a;

    invoke-direct {v0}, Lcom/iflytek/msc/e/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/b;)V
    .locals 4

    iput-object p1, p0, Lcom/iflytek/msc/e/b;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/iflytek/msc/e/b;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0xd

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/msc/e/b;->p()V

    goto :goto_0
.end method

.method protected c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v7, 0x32

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->b:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/msc/e/b;->o()Lcom/iflytek/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/b/c;->a(Lcom/iflytek/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/msc/a/c;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->l:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/c;->d()Lcom/iflytek/speech/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/c;->getInitParam()Lcom/iflytek/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/e/a;->a(Landroid/content/Context;Lcom/iflytek/b/b;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/e/b;->i:J

    sget-object v0, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/e/b;->a(Lcom/iflytek/msc/c/c$a;)V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->c()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->l:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/msc/e/b;->o()Lcom/iflytek/b/b;

    move-result-object v2

    const-string v3, "gb2312"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/msc/e/a;->a(Landroid/content/Context;Lcom/iflytek/b/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->c:Ljava/lang/String;

    const-string v2, "gb2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/e/a;->a([B)V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/e/b;->a(Lcom/iflytek/msc/c/c$a;)V

    goto :goto_0

    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    iget-wide v0, p0, Lcom/iflytek/msc/e/b;->i:J

    iget v2, p0, Lcom/iflytek/msc/e/b;->p:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/e/b;->a(JI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    invoke-virtual {v0}, Lcom/iflytek/msc/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    invoke-virtual {v0}, Lcom/iflytek/msc/e/a;->c()[B

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    invoke-virtual {v1}, Lcom/iflytek/msc/e/a;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/iflytek/msc/e/b;->g:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/iflytek/msc/e/b;->g:I

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget v2, p0, Lcom/iflytek/msc/e/b;->g:I

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/iflytek/msc/e/b;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    iget-object v4, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iflytek/msc/e/b;->h:I

    iget v6, p0, Lcom/iflytek/msc/e/b;->g:I

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/iflytek/speech/b;->a(Ljava/util/ArrayList;III)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iflytek/msc/e/b;->g:I

    iput v2, p0, Lcom/iflytek/msc/e/b;->h:I

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/msc/e/b;->i:J

    iput v1, p0, Lcom/iflytek/msc/e/b;->g:I

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iflytek/msc/a/e;->b()V

    :cond_6
    iget-wide v0, p0, Lcom/iflytek/msc/e/b;->i:J

    iget v2, p0, Lcom/iflytek/msc/e/b;->p:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/e/b;->a(JI)V

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->f:Ljava/util/ArrayList;

    const/16 v2, 0x64

    iget v3, p0, Lcom/iflytek/msc/e/b;->h:I

    iget-object v4, p0, Lcom/iflytek/msc/e/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/iflytek/speech/b;->a(Ljava/util/ArrayList;III)V

    invoke-virtual {p0}, Lcom/iflytek/msc/e/b;->m()V

    goto/16 :goto_0
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/e/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/e/b;->a:I

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/e/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/e/b;->b:I

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/e/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->d()V

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/e/b;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "MscSynthesizer#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    invoke-interface {v0}, Lcom/iflytek/speech/b;->a()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->q:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/e/b;->q:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/e/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QTts Error Code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->q:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/e/b;->d:Lcom/iflytek/msc/e/a;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/e/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "MscSynthesizer#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/e/b;->e:Lcom/iflytek/speech/b;

    iget-object v1, p0, Lcom/iflytek/msc/e/b;->q:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1
.end method
