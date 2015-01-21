.class Lcom/hf/UI/MainActivity$2;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->translation()V
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
.field private isFirst:Z

.field private preferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$2;->this$0:Lcom/hf/UI/MainActivity;

    .line 275
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 281
    .line 282
    iget-object v0, p0, Lcom/hf/UI/MainActivity$2;->this$0:Lcom/hf/UI/MainActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/hf/UI/MainActivity$2;->preferences:Landroid/content/SharedPreferences;

    .line 283
    iget-object v0, p0, Lcom/hf/UI/MainActivity$2;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "translation_switch"

    .line 284
    const/4 v2, 0x1

    .line 283
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hf/UI/MainActivity$2;->isFirst:Z

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity$2;->isFirst:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/hf/UI/MainActivity$2;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v1, p0, Lcom/hf/UI/MainActivity$2;->preferences:Landroid/content/SharedPreferences;

    #calls: Lcom/hf/UI/MainActivity;->showTranslationDialog(Landroid/content/SharedPreferences;)V
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$6(Lcom/hf/UI/MainActivity;Landroid/content/SharedPreferences;)V

    .line 295
    :cond_0
    return-void
.end method
