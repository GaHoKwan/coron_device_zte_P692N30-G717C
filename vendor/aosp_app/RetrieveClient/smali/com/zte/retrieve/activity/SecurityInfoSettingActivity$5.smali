.class Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;
.super Ljava/lang/Object;
.source "SecurityInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->installAccountDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->access$0(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;)Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->displayBindingSuccess()V

    .line 298
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 299
    return-void
.end method
