.class Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity$1;
.super Ljava/lang/Object;
.source "MainAntiEavesdropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v1, 0x1

    .line 52
    .local v1, success:Z
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isAntieavesdropEnable()Z

    move-result v0

    .line 53
    .local v0, isEnable:Z
    if-ne v0, v2, :cond_0

    .line 54
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->disableAntieavesdrop()Z

    move-result v1

    .line 58
    :goto_0
    if-nez v1, :cond_1

    .line 59
    iget-object v2, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;

    const v4, 0x7f0a03cc

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 64
    :goto_1
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->enableAntieavesdrop()Z

    move-result v1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;

    if-nez v0, :cond_2

    :goto_2
    #calls: Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->setText(Z)V
    invoke-static {v4, v2}, Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;->access$000(Lcom/zte/heartyservice/antieavesdrop/MainAntiEavesdropActivity;Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method
