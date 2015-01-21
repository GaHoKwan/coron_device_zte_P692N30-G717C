.class Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$2;
.super Ljava/lang/Object;
.source "RetrieveInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->installAccountDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$2;->this$0:Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$2;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$2;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 218
    return-void
.end method
