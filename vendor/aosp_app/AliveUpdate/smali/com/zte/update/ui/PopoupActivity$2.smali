.class Lcom/zte/update/ui/PopoupActivity$2;
.super Ljava/lang/Object;
.source "PopoupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/PopoupActivity;->displayDataNetworkAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/PopoupActivity;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/PopoupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/zte/update/ui/PopoupActivity$2;->this$0:Lcom/zte/update/ui/PopoupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    iget-object v2, p0, Lcom/zte/update/ui/PopoupActivity$2;->this$0:Lcom/zte/update/ui/PopoupActivity;

    invoke-virtual {v2}, Lcom/zte/update/ui/PopoupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "do_sure_task"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 157
    .local v1, nextIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 158
    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 159
    iget-object v2, p0, Lcom/zte/update/ui/PopoupActivity$2;->this$0:Lcom/zte/update/ui/PopoupActivity;

    #calls: Lcom/zte/update/ui/PopoupActivity;->onPopoupClose()V
    invoke-static {v2}, Lcom/zte/update/ui/PopoupActivity;->access$000(Lcom/zte/update/ui/PopoupActivity;)V

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/zte/update/ui/PopoupActivity$2;->this$0:Lcom/zte/update/ui/PopoupActivity;

    #calls: Lcom/zte/update/ui/PopoupActivity;->onPopoupClose()V
    invoke-static {v2}, Lcom/zte/update/ui/PopoupActivity;->access$000(Lcom/zte/update/ui/PopoupActivity;)V

    goto :goto_0
.end method
