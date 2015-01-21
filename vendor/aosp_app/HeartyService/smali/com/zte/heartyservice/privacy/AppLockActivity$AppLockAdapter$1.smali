.class Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;
.super Ljava/lang/Object;
.source "AppLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->locked:Z
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->access$200(Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;)Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$300(Lcom/zte/heartyservice/privacy/AppLockActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$400(Lcom/zte/heartyservice/privacy/AppLockActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removeLockedPackage(Ljava/lang/String;)Z

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #calls: Lcom/zte/heartyservice/privacy/AppLockActivity;->sort()V
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$500(Lcom/zte/heartyservice/privacy/AppLockActivity;)V

    .line 196
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$000(Lcom/zte/heartyservice/privacy/AppLockActivity;)Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->notifyDataSetChanged()V

    .line 197
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$600(Lcom/zte/heartyservice/privacy/AppLockActivity;)Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->notifyDataSetChanged()V

    .line 198
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->addLockedPackage(Ljava/lang/String;)Z

    move-result v0

    .line 188
    .local v0, success:Z
    if-ne v2, v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$400(Lcom/zte/heartyservice/privacy/AppLockActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AppLockActivity;->access$300(Lcom/zte/heartyservice/privacy/AppLockActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;->this$1:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    const v2, 0x7f0a0414

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
