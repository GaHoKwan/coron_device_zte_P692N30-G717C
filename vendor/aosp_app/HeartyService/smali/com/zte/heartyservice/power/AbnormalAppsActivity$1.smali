.class Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;
.super Landroid/database/DataSetObserver;
.source "AbnormalAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/AbnormalAppsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const v2, 0x7f0e0412

    .line 106
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    #getter for: Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->access$000(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    #getter for: Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;
    invoke-static {v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->access$100(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    #getter for: Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->access$000(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    #getter for: Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->access$000(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method
