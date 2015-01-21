.class Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;
.super Ljava/lang/Object;
.source "DisguiseContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

.field final synthetic val$item:Lcom/zte/heartyservice/common/datatype/CommonItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseContactFragment;Lcom/zte/heartyservice/common/datatype/CommonItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;->val$item:Lcom/zte/heartyservice/common/datatype/CommonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;->val$item:Lcom/zte/heartyservice/common/datatype/CommonItem;

    iget-object v0, v1, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    .line 46
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->callNum(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method
