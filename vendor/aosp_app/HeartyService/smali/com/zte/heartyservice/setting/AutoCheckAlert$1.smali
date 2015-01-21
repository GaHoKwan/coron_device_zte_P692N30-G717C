.class Lcom/zte/heartyservice/setting/AutoCheckAlert$1;
.super Ljava/lang/Object;
.source "AutoCheckAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/AutoCheckAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoCheckAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoCheckAlert$1;->this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.EXAMINATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoCheckAlert$1;->this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoCheckAlert$1;->this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;

    invoke-virtual {v2}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->finish()V

    .line 48
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
