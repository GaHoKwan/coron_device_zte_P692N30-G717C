.class public Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;
.super Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;
.source "CallLogMultipleChoiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogMultipleChoiceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 91
    const-string v0, "CallLogMultipleChoiceActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method


# virtual methods
.method protected getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity$1;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleChoiceActivity;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 52
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v3}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->getSelections()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, ids:Ljava/lang/String;
    const-string v3, "calllogids"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 63
    .end local v0           #ids:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v3}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->selectAllItems()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v3}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->unSelectAllItems()V

    .line 67
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x7f0701e1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->onStopForSubClass()V

    .line 44
    return-void
.end method
