.class Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;
.super Ljava/lang/Object;
.source "RetrieveInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->showUpdatePromptDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;->this$0:Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;->this$0:Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->access$0(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;)Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->updateNow()V

    .line 237
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->dismiss()V

    .line 238
    return-void
.end method
