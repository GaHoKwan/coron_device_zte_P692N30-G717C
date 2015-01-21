.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 157
    .local v0, contactType:Lcom/zte/heartyservice/privacy/ContactType;
    packed-switch p3, :pswitch_data_0

    .line 179
    :goto_0
    sget-object v2, Lcom/zte/heartyservice/privacy/ContactType;->NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;

    if-eq v0, v2, :cond_1

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.startActivity.PRIVACY_CONTACTS_SELECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "select_from"

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 160
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #calls: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getMultiPhones()Z
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$000(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    .line 164
    const-string v2, "ContactsSmsCallLogActivity"

    const-string v3, "contacts_btn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :pswitch_1
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    .line 168
    goto :goto_0

    .line 170
    :pswitch_2
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    .line 171
    goto :goto_0

    .line 173
    :pswitch_3
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;

    .line 174
    goto :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #calls: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createNewContactDlg()V
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
