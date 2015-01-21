.class Lcom/hf/UI/SKView$1;
.super Ljava/lang/Object;
.source "SKView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/SKView;

.field private final synthetic val$warning:Lcom/hf/model/WarningModel;

.field private final synthetic val$warningList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hf/UI/SKView;Ljava/util/List;Lcom/hf/model/WarningModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    iput-object p2, p0, Lcom/hf/UI/SKView$1;->val$warningList:Ljava/util/List;

    iput-object p3, p0, Lcom/hf/UI/SKView$1;->val$warning:Lcom/hf/model/WarningModel;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 214
    .local v3, value:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/hf/UI/SKView$1;->val$warningList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/hf/UI/WarningListActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_1
    const-string v4, "city_id"

    iget-object v5, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    iget-object v5, v5, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    invoke-virtual {v4}, Lcom/hf/UI/SKView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    iget-object v5, v5, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    invoke-static {v4, v5}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, cityName:Ljava/lang/String;
    const-string v4, "city_name"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 227
    iget-object v4, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    move v4, v5

    .line 214
    goto :goto_0

    .line 220
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/hf/UI/SKView$1;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/hf/UI/WarningItemActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "warning_model"

    iget-object v5, p0, Lcom/hf/UI/SKView$1;->val$warning:Lcom/hf/model/WarningModel;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1
.end method
