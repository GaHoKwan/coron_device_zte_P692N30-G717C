.class final Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->b(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->cleanup()V

    :cond_0
    return-void
.end method
