.class Lcom/hf/UI/MainActivity$3;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->initCitysAndWeathers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$3;->this$0:Lcom/hf/UI/MainActivity;

    .line 324
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "params"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/hf/UI/MainActivity$3;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/hf/HFWeatherApp;

    .line 337
    invoke-virtual {v0}, Lcom/hf/HFWeatherApp;->initWeathers()V

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.hf.RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/hf/UI/MainActivity$3;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v1, v0}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    iget-object v1, p0, Lcom/hf/UI/MainActivity$3;->this$0:Lcom/hf/UI/MainActivity;

    #calls: Lcom/hf/UI/MainActivity;->sendQueryAllBroadcast()V
    invoke-static {v1}, Lcom/hf/UI/MainActivity;->access$7(Lcom/hf/UI/MainActivity;)V

    .line 347
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$3;->this$0:Lcom/hf/UI/MainActivity;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/hf/UI/MainActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method
