.class Lcom/hf/utils/UpdateUtils$1;
.super Ljava/lang/Object;
.source "UpdateUtils.java"

# interfaces
.implements Lcom/umeng/update/UmengUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/UpdateUtils;->onForceUpdate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/utils/UpdateUtils$1;->val$context:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateReturned(ILcom/umeng/update/UpdateResponse;)V
    .locals 3
    .parameter "updateValues"
    .parameter "updateInfo"

    .prologue
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 40
    :goto_0
    :pswitch_0
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/hf/utils/UpdateUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/update/UmengUpdateAgent;->showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/hf/utils/UpdateUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hf/utils/UpdateUtils$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 35
    :pswitch_3
    iget-object v0, p0, Lcom/hf/utils/UpdateUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hf/utils/UpdateUtils$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0800b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
