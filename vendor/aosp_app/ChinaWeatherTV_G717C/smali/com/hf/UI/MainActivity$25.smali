.class Lcom/hf/UI/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showAnniversaryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$mRootLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Landroid/widget/RelativeLayout;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$25;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$25;->val$mRootLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/hf/UI/MainActivity$25;->val$dialog:Landroid/app/Dialog;

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 1352
    invoke-static {}, Lcom/hf/utils/Util;->ExistSDCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1353
    invoke-static {}, Lcom/hf/share/ShareManager;->instance()Lcom/hf/share/ShareManager;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/UI/MainActivity$25;->this$0:Lcom/hf/UI/MainActivity;

    .line 1354
    iget-object v4, p0, Lcom/hf/UI/MainActivity$25;->val$mRootLayout:Landroid/widget/RelativeLayout;

    .line 1353
    invoke-virtual {v2, v3, v4}, Lcom/hf/share/ShareManager;->saveViewToSDCard(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/hf/UI/MainActivity$25;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v3, p0, Lcom/hf/UI/MainActivity$25;->this$0:Lcom/hf/UI/MainActivity;

    const v4, 0x7f08003d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    .line 1357
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1359
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/MainActivity$25;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1364
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 1361
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/MainActivity$25;->this$0:Lcom/hf/UI/MainActivity;

    .line 1362
    const v3, 0x7f08003c

    .line 1361
    invoke-static {v2, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1362
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
