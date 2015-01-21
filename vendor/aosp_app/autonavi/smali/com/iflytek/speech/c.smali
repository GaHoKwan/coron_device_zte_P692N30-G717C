.class public Lcom/iflytek/speech/c;
.super Lcom/iflytek/msc/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/c$a;
    }
.end annotation


# static fields
.field private static e:Lcom/iflytek/speech/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/msc/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/c;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/c;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    return-object v0
.end method

.method public static d()Lcom/iflytek/speech/c;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    return-object v0
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "downflow"

    invoke-static {v0}, Lcom/iflytek/msc/e/a;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/e/b;->b:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->c(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->c(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/msc/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/speech/c;->e:Lcom/iflytek/speech/c;

    :cond_0
    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/b;)Z
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/iflytek/speech/c$a;

    invoke-direct {v2, p0, p3}, Lcom/iflytek/speech/c$a;-><init>(Lcom/iflytek/speech/c;Lcom/iflytek/speech/b;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/c;->isAvaible()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x13

    const/16 v4, 0x7530

    invoke-direct {v0, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/iflytek/speech/c$a;->a(Lcom/iflytek/speech/SpeechError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/iflytek/msc/e/b;

    iget-object v3, p0, Lcom/iflytek/speech/c;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/msc/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/c;->d:Lcom/iflytek/msc/c/c;

    iget-object v0, p0, Lcom/iflytek/speech/c;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/e/b;

    invoke-virtual {v0, p1, p2, v2}, Lcom/iflytek/msc/e/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/b;)V

    invoke-static {}, Lcom/iflytek/msc/e/a;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "upflow"

    invoke-static {v0}, Lcom/iflytek/msc/e/a;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/e/b;->a:I

    goto :goto_0
.end method

.method protected b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/speech/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/speech/c;->a:Lcom/iflytek/b/b;

    invoke-static {v0, v1}, Lcom/iflytek/msc/e/a;->a(Landroid/content/Context;Lcom/iflytek/b/b;)V

    invoke-super {p0}, Lcom/iflytek/msc/c/a;->b()V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->b(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->d(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->b(Ljava/lang/String;)V

    return-void
.end method
