.class Lcom/hf/UI/LogoActivity$1;
.super Landroid/os/AsyncTask;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/LogoActivity;->checkPermission()V
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
.field private agreePermission:Z

.field private preferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/hf/UI/LogoActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/LogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/LogoActivity$1;->this$0:Lcom/hf/UI/LogoActivity;

    .line 93
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 99
    .line 100
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$1;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/hf/UI/LogoActivity$1;->preferences:Landroid/content/SharedPreferences;

    .line 101
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$1;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "agree_permission"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hf/UI/LogoActivity$1;->agreePermission:Z

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/hf/UI/LogoActivity$1;->agreePermission:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$1;->this$0:Lcom/hf/UI/LogoActivity;

    iget-object v1, p0, Lcom/hf/UI/LogoActivity$1;->preferences:Landroid/content/SharedPreferences;

    #calls: Lcom/hf/UI/LogoActivity;->showPermissionDialog(Landroid/content/SharedPreferences;)V
    invoke-static {v0, v1}, Lcom/hf/UI/LogoActivity;->access$0(Lcom/hf/UI/LogoActivity;Landroid/content/SharedPreferences;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$1;->this$0:Lcom/hf/UI/LogoActivity;

    #calls: Lcom/hf/UI/LogoActivity;->initWeather()V
    invoke-static {v0}, Lcom/hf/UI/LogoActivity;->access$1(Lcom/hf/UI/LogoActivity;)V

    goto :goto_0
.end method
