.class Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$1;
.super Ljava/lang/Object;
.source "DisguiseCalllogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;

.field final synthetic val$item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$1;->val$item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$1;->val$item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;

    iget-object v0, v1, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;->summary:Ljava/lang/String;

    .line 44
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->callNum(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method
