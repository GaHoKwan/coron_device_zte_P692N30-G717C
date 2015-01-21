.class Lcom/zte/heartyservice/privacy/AppLockActivity$1;
.super Landroid/database/DataSetObserver;
.source "AppLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AppLockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AppLockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 82
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$000(Lcom/zte/heartyservice/privacy/AppLockActivity;)Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->mNoLockedApp:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$100(Lcom/zte/heartyservice/privacy/AppLockActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->mNoLockedApp:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$100(Lcom/zte/heartyservice/privacy/AppLockActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
