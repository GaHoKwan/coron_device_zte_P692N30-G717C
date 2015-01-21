.class Lcom/zte/feedback/UEImprove$1$2;
.super Ljava/lang/Object;
.source "UEImprove.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/UEImprove$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/feedback/UEImprove$1;


# direct methods
.method constructor <init>(Lcom/zte/feedback/UEImprove$1;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zte/feedback/UEImprove$1$2;->this$1:Lcom/zte/feedback/UEImprove$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 71
    const-string v2, "UEImprove"

    const-string v3, "feed back"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1$2;->this$1:Lcom/zte/feedback/UEImprove$1;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/floater/NetworkUtil;->updateConnectedFlags(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getMobileState()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    const-string v2, "UEImprove"

    const-string v3, " feed back now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1$2;->this$1:Lcom/zte/feedback/UEImprove$1;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    invoke-virtual {v2, v4}, Lcom/zte/feedback/UEImprove;->submitCrashInfo(Z)V

    .line 104
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "UEImprove"

    const-string v3, " xxxxxxxxxx"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1$2;->this$1:Lcom/zte/feedback/UEImprove$1;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    const v3, 0x7f0a067a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 94
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 95
    .restart local v1       #field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 98
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
