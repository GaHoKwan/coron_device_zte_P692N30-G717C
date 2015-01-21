.class Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$4;
.super Ljava/lang/Object;
.source "ZTEInterceptSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method
