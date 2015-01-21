.class Lcom/hf/UI/CityActivity$13;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->showModyCityName(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$13;->this$0:Lcom/hf/UI/CityActivity;

    iput-object p2, p0, Lcom/hf/UI/CityActivity$13;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/CityActivity$13;->val$city:Lcom/hf/model/CityModel;

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/CityActivity$13;)Lcom/hf/UI/CityActivity;
    .locals 1
    .parameter

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/hf/UI/CityActivity$13;->this$0:Lcom/hf/UI/CityActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/hf/UI/CityActivity$13;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v1}, Lcom/hf/UI/HFDialog;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/CityActivity$13;->val$city:Lcom/hf/model/CityModel;

    iput-object v0, v1, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 1040
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hf/UI/CityActivity$13$1;

    iget-object v3, p0, Lcom/hf/UI/CityActivity$13;->val$city:Lcom/hf/model/CityModel;

    invoke-direct {v2, p0, v0, v3}, Lcom/hf/UI/CityActivity$13$1;-><init>(Lcom/hf/UI/CityActivity$13;Ljava/lang/String;Lcom/hf/model/CityModel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1051
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1053
    iget-object v1, p0, Lcom/hf/UI/CityActivity$13;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    .line 1054
    iget-object v1, p0, Lcom/hf/UI/CityActivity$13;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v1}, Lcom/hf/UI/HFDialog;->dismiss()V

    goto :goto_0
.end method
