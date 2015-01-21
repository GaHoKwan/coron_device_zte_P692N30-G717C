.class Lcom/zte/retrieve/activity/RetrieveEntryActivity$11;
.super Ljava/lang/Object;
.source "RetrieveEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveEntryActivity;->showAccountStoppedDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$11;->this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$11;->this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->access$1(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->showLocalOpenDialog()V

    .line 431
    return-void
.end method
