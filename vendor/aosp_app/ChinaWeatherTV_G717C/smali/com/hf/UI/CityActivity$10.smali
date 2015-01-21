.class Lcom/hf/UI/CityActivity$10;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->showModifyDialog(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;ZLcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$10;->this$0:Lcom/hf/UI/CityActivity;

    iput-object p2, p0, Lcom/hf/UI/CityActivity$10;->val$city:Lcom/hf/model/CityModel;

    iput-boolean p3, p0, Lcom/hf/UI/CityActivity$10;->val$value:Z

    iput-object p4, p0, Lcom/hf/UI/CityActivity$10;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/CityActivity$10;)Lcom/hf/UI/CityActivity;
    .locals 1
    .parameter

    .prologue
    .line 881
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->this$0:Lcom/hf/UI/CityActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 915
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 916
    return-void

    .line 887
    :pswitch_0
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->this$0:Lcom/hf/UI/CityActivity;

    iget-object v1, p0, Lcom/hf/UI/CityActivity$10;->val$city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/UI/CityActivity;->setCityAsDefault(Lcom/hf/model/CityModel;)V
    invoke-static {v0, v1}, Lcom/hf/UI/CityActivity;->access$20(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V

    goto :goto_0

    .line 890
    :pswitch_1
    iget-boolean v0, p0, Lcom/hf/UI/CityActivity$10;->val$value:Z

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->this$0:Lcom/hf/UI/CityActivity;

    iget-object v1, p0, Lcom/hf/UI/CityActivity$10;->val$city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/UI/CityActivity;->showModyCityName(Lcom/hf/model/CityModel;)V
    invoke-static {v0, v1}, Lcom/hf/UI/CityActivity;->access$21(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V

    goto :goto_0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->val$city:Lcom/hf/model/CityModel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    .line 895
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/UI/CityActivity$10$1;

    iget-object v2, p0, Lcom/hf/UI/CityActivity$10;->val$city:Lcom/hf/model/CityModel;

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/CityActivity$10$1;-><init>(Lcom/hf/UI/CityActivity$10;Lcom/hf/model/CityModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 906
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 910
    :pswitch_2
    iget-object v0, p0, Lcom/hf/UI/CityActivity$10;->this$0:Lcom/hf/UI/CityActivity;

    iget-object v1, p0, Lcom/hf/UI/CityActivity$10;->val$city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/UI/CityActivity;->deleteCity(Lcom/hf/model/CityModel;)V
    invoke-static {v0, v1}, Lcom/hf/UI/CityActivity;->access$22(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V

    goto :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
