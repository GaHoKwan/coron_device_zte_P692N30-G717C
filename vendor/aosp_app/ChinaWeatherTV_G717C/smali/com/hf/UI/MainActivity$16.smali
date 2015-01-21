.class Lcom/hf/UI/MainActivity$16;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->checkAD()V
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
.field private bitmap:Landroid/graphics/drawable/Drawable;

.field private linkUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    .line 820
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/MainActivity$16;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 822
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/MainActivity$16;)Lcom/hf/UI/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 820
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 826
    invoke-static {}, Lcom/hf/http/HFWeatherHttp;->getInstance()Lcom/hf/http/HFWeatherHttp;

    move-result-object v0

    .line 827
    .local v0, http:Lcom/hf/http/HFWeatherHttp;
    iget-object v4, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v0, v4}, Lcom/hf/http/HFWeatherHttp;->downloadAD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 829
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-object v7

    .line 833
    :cond_1
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, urls:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 838
    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    aget-object v4, v2, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_0

    .line 842
    aget-object v4, v2, v6

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v0, v4, v1}, Lcom/hf/http/HFWeatherHttp;->getIntentBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/MainActivity$16;->bitmap:Landroid/graphics/drawable/Drawable;

    .line 846
    aget-object v4, v2, v8

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/MainActivity$16;->linkUrl:Ljava/lang/String;

    .line 847
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_0

    .line 848
    const-string v4, "checkAD"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "link = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hf/UI/MainActivity$16;->linkUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->bitmap:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mADLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$15(Lcom/hf/UI/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    new-instance v1, Lcom/hf/UI/ADView;

    iget-object v2, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v3, p0, Lcom/hf/UI/MainActivity$16;->bitmap:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2, v3}, Lcom/hf/UI/ADView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    #setter for: Lcom/hf/UI/MainActivity;->mADView:Lcom/hf/UI/ADView;
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$16(Lcom/hf/UI/MainActivity;Lcom/hf/UI/ADView;)V

    .line 859
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mADView:Lcom/hf/UI/ADView;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$17(Lcom/hf/UI/MainActivity;)Lcom/hf/UI/ADView;

    move-result-object v0

    new-instance v1, Lcom/hf/UI/MainActivity$16$1;

    invoke-direct {v1, p0}, Lcom/hf/UI/MainActivity$16$1;-><init>(Lcom/hf/UI/MainActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/ADView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mADViewLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$18(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mADView:Lcom/hf/UI/ADView;
    invoke-static {v1}, Lcom/hf/UI/MainActivity;->access$17(Lcom/hf/UI/MainActivity;)Lcom/hf/UI/ADView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #calls: Lcom/hf/UI/MainActivity;->showNetwork()V
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$19(Lcom/hf/UI/MainActivity;)V

    .line 873
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #calls: Lcom/hf/UI/MainActivity;->getCityFormLocation()V
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$20(Lcom/hf/UI/MainActivity;)V

    .line 875
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mADLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$15(Lcom/hf/UI/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
