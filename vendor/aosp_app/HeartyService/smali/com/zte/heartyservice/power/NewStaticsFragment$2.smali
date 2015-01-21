.class Lcom/zte/heartyservice/power/NewStaticsFragment$2;
.super Ljava/lang/Object;
.source "NewStaticsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$2;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$2;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$2;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->startActivity(Landroid/content/Intent;)V

    .line 407
    return-void
.end method
