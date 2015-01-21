.class Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;
.super Ljava/lang/Object;
.source "RetrieveLocalTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 146
    :sswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->instructBackupClick()V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->activeButtonClick()V

    goto :goto_0

    .line 152
    :sswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->remoteControlClick()V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x7f090044 -> :sswitch_0
        0x7f090062 -> :sswitch_1
        0x7f090063 -> :sswitch_2
    .end sparse-switch
.end method
