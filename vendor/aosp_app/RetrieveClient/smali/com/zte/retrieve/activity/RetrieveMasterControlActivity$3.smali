.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$3;
.super Ljava/lang/Object;
.source "RetrieveMasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$3;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$3;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$0(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->settingInfoClick()V

    .line 234
    return-void
.end method
