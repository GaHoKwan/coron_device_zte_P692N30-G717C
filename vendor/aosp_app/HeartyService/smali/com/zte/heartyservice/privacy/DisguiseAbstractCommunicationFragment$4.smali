.class Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$4;
.super Ljava/lang/Object;
.source "DisguiseAbstractCommunicationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->showDeleteDialog()V
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
    .line 348
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$4;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$4;->this$0:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;

    sget-object v1, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->REMOVE:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->deleteSelect(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)V

    .line 353
    return-void
.end method
