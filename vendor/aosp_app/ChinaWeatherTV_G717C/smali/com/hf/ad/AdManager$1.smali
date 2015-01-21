.class Lcom/hf/ad/AdManager$1;
.super Landroid/os/AsyncTask;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/ad/AdManager;->showBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V
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
.field final synthetic this$0:Lcom/hf/ad/AdManager;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hiddenCloseButton:Z

.field private final synthetic val$index:I

.field private final synthetic val$rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/hf/ad/AdManager;Landroid/app/Activity;ILandroid/view/ViewGroup;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/ad/AdManager$1;->this$0:Lcom/hf/ad/AdManager;

    iput-object p2, p0, Lcom/hf/ad/AdManager$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/hf/ad/AdManager$1;->val$index:I

    iput-object p4, p0, Lcom/hf/ad/AdManager$1;->val$rootView:Landroid/view/ViewGroup;

    iput-boolean p5, p0, Lcom/hf/ad/AdManager$1;->val$hiddenCloseButton:Z

    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 46
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/hf/ad/AdManager$1;->this$0:Lcom/hf/ad/AdManager;

    invoke-static {}, Lcom/hf/http/HFWeatherHttp;->getInstance()Lcom/hf/http/HFWeatherHttp;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/ad/AdManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/hf/http/HFWeatherHttp;->getAdSwitch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/hf/ad/AdManager;->mBannerSwitch:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/hf/ad/AdManager;->access$0(Lcom/hf/ad/AdManager;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x0

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hf/ad/AdManager$1;->this$0:Lcom/hf/ad/AdManager;

    iget v1, p0, Lcom/hf/ad/AdManager$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/hf/ad/AdManager;->isShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hf/ad/AdManager$1;->this$0:Lcom/hf/ad/AdManager;

    iget-object v1, p0, Lcom/hf/ad/AdManager$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/hf/ad/AdManager$1;->val$rootView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/hf/ad/AdManager$1;->val$index:I

    iget-boolean v4, p0, Lcom/hf/ad/AdManager$1;->val$hiddenCloseButton:Z

    #calls: Lcom/hf/ad/AdManager;->addBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/hf/ad/AdManager;->access$1(Lcom/hf/ad/AdManager;Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V

    .line 59
    :cond_0
    return-void
.end method
