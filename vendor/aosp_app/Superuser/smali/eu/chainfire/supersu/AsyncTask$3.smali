.class Leu/chainfire/supersu/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/AsyncTask;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AsyncTask;Leu/chainfire/supersu/AsyncTask$WorkerRunnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AsyncTask$3;->鷭:Leu/chainfire/supersu/AsyncTask;

    .line 157
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 0
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v3

    .line 163
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask$3;->鷭:Leu/chainfire/supersu/AsyncTask;

    invoke-static {v0, v3}, Leu/chainfire/supersu/AsyncTask;->ˮ͈(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 164
    return-void

    :catch_0
    move-exception v3

    .line 165
    const-string v0, "AsyncTask"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 166
    :catch_1
    move-exception v3

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occured while executing doInBackground()"

    .line 168
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 167
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 169
    .line 170
    :catch_2
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask$3;->鷭:Leu/chainfire/supersu/AsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/AsyncTask;->ˮ͈(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V

    return-void

    .line 171
    :catch_3
    move-exception v3

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occured while executing doInBackground()"

    .line 172
    .line 173
    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
