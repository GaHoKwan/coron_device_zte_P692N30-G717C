.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$3;
.super Ljava/lang/Object;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 273
    :sswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    invoke-virtual {v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeButtonClick()V

    goto :goto_0

    .line 276
    :sswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->backupCloudWebAddress()V

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x7f090046 -> :sswitch_1
        0x7f09004a -> :sswitch_0
    .end sparse-switch
.end method
