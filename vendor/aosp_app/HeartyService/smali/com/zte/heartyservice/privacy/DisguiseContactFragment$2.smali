.class Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;
.super Ljava/lang/Object;
.source "DisguiseContactFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseContactFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    const/4 v0, -0x1

    .line 137
    .local v0, position:I
    instance-of v1, p1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 138
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 142
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 153
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    sget-object v2, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->deleteSelect(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)V

    .line 157
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    sget-object v2, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->deleteSelect(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    sget-object v2, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->deleteSelect(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    sget-object v2, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->REMOVE:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->deleteSelect(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
