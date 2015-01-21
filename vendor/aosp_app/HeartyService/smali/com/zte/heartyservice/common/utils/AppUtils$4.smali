.class final Lcom/zte/heartyservice/common/utils/AppUtils$4;
.super Ljava/util/TimerTask;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/AppUtils;->showInputMethodAppLockUse(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/zte/heartyservice/common/utils/AppUtils$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 225
    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$4;->val$context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 228
    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$4;->val$view:Landroid/view/View;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 229
    return-void
.end method
