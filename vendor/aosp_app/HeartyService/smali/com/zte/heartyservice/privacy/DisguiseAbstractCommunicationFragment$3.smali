.class Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;
.super Ljava/lang/Object;
.source "DisguiseAbstractCommunicationFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

.field final synthetic val$item:Lcom/zte/heartyservice/common/datatype/CommonItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;Lcom/zte/heartyservice/common/datatype/CommonItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;->val$item:Lcom/zte/heartyservice/common/datatype/CommonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;->val$item:Lcom/zte/heartyservice/common/datatype/CommonItem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->checkedChanged(Landroid/widget/CompoundButton;ZLcom/zte/heartyservice/common/datatype/CommonItem;)V

    .line 140
    return-void
.end method
