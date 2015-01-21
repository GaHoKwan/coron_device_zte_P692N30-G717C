.class Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;
.super Ljava/lang/Object;
.source "SecurityInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->access$0(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;)Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->jumpToRetrieveMasterView()V

    .line 331
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 332
    return-void
.end method
