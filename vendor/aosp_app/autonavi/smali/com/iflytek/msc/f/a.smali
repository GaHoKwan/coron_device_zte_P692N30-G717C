.class public Lcom/iflytek/msc/f/a;
.super Lcom/iflytek/msc/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/f/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/msc/f/a$a;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/msc/f/b;

.field private h:Lcom/iflytek/speech/SpeechListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/c/c;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/msc/f/a$a;->b:Lcom/iflytek/msc/f/a$a;

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    iput-object v1, p0, Lcom/iflytek/msc/f/a;->c:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->f:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/msc/f/b;

    invoke-direct {v0}, Lcom/iflytek/msc/f/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->g:Lcom/iflytek/msc/f/b;

    iput-object v1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    invoke-virtual {p0, p2}, Lcom/iflytek/msc/f/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/f/a$a;->c:Lcom/iflytek/msc/f/a$a;

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->p()V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    invoke-virtual {p0, p2}, Lcom/iflytek/msc/f/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/f/a$a;->d:Lcom/iflytek/msc/f/a$a;

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    iput-object p3, p0, Lcom/iflytek/msc/f/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->p()V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/b/b;)V
    .locals 1

    iput-object p2, p0, Lcom/iflytek/msc/f/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/f/a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    sget-object v0, Lcom/iflytek/msc/f/a$a;->a:Lcom/iflytek/msc/f/a$a;

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    invoke-virtual {p0, p4}, Lcom/iflytek/msc/f/a;->a(Lcom/iflytek/b/b;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->p()V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    invoke-virtual {p0, p3}, Lcom/iflytek/msc/f/a;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iflytek/msc/f/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/msc/f/a;->c:[B

    sget-object v0, Lcom/iflytek/msc/f/a$a;->b:Lcom/iflytek/msc/f/a$a;

    iput-object v0, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->p()V

    return-void
.end method

.method protected c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v3, 0xd

    const/16 v5, 0x7530

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->b:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/f/a;->a(Lcom/iflytek/msc/c/c$a;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/f/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    check-cast v0, [B

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    sget-object v2, Lcom/iflytek/msc/f/a$a;->a:Lcom/iflytek/msc/f/a$a;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/f/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/f/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->o()Lcom/iflytek/b/b;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/msc/f/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/b/b;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    sget-object v2, Lcom/iflytek/msc/f/a$a;->a:Lcom/iflytek/msc/f/a$a;

    if-eq v1, v2, :cond_a

    if-nez v0, :cond_9

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v5}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    sget-object v2, Lcom/iflytek/msc/f/a$a;->b:Lcom/iflytek/msc/f/a$a;

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->c:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->c:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v0, v3, v5}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/iflytek/msc/f/a;->g:Lcom/iflytek/msc/f/b;

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/f/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/f/a;->c:[B

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->o()Lcom/iflytek/b/b;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/msc/f/b;->a(Landroid/content/Context;Ljava/lang/String;[BLcom/iflytek/b/b;)[B

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    sget-object v2, Lcom/iflytek/msc/f/a$a;->c:Lcom/iflytek/msc/f/a$a;

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->g:Lcom/iflytek/msc/f/b;

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->l:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->o()Lcom/iflytek/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/msc/f/b;->a(Landroid/content/Context;Lcom/iflytek/b/b;)[B

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/iflytek/msc/f/a;->b:Lcom/iflytek/msc/f/a$a;

    sget-object v2, Lcom/iflytek/msc/f/a$a;->d:Lcom/iflytek/msc/f/a$a;

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v0, v3, v5}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/iflytek/msc/f/a;->g:Lcom/iflytek/msc/f/b;

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->l:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->o()Lcom/iflytek/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/msc/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/msc/f/b;->a(Landroid/content/Context;Lcom/iflytek/b/b;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    invoke-interface {v1, v0}, Lcom/iflytek/speech/SpeechListener;->onData([B)V

    :cond_a
    invoke-virtual {p0}, Lcom/iflytek/msc/f/a;->m()V

    goto/16 :goto_0
.end method

.method protected d()V
    .locals 2

    invoke-super {p0}, Lcom/iflytek/msc/c/c;->d()V

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/f/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/f/a;->h:Lcom/iflytek/speech/SpeechListener;

    iget-object v1, p0, Lcom/iflytek/msc/f/a;->q:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/SpeechListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    return-void
.end method
