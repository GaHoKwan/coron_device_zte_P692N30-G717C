.class Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;
.super Ljava/lang/Object;
.source "AdDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/AdDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 78
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$300(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v3}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$100(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPDO:Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;
    invoke-static {v4}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$200(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, se:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v3}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$100(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->uninstallPkg(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$400(Lcom/zte/heartyservice/interceptad/AdDetailActivity;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->finish()V

    goto :goto_0

    .line 86
    .end local v1           #se:Ljava/lang/SecurityException;
    :pswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v3}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$100(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isBlocked(Landroid/content/Context;)Z

    move-result v0

    .line 87
    .local v0, blocked:Z
    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v3}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->access$100(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->setBlock(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 88
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->updateButton2()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0e001a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
