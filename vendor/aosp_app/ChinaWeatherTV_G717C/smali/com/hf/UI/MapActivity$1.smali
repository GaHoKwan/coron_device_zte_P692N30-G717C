.class Lcom/hf/UI/MapActivity$1;
.super Landroid/os/AsyncTask;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MapActivity;->loadBitmap()V
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
.field final synthetic this$0:Lcom/hf/UI/MapActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v2, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    const-string v3, "ladar_tu.jpg"

    invoke-virtual {v2, v3}, Lcom/hf/UI/MapActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/hf/UI/MapActivity;->access$0(Lcom/hf/UI/MapActivity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    #getter for: Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/hf/UI/MapActivity;->access$1(Lcom/hf/UI/MapActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    const-string v1, "http://app.weathercn.com/app/leida/leida_L.jpg"

    const/4 v2, 0x1

    #calls: Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/hf/UI/MapActivity;->access$2(Lcom/hf/UI/MapActivity;Ljava/lang/String;Z)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    #getter for: Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/hf/UI/MapActivity;->access$3(Lcom/hf/UI/MapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/MapActivity$1;->this$0:Lcom/hf/UI/MapActivity;

    #getter for: Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/hf/UI/MapActivity;->access$1(Lcom/hf/UI/MapActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
