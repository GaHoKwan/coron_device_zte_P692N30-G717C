.class final Lcom/farben/faq/bp;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/farben/faq/WelcomeActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/farben/faq/bp;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    sput v0, Lcom/farben/faq/WelcomeActivity;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDX-INIT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/farben/faq/WelcomeActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/farben/faq/WelcomeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Lcom/farben/faq/WelcomeActivity;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/farben/faq/WelcomeActivity;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/bp;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/farben/faq/bp;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDX:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/farben/faq/WelcomeActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/farben/faq/WelcomeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
