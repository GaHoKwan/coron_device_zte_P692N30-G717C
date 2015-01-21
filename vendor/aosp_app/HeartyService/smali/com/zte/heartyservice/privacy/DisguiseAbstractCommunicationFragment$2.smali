.class Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$2;
.super Ljava/lang/Object;
.source "DisguiseAbstractCommunicationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 99
    return-void
.end method
