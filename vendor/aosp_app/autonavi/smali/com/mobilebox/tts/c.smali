.class Lcom/mobilebox/tts/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/mobilebox/tts/b;


# direct methods
.method constructor <init>(Lcom/mobilebox/tts/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/tts/c;->a:Lcom/mobilebox/tts/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mobilebox/tts/c;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->a(Lcom/mobilebox/tts/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobilebox/tts/c;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->b(Lcom/mobilebox/tts/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobilebox/tts/c;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->c(Lcom/mobilebox/tts/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobilebox/tts/c;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->d(Lcom/mobilebox/tts/b;)I

    goto :goto_0
.end method
