.class public Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;
.super Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# instance fields
.field private a:Landroid/os/Vibrator;

.field private b:Ljava/lang/Runnable;

.field private c:Landroid/os/Handler;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a:Landroid/os/Vibrator;

    iput p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->d:I

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->b:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onCancel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->c:Landroid/os/Handler;

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->b:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v0, "Unable to get vibrator service"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->done()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a:Landroid/os/Vibrator;

    iget v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->c:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->b:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->b:Ljava/lang/Runnable;

    iget v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
