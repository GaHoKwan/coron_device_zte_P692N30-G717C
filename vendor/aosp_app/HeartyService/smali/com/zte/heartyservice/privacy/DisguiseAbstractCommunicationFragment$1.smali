.class Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "DisguiseAbstractCommunicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/zte/heartyservice/common/datatype/CommonItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
