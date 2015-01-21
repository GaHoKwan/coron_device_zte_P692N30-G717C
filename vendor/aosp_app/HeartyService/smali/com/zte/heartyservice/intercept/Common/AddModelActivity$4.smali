.class Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;
.super Ljava/lang/Object;
.source "AddModelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->access$200(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->access$300(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 115
    packed-switch p2, :pswitch_data_0

    .line 123
    const-string v2, "AddModelActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error onClick which "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v2, "add_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 120
    :pswitch_1
    const-string v2, "add_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "AddModelActivity"

    const-string v3, "onClick "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
