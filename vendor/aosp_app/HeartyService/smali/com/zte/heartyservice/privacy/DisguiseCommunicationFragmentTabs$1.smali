.class Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;
.super Ljava/lang/Object;
.source "DisguiseCommunicationFragmentTabs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->showAddDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 146
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 147
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->showManualDialog()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-static {v0, p2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->selectPhonesFromContact(Landroid/app/Activity;I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-static {v0, p2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->selectPhonesFromContact(Landroid/app/Activity;I)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-static {v0, p2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->selectPhonesFromContact(Landroid/app/Activity;I)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
