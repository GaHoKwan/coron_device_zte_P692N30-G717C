.class final Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->b(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Vibrate;->done()V

    return-void
.end method
