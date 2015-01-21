.class Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;
.super Ljava/lang/Object;
.source "AbstractApkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 222
    const-string v0, "wangwei"

    const-string v1, "mProgressDialog onCancel......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->dismissUpdateListProgressDialog()V

    .line 224
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 225
    return-void
.end method
