.class Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;
.super Ljava/lang/Object;
.source "CallLogMultipleChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;->getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v2}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->getSelections()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, ids:Ljava/lang/String;
    const-string v2, "calllogids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 84
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method
