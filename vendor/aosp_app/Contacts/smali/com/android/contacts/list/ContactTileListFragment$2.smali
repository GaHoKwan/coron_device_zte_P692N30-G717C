.class Lcom/android/contacts/list/ContactTileListFragment$2;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApproximateTileWidth()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter;->getColumnCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onCallNumberDirectly(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "contactUri"
    .parameter "targetRect"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V

    .line 277
    :cond_0
    return-void
.end method