.class Lcom/hf/UI/MapActivity$6;
.super Landroid/os/AsyncTask;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MapActivity;->setBitmap(Ljava/lang/String;Z)V
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
.field private bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/hf/UI/MapActivity;

.field private final synthetic val$isLeida:Z

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/MapActivity;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    iput-boolean p2, p0, Lcom/hf/UI/MapActivity$6;->val$isLeida:Z

    iput-object p3, p0, Lcom/hf/UI/MapActivity$6;->val$url:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 226
    invoke-static {}, Lcom/hf/http/HFWeatherHttp;->getInstance()Lcom/hf/http/HFWeatherHttp;

    move-result-object v0

    .line 227
    .local v0, http:Lcom/hf/http/HFWeatherHttp;
    iget-boolean v1, p0, Lcom/hf/UI/MapActivity$6;->val$isLeida:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v2, p0, Lcom/hf/UI/MapActivity$6;->val$url:Ljava/lang/String;

    const-string v3, "ladar_tu.jpg"

    invoke-virtual {v0, v1, v2, v3}, Lcom/hf/http/HFWeatherHttp;->getIntentBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/MapActivity$6;->bitmap:Landroid/graphics/Bitmap;

    .line 233
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v2, p0, Lcom/hf/UI/MapActivity$6;->val$url:Ljava/lang/String;

    const-string v3, "run_tu.jpg"

    invoke-virtual {v0, v1, v2, v3}, Lcom/hf/http/HFWeatherHttp;->getIntentBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/MapActivity$6;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/hf/UI/MapActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/MapActivity$6;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/hf/UI/MapActivity$6;->val$isLeida:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v1, p0, Lcom/hf/UI/MapActivity$6;->bitmap:Landroid/graphics/Bitmap;

    #setter for: Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/hf/UI/MapActivity;->access$0(Lcom/hf/UI/MapActivity;Landroid/graphics/Bitmap;)V

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    #getter for: Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/hf/UI/MapActivity;->access$3(Lcom/hf/UI/MapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/MapActivity$6;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    :cond_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v1, p0, Lcom/hf/UI/MapActivity$6;->bitmap:Landroid/graphics/Bitmap;

    #setter for: Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/hf/UI/MapActivity;->access$6(Lcom/hf/UI/MapActivity;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MapActivity$6;->this$0:Lcom/hf/UI/MapActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/hf/UI/MapActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method
